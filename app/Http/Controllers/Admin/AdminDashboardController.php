<?php

namespace App\Http\Controllers\Admin;

use App\AnnualReport;
use App\Category;
use App\Log;
use App\Message;
use App\News;
use App\NewsEvent;
use App\QuarterlyReport;
use App\Settings;
use App\Gapi\Gapi;
use App\Http\Controllers\Controller;
use App\Singlepage;
use App\SinglePageMenu;
use App\Slideshow;
use Illuminate\Support\Carbon;


class AdminDashboardController extends Controller
{
    //view home page
    public function index()
    {
        $settings = Settings::where("keyname", "setting")->first();
        $data = [
            'headTitle' => "Dashboard",
        ];

        $countSlideshow        = Slideshow::all();
        $countSlideshow_today  = Slideshow::whereDate('created_at', \Carbon\Carbon::today())->get();
        $countSlideshow_week   = Slideshow::whereDate('created_at','>=', Carbon::now()->subWeeks(1))->get();
        $countSlideshow_month  = Slideshow::whereDate('created_at','>=', Carbon::now()->subDays(30))->get();
        $Slideshows =['total'=>count($countSlideshow),'today'=>count($countSlideshow_today),'week'=>count($countSlideshow_week),'month'=>count($countSlideshow_month)];

        $countNews        = News::all();
        $countNews_today  = News::whereDate('created_at', \Carbon\Carbon::today())->get();
        $countNews_week   = News::whereDate('created_at','>=', Carbon::now()->subWeeks(1))->get();
        $countNews_month  = News::whereDate('created_at','>=', Carbon::now()->subDays(30))->get();
        $News =['total'=>count($countNews),'today'=>count($countNews_today),'week'=>count($countNews_week),'month'=>count($countNews_month)];

        $countCategories        = Category::all();
        $countCategories_today  = Category::whereDate('created_at', \Carbon\Carbon::today())->get();
        $countCategories_week   = Category::whereDate('created_at','>=', Carbon::now()->subWeeks(1))->get();
        $countCategories_month  = Category::whereDate('created_at','>=', Carbon::now()->subDays(30))->get();
        $Categories =['total'=>count($countCategories),'today'=>count($countCategories_today),'week'=>count($countCategories_week),'month'=>count($countCategories_month)];

        $countSinglePageMenu        = SinglePageMenu::all();
        $countSinglePageMenu_today  = SinglePageMenu::whereDate('created_at', \Carbon\Carbon::today())->get();
        $countSinglePageMenu_week   = SinglePageMenu::whereDate('created_at','>=', Carbon::now()->subWeeks(1))->get();
        $countSinglePageMenu_month  = SinglePageMenu::whereDate('created_at','>=', Carbon::now()->subDays(30))->get();
        $SinglePageMenu =['total'=>count($countSinglePageMenu),'today'=>count($countSinglePageMenu_today),'week'=>count($countSinglePageMenu_week),'month'=>count($countSinglePageMenu_month)];

        $countAnnualReport        = AnnualReport::all();
        $countAnnualReport_today  = AnnualReport::whereDate('created_at', \Carbon\Carbon::today())->get();
        $countAnnualReport_week   = AnnualReport::whereDate('created_at','>=', Carbon::now()->subWeeks(1))->get();
        $countAnnualReport_month  = AnnualReport::whereDate('created_at','>=', Carbon::now()->subDays(30))->get();
        $AnnualReports =['total'=>count($countAnnualReport),'today'=>count($countAnnualReport_today),'week'=>count($countAnnualReport_week),'month'=>count($countAnnualReport_month)];

        $countQuarterlyReport        = QuarterlyReport::all();
        $countQuarterlyReport_today  = QuarterlyReport::whereDate('created_at', \Carbon\Carbon::today())->get();
        $countQuarterlyReport_week   = QuarterlyReport::whereDate('created_at','>=', Carbon::now()->subWeeks(1))->get();
        $countQuarterlyReport_month  = QuarterlyReport::whereDate('created_at','>=', Carbon::now()->subDays(30))->get();
        $QuarterlyReport =['total'=>count($countQuarterlyReport),'today'=>count($countQuarterlyReport_today),'week'=>count($countQuarterlyReport_week),'month'=>count($countQuarterlyReport_month)];
        return view('gwc.dashboard.index', compact( 'settings', 'data', 'Slideshows', 'News', 'Categories', 'SinglePageMenu', 'AnnualReports', 'QuarterlyReport'));
    }


    //get unread contact us messages
    public static function getUnreadMessages()
    {
        $messages = Message::where('is_read', 0)->orderBy('created_at', 'DESC')->get();
        return $messages;
    }


    //get today logs
    public static function getTodayLogs()
    {
        $logs = Log::orderBy('created_at', 'DESC')->whereDate('created_at', Carbon::today())->get();
        return $logs;
    }



	
	
	
	
	
	
	
	



    ///get setting details
    public static function getSettingsDetails()
    {
        $settings = Settings::where('keyname', 'setting')->first();
        return $settings;
    }

