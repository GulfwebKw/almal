<?php

namespace App\payment\Models;

/**
 * This class contains all parameters that needs to be defined
 * before encrypting and passing to the checkout api
 *
 * @author Hesabe
 */
class HesabeCheckoutRequestModel
{
    public $amount;
    public $variable1;
    public $variable2;
    public $variable3;
    public $currency;
    public $paymentType;
    public $orderReferenceNumber;
    public $version;
    public $merchantCode;
    public $responseUrl;
    public $failureUrl;
}
