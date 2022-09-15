<?php

namespace App\Http\Controllers;

use App\AnnualReport;
use App\Category;
use App\CorporateOverview;
use App\Country;
use App\Disclosure;
use App\EducationFinance;
use App\job;
use App\Message;
use App\News;
use App\NewsEvent;
use App\NotifyEmail;
use App\Order;
use App\Package;

use App\Aboutus;
use App\Careers;
use App\Development;
use App\Director;
use App\FeaturedProject;
use App\GlobalPresence;
use App\HeaderImage;
use App\HomeAbout;
use App\Idea;
use App\Media;
use App\MenuTitle;
use App\NewsEvents;
use App\NotificationEmails;
use App\PhotoGallery;
use App\Practice;
use App\Privacy;
use App\Project;
use App\QuarterlyReport;
use App\Resume;
use App\Service;
use App\Services\CaptchaSecurityImages;
use App\Singlepage;
use App\Specialist;
use App\Subject;
use App\Submit_resume;
use App\Subsidiary;
use App\Term;
use App\Transaction;
use App\VideoGallery;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Auth;
use Response;
use App\Settings;
use App\SinglePages;
use App\OurServices;
use App\Clients;
use App\Subjects;
use App\Contactus;
use App\Slideshow;
use Illuminate\Support\Facades\Mail;
//email
use App\Mail\SendGrid;

use DB;
use Common;


class WebController extends Controller
{
    public $image_big_w = 0;
    public $image_big_h = 0;
    public $image_thumb_w = 128;
    public $image_thumb_h = 128;

    public function home()
    {
        $title = "Home";
        $slideshows = Slideshow::where('is_active', 1)->get();
        $services = Service::where('is_active', 1)->get();
        $NewsEvents = News::where('is_active', 1)->get();
        $subsidiaries = Subsidiary::where('is_active', 1)->get();
        $our_business = Singlepage::where(['is_active' => 1, 'name' => 'services'])->first();
        $news_events = Singlepage::where(['is_active' => 1, 'name' => 'news_events'])->first();
        $subsidiaries_associates = Singlepage::where(['is_active' => 1, 'name' => 'subsidiaries_associates'])->first();
        $corporate_overview = CorporateOverview::where('is_active', 1)->first();
        $settings = Settings::where("keyname", "setting")->first();
        return view('website.pages.home', compact('services', 'NewsEvents', 'subsidiaries', 'our_business', 'news_events', 'subsidiaries_associates', 'corporate_overview', 'title', 'settings', 'slideshows'));
    }

    public function categorySinglePage($id, $title)
    {
        $category = Category::where('id', $id)->with('singlePage', 'parent')->first();
        $children = collect();
        $children->push($category);
        if (count($category->children)) {
            $children = $category->children;
        } elseif ($category->parent_id) {
            $children = Category::find($category->parent_id)->children;
        }
        $title = "Home";
        $settings = Settings::where("keyname", "setting")->first();
        return view('website.pages.singlePage', compact('children', 'title', 'settings', 'category'));
    }

    public function categorySinglePageWithForm($id, $title)
    {
        $category = Category::where('id', $id)->with('singlePage', 'parent')->first();
        $parent = $category->parent_id ?? $category->id;
        $children = Category::find($parent)->children;
        $title = "Home";
        $settings = Settings::where("keyname", "setting")->first();
        return view('website.pages.singlePageWithForm', compact('children', 'title', 'settings', 'category'));
    }

    public function NewsAndEventSinglePage($id, $title)
    {
        $news = News::find($id);
        $category = $news->category;
        $children = Category::find($news->category->parent_id)->childrenRecursive;
        $title = "Home";
        $settings = Settings::where("keyname", "setting")->first();
        return view('website.pages.newsAndEvent', compact('children', 'category', 'news', 'title', 'settings'));
    }

    public function NewsAndEvent()
    {
        $news = News::with('category')->where('is_active', 1)->get();
        $category = $news[0]->category;
        $title = "Home";
        $settings = Settings::where("keyname", "setting")->first();
        return view('website.pages.News', compact('news', 'title', 'settings', 'category'));
    }