    //get chart for sale
    public static function getChartvalues()
    {
        $v = '';
        for ($m = 1; $m <= 12; $m++) {
            $v .= self::Monthlysale($m) . ',';
        }
        return $v;
    }

    //Monthly sale
    public static function Monthlysale($m)
    {
        $amt = 0;
        if (strlen($m) == 1) {
            $m = "0" . $m;
        }
        $date = date("Y") . "-" . $m;
        $soldorders = OrdersDetails::where('order_status', 'completed')->where('created_at', 'LIKE', '%' . $date . '%')->get();
        if (!empty($soldorders)) {
            foreach ($soldorders as $soldorder) {
                $amt += self::getOrderAmounts($soldorder->id);
            }
        }
        return $amt;
    }

    //get orders
    //get chart for sale
    public static function getChartvalues_Orders()
    {
        $v = '';
        for ($m = 1; $m <= 12; $m++) {
            $v .= self::Monthlyorder($m) . ',';
        }
        return $v;
    }

    //Monthly order
    public static function Monthlyorder($m)
    {
        $amt = 0;
        if (strlen($m) == 1) {
            $m = "0" . $m;
        }
        $date = date("Y") . "-" . $m;
        $soldorders = OrdersDetails::where('order_status', 'completed')->where('created_at', 'LIKE', '%' . $date . '%')->get()->count();
        return $soldorders;
    }

    //to order amount
    public static function thisMonthGrow()
    {
        $cdate = date("Y-m");
        $pdate = date("Y-m", strtotime("-1 months"));
        $currentAmount = 0;
        $prevAmount = 0;
        $percentChange = 0;
        $soldorders_c = OrdersDetails::where('order_status', 'completed')->where('created_at', 'LIKE', '%' . $cdate . '%')->get();
        if (!empty($soldorders_c)) {
            foreach ($soldorders_c as $soldorder_c) {
                $currentAmount += self::getOrderAmounts($soldorder_c->id);
            }
        }
        //
        $soldorders_p = OrdersDetails::where('order_status', 'completed')->where('created_at', 'LIKE', '%' . $pdate . '%')->get();
        if (!empty($soldorders_p)) {
            foreach ($soldorders_p as $soldorder_p) {
                $prevAmount += self::getOrderAmounts($soldorder_p->id);
            }
        }
        //get percentage
        if (!empty($prevAmount) && !empty($currentAmount)) {
            $percentChange = (1 - $prevAmount / $currentAmount) * 100;
        } else {
            $percentChange = 0;
        }
        return $percentChange;
    }

    //order grow
    public static function thisMonthOrderGrow()
    {
        $cdate = date("Y-m");
        $pdate = date("Y-m", strtotime("-1 months"));
        $currentAmount = 0;
        $prevAmount = 0;
        $percentChange = 0;
        $soldorders_c = OrdersDetails::where('order_status', 'completed')->where('created_at', 'LIKE', '%' . $cdate . '%')->get();
        if (!empty($soldorders_c)) {
            $currentAmount = count($soldorders_c);
        }
        //
        $soldorders_p = OrdersDetails::where('order_status', 'completed')->where('created_at', 'LIKE', '%' . $pdate . '%')->get();
        if (!empty($soldorders_p)) {
            $prevAmount = count($soldorders_p);
        }
        //get percentage
        if (!empty($currentAmount)) {
            $percentChange = (1 - $prevAmount / $currentAmount) * 100;
        } else {
            $percentChange = 0;
        }
        return $percentChange;
    }

    //get total order amount
    public static function getOrderAmounts($id)
    {
        $totalAmt = 0;
        $orderDetails = OrdersDetails::Where('id', $id)->first();
        $listOrders = Orders::where('oid', $id)->get();
        if (!empty($listOrders) && count($listOrders) > 0) {
            foreach ($listOrders as $listOrder) {
                $totalAmt += ($listOrder->quantity * $listOrder->unit_price);
            }
            //apply coupon if its not free
            if (!empty($orderDetails->coupon_code) && empty($orderDetails->coupon_free)) {
                $totalAmt = $totalAmt - $orderDetails->coupon_amount;
            }
            //apply delivery charges if coupon is empty
            if (empty($orderDetails->coupon_free)) {
                $totalAmt = $totalAmt + $orderDetails->delivery_charges;
            }
        }

        return $totalAmt;
    }

    //google analytics
    public static function gareport()
    {
        //$p12 = public_path('/uploads/keys.p12');
        //$ga_profile_id = "236997161";
        //$ga = new Gapi("alrayahkw@al-rayahkw.iam.gserviceaccount.com", $p12);
        //$unique_id = "102058777958989704913";
        //$private_key_password = "notasecret";
        //$p12 = base_path('/public/uploads/keys.p12');
        $p12 = base_path('/public/uploads/theboxlab-55b7c8f0a711.p12');
        $ga = new Gapi("theboxlab@theboxlab.iam.gserviceaccount.com", $p12);
        $accessToken = $ga->getToken();
        return $accessToken;
    }

}
