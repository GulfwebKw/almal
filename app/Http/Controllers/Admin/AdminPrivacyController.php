<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Privacy;
use Illuminate\Http\Request;
use App\Settings;
use Auth;
use App\Http\Controllers\Common;
class AdminPrivacyController extends Controller
{
    public $settings;
    public $model;
    public $path;
    public $title;
    public $data = [];

    public $image_big_w = 0;
    public $image_big_h = 0;
    public $image_thumb_w = 128;
    public $image_thumb_h = 128;


    /**
     * constructor of the class
     */
    public function __construct()
    {
        $this->settings = Settings::where("keyname", "setting")->first();
        $this->model = '\App\Privacy';
        $this->title = 'Privacy';
        $this->path = 'privacys';
        $this->data['subheader1'] = 'Web Components';

        $this->data['path'] = $this->path;
        $this->data['listPermission'] = $this->path . '-list';
        $this->data['createPermission'] = $this->path . '-create';
        $this->data['editPermission'] = $this->path . '-edit';
        $this->data['deletePermission'] = $this->path . '-delete';
        $this->data['url'] = '/gwc/' . $this->path . '/';
        $this->data['imageFolder'] = '/uploads/' . $this->path;
        $this->data['storeRoute'] = $this->path . '.store';
        $this->data['updateRoute'] = $this->path . '.update';
        $this->data['headTitle'] = $this->title;
        $this->data['portletTitle'] = $this->title;
        $this->data['subheader2'] = $this->title . ' List';
        $this->data['listTitle'] = 'List ' . $this->title;
    }



    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $resources = $this->model::orderBy('display_order', $this->settings->default_sort)->paginate($this->settings->item_per_page_back);
        return view('gwc.' . $this->data['path'] . '.index', [
            'data' => $this->data,
            'settings' => $this->settings,
            'resources' => $resources
        ]);
    }



  
  

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $resource = $this->model::find($id);
        $type = json_encode(array(
            array('id'=>'Freelancer', 'title'=>'Freelancer'),
            array('id'=>'Category', 'title'=>'Category'),
        ));
        return view('gwc.' . $this->path . '.edit', [
            'data' => $this->data,
            'settings' => $this->settings,
            'type'=>json_decode($type),
            'resource' => $resource
        ]);
    }


    /**
     * Show the details of the resource.
     */
    public function view($id)
    {
        $resource = $this->model::find($id);
        return view('gwc.' . $this->path . '.view', [
            'data' => $this->data,
            'settings' => $this->settings,
            'resource' => $resource
        ]);
    }


    /**
     * Update the specified resource
     */
    public function update(Request $request, $id)
    {
        //field validation
        $this->validate($request, [
            'display_order' => 'required|numeric|unique:gwc_privacy,display_order,' . $id,
           
            'title_personal_identification_information_en' => 'required|string',
            'title_personal_identification_information_ar' => 'required|string',
            'txt_personal_identification_information_en' => 'required|string',
            'txt_personal_identification_information_ar' => 'required|string',
            'title_non_personal_identification_information_en' => 'required|string',
            'title_non_personal_identification_information_ar' => 'required|string',
            'txt_non_personal_identification_information_en' => 'required|string',
            'txt_non_personal_identification_information_ar' => 'required|string',
            'title_web_cookie_en' => 'required|string',
            'title_web_cookie_ar' => 'required|string',
            'txt_web_cookie_en' => 'required|string',
            'txt_web_cookie_ar' => 'required|string',
            'title_how_to_use_collected_en' => 'required|string',
            'title_how_to_use_collected_ar' => 'required|string',
            'txt_how_to_use_collected_en' => 'required|string',
            'txt_how_to_use_collected_ar' => 'required|string',
            'title_how_protect_en' => 'required|string',
            'title_how_protect_ar' => 'required|string',
            'txt_how_protect_en' => 'required|string',
            'txt_how_protect_ar' => 'required|string',
            'title_share_en' => 'required|string',
            'title_share_ar' => 'required|string',
            'txt_share_en' => 'required|string',
            'txt_share_ar' => 'required|string',
            'title_change_privacy_en' => 'required|string',
            'title_change_privacy_ar' => 'required|string',
            'txt_change_privacy_en' => 'required|string',
            'txt_change_privacy_ar' => 'required|string',
            'title_acceptance_en' => 'required|string',
            'title_acceptance_ar' => 'required|string',
            'txt_acceptance_en' => 'required|string',
            'txt_acceptance_ar' => 'required|string',
            'contact_title_en' => 'required|string',
            'contact_title_ar' => 'required|string',
            'contact_txt_en' => 'required|string',
            'contact_txt_ar' => 'required|string',
           


        ]);

        $resource = $this->model::find($id);

      

        $resource->title_personal_identification_information_en = $request->input('title_personal_identification_information_en');
        $resource->title_personal_identification_information_ar = $request->input('title_personal_identification_information_ar');
        $resource->txt_personal_identification_information_en= $request->input('txt_personal_identification_information_en');
        $resource->txt_personal_identification_information_ar = $request->input('txt_personal_identification_information_ar');
        $resource->title_non_personal_identification_information_en = $request->input('itle_non_personal_identification_information_en');
        $resource->title_non_personal_identification_information_ar = $request->input('itle_non_personal_identification_information_ar');
        $resource->title_web_cookie_en = $request->input('title_web_cookie_en');
        $resource->title_web_cookie_ar = $request->input('title_web_cookie_ar');
        $resource->txt_web_cookie_en = $request->input('txt_web_cookie_en');
        $resource->txt_web_cookie_ar = $request->input('txt_web_cookie_ar');
        $resource->title_how_to_use_collected_en = $request->input('title_how_to_use_collected_en');
        $resource->title_how_to_use_collected_ar = $request->input('title_how_to_use_collected_ar');
        $resource->txt_how_to_use_collected_en = $request->input('txt_how_to_use_collected_en');
        $resource->txt_how_to_use_collected_ar = $request->input('txt_how_to_use_collected_ar');
        $resource->title_how_protect_en = $request->input('title_how_protect_en');
        $resource->title_how_protect_ar = $request->input('title_how_protect_ar');
        $resource->txt_how_protect_en = $request->input('txt_how_protect_en');
        $resource->txt_how_protect_ar = $request->input('txt_how_protect_ar');
        $resource->title_share_en = $request->input('title_share_en');
        $resource->title_share_ar = $request->input('title_share_ar');
        $resource->txt_share_en = $request->input('txt_share_en');
        $resource->txt_share_ar = $request->input('txt_share_ar');
        $resource->title_change_privacy_en = $request->input('title_change_privacy_en');
        $resource->title_change_privacy_ar = $request->input('title_change_privacy_ar');
        $resource->txt_change_privacy_en = $request->input('txt_change_privacy_en');
        $resource->txt_change_privacy_ar = $request->input('txt_change_privacy_ar');
        $resource->title_acceptance_en = $request->input('title_acceptance_en');
        $resource->title_acceptance_ar = $request->input('title_acceptance_ar');
        $resource->contact_title_en = $request->input('contact_title_en');
        $resource->contact_title_ar = $request->input('contact_title_ar');
        $resource->contact_txt_en = $request->input('contact_txt_en');
        $resource->contact_txt_ar = $request->input('contact_txt_ar');
        

        $resource->is_active = !empty($request->input('is_active')) ? '1' : '0';
        $resource->display_order = !empty($request->input('display_order')) ? $request->input('display_order') : '0';

        $resource->save();

        //save logs
        $key_name = $this->title;
        $key_id = $resource->id;
        $message = "Record is edited. (" . $resource->id . ")";
        $created_by = Auth::guard('admin')->user()->id;
        Common::saveLogs($key_name, $key_id, $message, $created_by);
        //end save logs

        return redirect('/gwc/' . $this->path)->with('message-success', 'Information is updated successfully');
    }

   
 /**
     * Update the specified resource
     */
    public function updatePrivacy(Request $request, $id)
    {
        //field validation
        $this->validate($request, [
            'display_order' => 'required|numeric|unique:privacy,display_order,' . $id,
           
            'title_en' => 'required|string',
            
            'title_ar' => 'required|string',
            'description_en' => 'required',
            'description_ar' => 'required',

        ]);

        $resource = $this->model::find($id);

      

        $resource->title_en = $request->input('title_en');
        $resource->title_ar = $request->input('title_ar');
        $resource->description_en = $request->input('description_en');
        $resource->description_ar = $request->input('description_ar');
        

      
        $resource->display_order = !empty($request->input('display_order')) ? $request->input('display_order') : '0';

        $resource->save();

        //save logs
        $key_name = $this->title;
        $key_id = $resource->id;
        $message = "Record is edited. (" . $resource->id . ")";
        $created_by = Auth::guard('admin')->user()->id;
        Common::saveLogs($key_name, $key_id, $message, $created_by);
        //end save logs

        return redirect('/gwc/' . $this->path)->with('message-success', 'Information is updated successfully');
    }

   
    public function updateP(Request $request, $id)
    {
        
        //field validation
        $this->validate($request, [
            'display_order' => 'required|numeric|unique:privacy,display_order,' . $id,
           
            'title_en' => 'required|string',
            
            'title_ar' => 'required|string',
            'description_en' => 'required',
            'description_ar' => 'required',

        ]);

        $resource = $this->model::find($id);

      

        $resource->title_en = $request->input('title_en');
        $resource->title_ar = $request->input('title_ar');
        $resource->description_en = $request->input('description_en');
        $resource->description_ar = $request->input('description_ar');
        

      
        $resource->display_order = !empty($request->input('display_order')) ? $request->input('display_order') : '0';

        $resource->save();

        //save logs
        $key_name = $this->title;
        $key_id = $resource->id;
        $message = "Record is edited. (" . $resource->id . ")";
        $created_by = Auth::guard('admin')->user()->id;
        Common::saveLogs($key_name, $key_id, $message, $created_by);
        //end save logs

        return redirect('/gwc/' . $this->path)->with('message-success', 'Information is updated successfully');
    }


    //update status
    public function updateStatusAjax(Request $request)
    {
        $resource = $this->model::where('id', $request->id)->first();
        if ($resource['is_active'] == 1) {
            $active = 0;
        } else {
            $active = 1;
        }

        $resource->is_active = $active;
        $resource->save();

        //save logs
        $key_name = $this->title;
        $key_id = $resource->id;
        $message = "status is changed to " . $active . " (" . $resource->id . ")";
        $created_by = Auth::guard('admin')->user()->id;
        Common::saveLogs($key_name, $key_id, $message, $created_by);
        //end save logs

        return ['status' => 200, 'message' => 'Status is modified successfully'];
    }

}
