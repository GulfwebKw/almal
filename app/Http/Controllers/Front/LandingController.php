<?php

namespace App\Http\Controllers\Front;

use App\Category;
use App\Freelancer;
use App\HowItWork;
use App\Package;
use App\Settings;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class LandingController extends Controller
{
    public function setLocale($lang)
    {
        App::setLocale($lang);
        session()->put('locale', $lang);
        return redirect('/');
    }

    public function register(Request $request)
    {
        $this->validate($request, [
            'password' => 'required|confirmed|min:6'
        ]);
        Freelancer::create([
            'name'=>$request->full_name,
            'email'=>$request->email,
            'phone'=>$request->phonenumber,
            'password'=> Hash::make($request->password),
        ]);
              return redirect('/')->with('success', 'Registration Successfully Done');
    }

    public function login(Request $request)
    {
        if (Auth::guard('freelancer')->attempt(['email' => $request->email, 'password' => $request->password], $request->remember)) {
            // if successful, then redirect to their intended location
                return redirect('/freelancer');
        }
        return redirect()->back()->withInput($request->only('username', 'remember'));
    }

    public function index()
    {

        $settings = Settings::where("keyname", "setting")->first();
        $categories = Category::where('parent_id', null)->get();
        $sliders = HowItWork::all();
        return view('front.index', compact('categories', 'sliders', 'settings'));
    }

    public function loginPage()
    {
        return view('front.login');
    }

    public function registerPage()
    {
        return view('front.register');
    }

    public function packages()
    {
        $packages = Package::all();
        $expire = \auth()->user()->expiration_date;
        return view('front.freelancerPackages', compact('packages', 'expire'));
    }

    public function logOut()
    {
        Auth::guard('freelancer')->logout();
        return redirect('/');
    }

}