   public function annualReport()
    {
        $year = \request()->calender??'';
        $annuals = AnnualReport::where('is_active', 1)
            ->year($year)->orderBy('created_at', 'desc')->get();
        $category  = Category::where('slug', 'Annual-reports')->first();
        $children = Category::find($category->parent_id)->childrenRecursive;
        $title = "Home";
        $settings = Settings::where("keyname", "setting")->first();
        return view('website.pages.annual', compact('children','category', 'annuals', 'title', 'settings'));
    }


    public function quarterlyReport()
    {
        $year = \request()->calender??'';
        $quarterlys = QuarterlyReport::where('is_active', 1)
            ->year($year)->orderBy('created_at', 'desc')->get();
        $category  = Category::where('slug', 'Quarterly-reports')->first();
        $children = Category::find($category->parent_id)->childrenRecursive;
        $title = "Home";
        $settings = Settings::where("keyname", "setting")->first();
        return view('website.pages.quarterly', compact('children','category', 'quarterlys', 'title', 'settings'));
    }

    public function subscribe($code)
    {
        $title = "Subscribe";
        $settings = Settings::where("keyname", "setting")->first();
        $countries = Country::where('is_active', 1)->get();
        return view('website.pages.subscribe', compact('title', 'settings', 'countries', 'code'));
    }

    public function getCountryCities(Request $request)
    {

        if (!empty($request->country_id)) {
            $countryId = $request->country_id;
            $country = Country::find($countryId);
            if ($country) {
                $cities = $country->cities;
                $response = "<option value='' >Select City</option>";
                foreach ($cities as $city) {
                    $response .= "<option value='" . $city->id . "'>" . $city->title_en . "</option>";
                }
                return response()->json([$response]);
            }
        }
    }

    public function pay(Request $request)
    {
        //retrieving package
        $package = Package::where('code', $request->code)->first();

        //creating the order
        $order = new Order();
        $order->order_track = substr(time(), 5, 4) . rand(1000, 9999);
        $order->package_id = $package->id;
        $order->fname = $request->firstname;
        $order->lname = $request->lastname;
        $order->email = $request->email;
        $order->country_code = $request->countrycode;
        $order->phone = $request->phone;
        $order->mobile = $request->mobile;
        $order->country_id = $request->country;
        $order->city_id = $request->city;
        $order->block = $request->block;
        $order->street = $request->street;
        $order->avenue = $request->avenue;
        $order->house = $request->house;
        $order->flat = $request->flat;
        $order->amount = $package->price;
        $order->order_status = "pending";
        $order->payment_status = "notpaid";
        $order->save();

        $response = \App\Http\Controllers\Common::knetPaymentProcessing($order->id, $order->order_track, $package->price);
        if ($response['status'] == 1) {
            $payUrl = $response['payurl'];
            return redirect($payUrl);
        } else {
            dd($response['message']);
        }
    }

    public function knetResponse(Request $request)
    {
        $errorText = $request->ErrorText;    //Error Text/message
        $errorNo = $request->Error;          //Error Number
        $paymentId = $request->paymentid;    //Payment Id
        $result = $request->result;         //Transaction Result
        $trackId = $request->trackid;        //Merchant Track ID
        $postDate = $request->postdate;      //Postdate
        $tranId = $request->tranid;          //Transaction ID
        $auth = $request->auth;              //Auth Code
        $avr = $request->avr;                //TRANSACTION avr
        $ref = $request->ref;                //Reference Number also called Seq Number
        $amount = $request->amt;             //Transaction Amount
        $udf1 = $request->udf1;              //UDF1
        $udf2 = $request->udf2;              //UDF2
        $udf3 = $request->udf3;              //UDF3
        $udf4 = $request->udf4;              //UDF4
        $udf5 = $request->udf5;              //UDF5

        // getting the terminal resource key
        $gateway = env('GATEWAY');
        if ($gateway == "test") {
            $TERM_RESOURCE_KEY = config('services.knet_test.TERM_RESOURCE_KEY');
        } else {
            $TERM_RESOURCE_KEY = config('services.knet_live.TERM_RESOURCE_KEY');
        }

        if ($errorText == null && $errorNo == null) {
            $tranData = $request->trandata;
            if ($tranData != null) {
                $decrytedData = \App\Http\Controllers\Common::decrypt($tranData, $TERM_RESOURCE_KEY);
                $decrytedData = \App\Http\Controllers\Common::splitData($decrytedData);
                return redirect()->route('knetStatus', $decrytedData);
            }
        } else {
            return redirect()->route('knetStatus', [
                'ErrorText' => $errorText,
                'trackid' => $trackId,
                'amt' => $amount,
                'paymentid' => $paymentId
            ]);
        }
    }

