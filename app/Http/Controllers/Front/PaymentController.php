<?php

namespace App\Http\Controllers\Front;

use App\Freelancer;
use App\Order;
use App\Package;
use App\payment\Helpers\ModelBindingHelper;
use App\payment\Lib\HesabeCrypt;
use App\payment\Misc\Constants;
use App\payment\Misc\PaymentHandler;
use App\payment\Models\HesabeCheckoutResponseModel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/**
 * This Class handles the form request to the checkout controller
 * and receive the response and displays the encrypted and decrypted data.
 *
 * @author Hesabe
 */
class PaymentController
{
    public $paymentApiUrl;
    public $secretKey;
    public $merchantCode;
    public $ivKey;
    public $accessCode;
    public $hesabeCheckoutResponseModel;
    public $modelBindingHelper;
    public $hesabeCrypt;

    public function __construct()
    {
        $this->paymentApiUrl = Constants::PAYMENT_API_URL;
        // Get all three values from Merchant Panel, Profile section
        $this->secretKey = Constants::MERCHANT_SECRET_KEY;  // Use Secret key
        $this->merchantCode = Constants::MERCHANT_CODE;
        $this->ivKey = Constants::MERCHANT_IV;              // Use Iv Key
        $this->accessCode = Constants::ACCESS_CODE;         // Use Access Code
        $this->hesabeCheckoutResponseModel = new HesabeCheckoutResponseModel();
        $this->modelBindingHelper = new ModelBindingHelper();
        $this->hesabeCrypt = new HesabeCrypt();   // instance of Hesabe Crypt library
    }

    /**
     * This function handles the form request and get the response
     *
     * @return void
     */
    public function formSubmit(Request $request)
    {
        
        $package = Package::find($request->id);
        //creating the order
        $order = new Order();
        $order->order_track = substr(time(), 5, 4) . rand(1000, 9999);
        $order->package_id = $package->id;
        $order->freelancer_id = Auth::id();
        $order->amount = $package->price;
        $order->order_status = "pending";
        $order->payment_status = "notpaid";
        $order->save();
      
        // Initialize the Payment request encryption/decryption library using the Secret Key and IV Key from the configuration
        $paymentHandler = new PaymentHandler($this->paymentApiUrl, $this->merchantCode, $this->secretKey, $this->ivKey, $this->accessCode);
        // Getting the payment data into request object
        $requestData = $this->modelBindingHelper->getCheckoutRequestData(array('amount' => $order->amount, 'order_id' => $order->id, 'order_track' => $order->order_track, 'freelancer_id' => $order->freelancer_id));
        // POST the requested object to the checkout API and receive back the response

        $response = $paymentHandler->checkoutRequest($requestData);

        //Get encrypted and decrypted checkout data response
        [$encryptedResponse, $hesabeCheckoutResponseModel] = $this->getCheckoutResponse($response);

        // check the response and validate it
        if ($hesabeCheckoutResponseModel->status == false && $hesabeCheckoutResponseModel->code != Constants::SUCCESS_CODE) {
            echo "<p style='word-break: break-all;'> <b>Encrypted Data</b>:- " . $encryptedResponse . "</p>";
            echo "<p><b>Decrypted Data</b>:- </p>";
            echo "<pre>";
            print_r($hesabeCheckoutResponseModel);
            exit;
        }

        // Redirect the user to the payment page using the token from the checkout API response
        return $this->redirectToPayment($hesabeCheckoutResponseModel->response['data']);

        /*
         * To use this method, make sure your SuccessUrl or FailureUrl
         * points to this method in which you'll receive a "data" param
         * as a GET request. Then you can process it accordingly.
         */
        if (isset($_GET['id']) && isset($_GET['data'])) {
            $responseData = $_GET['data'];

            //Decrypt the response received
            $decryptedResponse = $this->getPaymentResponse($responseData);

            echo "<p style='word-break: break-all;'> Encrypted Data:- " . $responseData . "</p>";
            echo "<p><b>Decrypted Data</b>:- </p>";
            echo "<pre>";
            print_r($decryptedResponse);
            exit;
        }
    }

    /**
     * Redirect to payment gateway to complete the process
     *
     * @param string $token Encrypted data
     *
     * @return null [<description>]
     */
    public function redirectToPayment($token)
    {
        header("Location: $this->paymentApiUrl/payment?data=$token");
        exit;
    }

    /**
     * Process the response after the transaction is complete
     *
     * @return array De-serialize the decrypted response
     *
     */
    public function getPaymentResponse($responseData)
    {
        //Decrypt the response received in the data query string
        $decryptResponse = $this->hesabeCrypt::decrypt($responseData, $this->secretKey, $this->ivKey);

        //De-serialize the decrypted response
        $decryptResponseData = json_decode($decryptResponse, true);
        //Binding the decrypted response data to the entity model
        $decryptedResponse = $this->modelBindingHelper->getPaymentResponseData($decryptResponseData);

        //return decrypted data
        return $decryptedResponse;
    }

    /**
     * Process the response after the form data has been requested.
     *
     * @return array De-serialize the decrypted response
     *
     */
    public function getCheckoutResponse($response)
    {

        // Decrypt the response from the checkout API
        $decryptResponse = $this->hesabeCrypt::decrypt($response, $this->secretKey, $this->ivKey);

        if (!$decryptResponse) {
            $decryptResponse = $response;
        }

        // De-serialize the JSON string into an object
        $decryptResponseData = json_decode($decryptResponse, true);

        //Binding the decrypted response data to the entity model
        $decryptedResponse = $this->modelBindingHelper->getCheckoutResponseData($decryptResponseData);

        //return encrypted and decrypted data
        return [$response, $decryptedResponse];
    }

    public function success(Request $request)
    {     
        
        $responseData = $request->data;
        $decryptedResponse = $this->getPaymentResponse($responseData);
   
        $order = order::find($decryptedResponse->response['variable1']);
        if ($decryptedResponse->response['resultCode'] == 'CAPTURED' && $order->status==null) {
            $order->status = $decryptedResponse->status;
            $order->payment_id = $decryptedResponse->response['paymentId'];
            $order->result = $decryptedResponse->response['resultCode'];
            $order->payment_status = 'paid';
            $order->order_status = 'success';
            $order->error = $decryptedResponse->message;
            $order->save();
            $package = Package::find($order->package_id);
            $freelancer = Freelancer::find($decryptedResponse->response['variable3']);
            $freelancer->package_id = $order->package_id;
            $freelancer->expiration_date = Carbon::now()->addDays($package->duration)->toDateString();
            $freelancer->save();
        }
        return view('front.transaction', compact('order'));
    }

    public function fail(Request $request)
    {
        $responseData = $request->data;
        $decryptedResponse = $this->getPaymentResponse($responseData);
            $order = order::find($decryptedResponse->response['variable1']);
        if ($decryptedResponse->response['resultCode'] == 'NOT CAPTURED' && $order->status==null) {
            $order->status = $decryptedResponse->status;
            $order->payment_id = $decryptedResponse->response['paymentId'];
            $order->result = $decryptedResponse->response['resultCode'];
            $order->error = $decryptedResponse->message;
            $order->order_status = 'failed';
            $order->save();
        }
            return view('front.transaction', compact('order'));
    }
}