    public function knetStatus(Request $request)
    {
        $result = ($request->result) ?: '';
        $paymentId = ($request->paymentid) ?: '';
        $trackId = ($request->trackid) ?: '';
        $auth = ($request->auth) ?: '';
        $avr = ($request->avr) ?: '';
        $ref = ($request->ref) ?: '';
        $tranId = ($request->tranid) ?: '';
        $postDate = ($request->postdate) ?: '';
        $amount = ($request->amt) ?: '';
        $error = ($request->ErrorText) ?: '';

        $order = Order::where('order_track', $trackId)->first();
        $transaction = Transaction::where('trackid', $trackId)->first();

        if ($result == 'CAPTURED') {
            //updating order
            $order->order_status = 'completed';
            $order->payment_status = 'paid';
            $order->save();

            //updating transaction
            $transaction->paymentid = $paymentId;
            $transaction->presult = $result;
            $transaction->tranid = $tranId;
            $transaction->auth = $auth;
            $transaction->ref = $ref;
            $transaction->postdate = $postDate;
            $transaction->avr = $avr;
            $transaction->payment_status = "paid";
            $transaction->save();
        }

        $title = "Transaction Response";
        $menuTitle = "Transaction Response";
        $settings = Settings::where("keyname", "setting")->first();

        return view('website.pages.transactionResult', compact('title', 'menuTitle', 'settings', 'result', 'trackId', 'paymentId', 'amount', 'error'));
    }

    public function about()
    {
        $title = "About Us";
        $about = Singlepage::where('slug', 'about-us')->first();
        $settings = Settings::where("keyname", "setting")->first();

        return view('website.pages.about', compact('title', 'about', 'settings'));
    }

    public function trackorder(Request $request)
    {
        if (isset($request->trackid)) {
            $order = Order::where('order_track', $request->trackid)->first();
            if ($order) {
                $transaction = Transaction::where('trackid', $request->trackid)->first();
                $package = $order->package;
            } else {
                $order = null;
                $transaction = null;
                $package = null;
            }
        } else {
            $order = null;
            $transaction = null;
            $package = null;
        }

        $title = "Order Track";
        $settings = Settings::where("keyname", "setting")->first();

        return view('website.pages.trackorder', compact('title', 'settings', 'order', 'transaction', 'package'));
    }

    public function contactUs()
    {
        $title = "Contact Us";
        $settings = Settings::where("keyname", "setting")->first();
        $subjects = Subject::where('is_active', 1)->get();
        return view('website.pages.contactUs', compact('title', 'settings', 'subjects'));
    }

    public function contactUsStore(Request $request)
    {
        $request->validate([
            'username'=>'required',
            'email'=>'required|email',
            
            'message'=>'required',
            //'captcha' => 'required|captcha',
        ],
        ['captcha.captcha'=>'Invalid captcha code.']
        );
        
         $logo = Settings::where("keyname", "setting")->first()->email_logo;
        $resource = Message::create([
            'name'=>$request->username,
            'email'=>$request->email,
            'subject'=>$request->subject,
            'message'=>$request->message,
        ]);
         $settings = Settings::where("keyname", "setting")->first();
        
        if (!empty($request->input('email'))) {
            $data = [
                'dear' => trans('webMessage.dear') . ' ' . $request->input('username'),
                'footer' => trans('webMessage.email_footer'),
                'message' => trans('webMessage.contactus_body'),
                'subject' => self::getSubjectName($request->input('subject')),
                'email_from' => $settings->from_email,
                'email_from_name' => $settings->from_name,
                'logo'=>url('uploads/settings/'.$logo)
            ];
            Mail::to($request->input('email'))->send(new SendGrid($data));
        }
//  dd('ss');
        $emails = NotifyEmail::where('is_active', 1)->get();
        if (!empty($emails)) {
            $appendMessage = "";
            $appendMessage .= "<br><b>" . trans('webMessage.name') . " : </b>" . $request->input('username');
            $appendMessage .= "<br><b>" . trans('webMessage.email') . " : </b>" . $request->input('email');
            $appendMessage .= "<br><b>" . trans('webMessage.subject') . " : </b>" . self::getSubjectName($request->input('subject'));
            $appendMessage .= "<br><b>" . trans('webMessage.message') . " : </b>" . $request->input('message');
            $dataadmin = [
                'dear' => trans('webMessage.dearadmin'),
                'footer' => trans('webMessage.email_footer'),
                'message' => trans('webMessage.contactus_admin_body') . "<br><br>" . $appendMessage,
                'subject' => self::getSubjectName($request->input('subject')),
                'email_from' => $settings->from_email,
                'email_from_name' => $settings->from_name,
                'logo'=>url('uploads/settings/'.$logo)
            ];
            foreach ($emails as $email) {
                Mail::to($email)->send(new SendGrid($dataadmin));
            }
        }
        return back()->with(['msg'=>'Your Message SuccessFully Sent']);
    }

 public function contactUsStorePage(Request $request)
    {
        $request->validate([
            'username'=>'required',
            'email'=>'required|email',
            
            'message'=>'required',
            'captcha' => 'required|captcha',
        ],
        ['captcha.captcha'=>'Invalid captcha code.']
        );
        $resource = Message::create([
            'name'=>$request->username,
            'email'=>$request->email,
            'subject'=>$request->subject,
            'message'=>$request->message,
        ]);
         $settings = Settings::where("keyname", "setting")->first();
        
//         if (!empty($request->input('email'))) {
//             $data = [
//                 'dear' => trans('webMessage.dear') . ' ' . $request->input('username'),
//                 'footer' => trans('webMessage.email_footer'),
//                 'message' => trans('webMessage.contactus_body'),
//                 'subject' => self::getSubjectName($request->input('subject')),
//                 'email_from' => $settings->from_email,
//                 'email_from_name' => $settings->from_name
//             ];
//             Mail::to($request->input('email'))->send(new SendGrid($data));
//         }
//  dd('ss');
        $emails = NotifyEmail::where('is_active', 1)->get();
        if (!empty($emails)) {
            $appendMessage = "";
            $appendMessage .= "<br><b>" . trans('webMessage.name') . " : </b>" . $request->input('username');
            $appendMessage .= "<br><b>" . trans('webMessage.email') . " : </b>" . $request->input('email');
            $appendMessage .= "<br><b>" . trans('webMessage.subject') . " : </b>" . self::getSubjectName($request->input('subject'));
            $appendMessage .= "<br><b>" . trans('webMessage.message') . " : </b>" . $request->input('message');
            $dataadmin = [
                'dear' => trans('webMessage.dearadmin'),
                'footer' => trans('webMessage.email_footer'),
                'message' => trans('webMessage.contactus_admin_body') . "<br><br>" . $appendMessage,
                'subject' => self::getSubjectName($request->input('subject')),
                'email_from' => $settings->from_email,
                'email_from_name' => $settings->from_name
            ];
            foreach ($emails as $email) {
                Mail::to($email)->send(new SendGrid($dataadmin));
            }
            
        }

        
        
        return back()->with(['msg'=>'Your Message SuccessFully Sent']);

    }
    public function educationStore(Request $request)
    {
        $request->validate([
            'name'=>'required',
            'parent_school'=>'required',
            'mobile'=>'required',
            'email'=>'required|email',
            'school'=>'required',
            'installments_number'=>'required',
            'amount'=>'required',
            'image'=>'required',
            'captcha' => 'required|captcha',
        ],
            ['captcha.captcha'=>'Invalid captcha code.']);

        $cover_image = \App\Http\Controllers\Admin\Common::uploadImage($request, 'image', 'educations', $this->image_big_w, $this->image_big_h, $this->image_thumb_w, $this->image_thumb_h);

        $resource = EducationFinance::create([
            'name'=>$request->name,
            'parent_school_id_number'=>$request->parent_school,
            'mobile'=>$request->mobile,
            'email'=>$request->email,
            'school'=>$request->school,
            'installment_number'=>$request->installments_number,
            'amount'=>$request->amount,
            'image'=>$cover_image,
        ]);
        return back()->with(['msg'=>'Your Request SuccessFully Sent']);
    }

    public function contactSubmit(Request $request)
    {
        $settings = Settings::where("keyname", "setting")->first();

        $validator = Validator::make($request->all(),
            [
                'name' => 'required',
                'email' => 'required|email',
                'subject' => 'required',
                'message' => 'required|string|max:900',
                //'captcha' => 'required|captcha'
            ],
            [
                'name.required' => trans('webMessage.name_required'),
                'email.required' => trans('webMessage.email_required'),
                'subject.required' => trans('webMessage.subject_required'),
                'message.required' => trans('webMessage.message_required'),
                //'captcha.required' => trans('webMessage.captcha_required')
            ]
        );
        if ($validator->fails()) {
            return back()->withErrors($validator)->withInput();
        }
        
        $logo = Settings::where("keyname", "setting")->first()->email_logo;
        dd($logo);
        $message = new Message();
        $message->name = $request->input('name');
        $message->email = $request->input('email');
        $message->subject = $request->input('subject');
        $message->message = $request->input('message');
        $message->cip = $_SERVER['REMOTE_ADDR'];
        $message->save();

        //send email notification
        if (!empty($request->input('email'))) {
            $data = [
                'dear' => trans('webMessage.dear') . ' ' . $request->input('name'),
                'footer' => trans('webMessage.email_footer'),
                'message' => trans('webMessage.contactus_body'),
                'subject' => self::getSubjectName($request->input('subject')),
                'email_from' => $settings->from_email,
                'email_from_name' => $settings->from_name,
                'logo'=>'/uploads/settings/'.$logo
            ];
            Mail::to($request->input('email'))->send(new SendGrid($data));
        }

        $emails = NotifyEmail::where('is_active', 1)->get();
        if (!empty($emails)) {
            $appendMessage = "";
            $appendMessage .= "<br><b>" . trans('webMessage.name') . " : </b>" . $request->input('name');
            $appendMessage .= "<br><b>" . trans('webMessage.email') . " : </b>" . $request->input('email');
            $appendMessage .= "<br><b>" . trans('webMessage.subject') . " : </b>" . self::getSubjectName($request->input('subject'));
            $appendMessage .= "<br><b>" . trans('webMessage.message') . " : </b>" . $request->input('message');
            $dataadmin = [
                'dear' => trans('webMessage.dearadmin'),
                'footer' => trans('webMessage.email_footer'),
                'message' => trans('webMessage.contactus_admin_body') . "<br><br>" . $appendMessage,
                'subject' => self::getSubjectName($request->input('subject')),
                'email_from' => $settings->from_email,
                'email_from_name' => $settings->from_name,
                'logo'=>'/uploads/settings/'.$logo
            ];
            foreach ($emails as $email) {
                Mail::to($email)->send(new SendGrid($dataadmin));
            }
            Mail::to($settings->email)->send(new SendGrid($dataadmin));
        }

        return back()->with('session_msg', trans('webMessage.contact_message_sent'));
    }

    public function refreshCaptcha()
    {
        return response()->json(['captcha' => captcha_img('flat')]);
    }

    // get settings data
    public static function settings()
    {
        return Settings::where("keyname", "setting")->first();
    }

    // get single page data
    public static function getSinglePage($keyname)
    {
        return Singlepage::where("is_active", "1")->where('slug', $keyname)->first();
    }

    // get subject of the message (contact us page)
    public static function getSubjectName($subjectid)
    {
        $recDetails = Subject::where('id', $subjectid)->first();
        return !empty($recDetails['title_en']) ? $recDetails['title_en'] : 'Contact';
    }


    public function availableVacancies()
    {
        $category = Category::where('slug', 'Available-Vacancies')->with('parent')->first();
        $parent = $category->parent_id ?? $category->id;
        $children = Category::find($parent)->children;
        $resources = job::orderBy('created_at', 'desc')->get();
        return view('website.pages.vacancies', compact('children','category', 'resources'));
    }


    public function availableVacanciesSingle($id)
    {
        $category = Category::where('slug', 'Available-Vacancies')->with('parent')->first();
        $parent = $category->parent_id ?? $category->id;
        $children = Category::find($parent)->children;
         $resource = job::find($id);
        return view('website.pages.vacanciesSingle', compact('children','category', 'resource'));
    }


    public function availableVacanciesPost(Request $request, $id)
    {
        $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'mobile' => 'required',
            'title' => 'required',
            'captcha' => 'required|captcha',
        ],
            ['captcha.captcha'=>'Invalid captcha code.']);
        $image = \App\Http\Controllers\Admin\Common::uploadImage($request, 'image', 'resume', 0, 0, 0, 0);
        $resource = Submit_resume::create([
            'job_id'=>$id,
            'title'=>$request->title,
            'first_name'=>$request->first_name,
            'last_name'=>$request->last_name,
            'email'=>$request->email,
            'telephone'=>$request->phone,
            'mobile'=>$request->mobile,
            'resume'=>$image,
            'nationality'=>$request->Nationality,
        ]);
        $logo = Settings::where("keyname", "setting")->first()->email_logo;
      $settings = Settings::where("keyname", "setting")->first();
        
        if (!empty($request->input('email'))) {
            $data = [
                'dear' => trans('webMessage.dear') . ' ' . $request->input('first_name'),
                'footer' => trans('webMessage.email_footer'),
                'message' => trans('webMessage.resume_body'),
                'subject' => $request->input('title'),
                'email_from' => $settings->from_email,
                'email_from_name' => $settings->from_name,
                'logo'=>url('uploads/settings/'.$logo)
            ];
            Mail::to($request->input('email'))->send(new SendGrid($data));
        }

        $emails = NotifyEmail::where('is_active', 1)->get();
        if (!empty($emails)) {
            $appendMessage = "";
            $appendMessage .= "<br><b>" . trans('webMessage.name') . " : </b>" . $request->input('first_name') . " ". $request->input('last_name');
            $appendMessage .= "<br><b>" . trans('webMessage.email') . " : </b>" . $request->input('email');
            $appendMessage .= "<br><b>" . trans('webMessage.subject') . " : </b>" . $request->input('title');
            $appendMessage .= "<br><b>" . trans('webMessage.message') . " : </b> You can find request from : ". url('/resume/download/').$resource->id  ;
            $dataadmin = [
                'dear' => trans('webMessage.dearadmin'),
                'footer' => trans('webMessage.email_footer'),
                'message' => trans('webMessage.contactus_admin_body') . "<br><br>" . $appendMessage,
                'subject' => self::getSubjectName($request->input('subject')),
                'email_from' => $settings->from_email,
                'email_from_name' => $settings->from_name,
                'logo'=>'/uploads/settings/'.$logo
            ];
            foreach ($emails as $email) {
                Mail::to($email)->send(new SendGrid($dataadmin));
            }
            Mail::to($settings->email)->send(new SendGrid($dataadmin));
        }
        
        
        return back()->with(['msg'=>'Your Request SuccessFully Sent']);
    }

    public function resumeDownload($id)
    {
        $name = Submit_resume::find($id)->resume;
        $file= public_path(). "/uploads/resume/".$name;

        $headers = array(
            'Content-Type: application/pdf',
        );

        return Response::download($file, $name, $headers);
    }
    
        public function educationDownload($id)
    {
        $name = EducationFinance::find($id)->image;
        $file= public_path(). "/uploads/educations/".$name;

        $headers = array(
            'Content-Type: application/pdf',
        );
        return Response::download($file, $name, $headers);
    }

    public function disclosures()
    {
        $disclosures = Disclosure::where('is_active', 1)->orderBy('created_at', 'desc')->get();
        $category  = Category::where('slug', 'Disclosures')->first();
        $children = Category::find($category->parent_id)->childrenRecursive;
        $title = "Home";
        $settings = Settings::where("keyname", "setting")->first();
        return view('website.pages.disclosure', compact('children', 'category', 'disclosures', 'title', 'settings'));
    }

    public function disclosuresSingle($id)
    {
        $disclosure = Disclosure::where(['is_active'=> 1, 'id'=>$id])->first();
        $category  = Category::where('slug', 'Disclosures')->first();
        $children = Category::find($category->parent_id)->childrenRecursive;
        $title = "Home";
        $settings = Settings::where("keyname", "setting")->first();
        return view('website.pages.disclosureSingle', compact('category', 'disclosure', 'title', 'settings', 'children'));
    }

}
