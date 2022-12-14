<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use App\SinglePageMenu;
use Illuminate\Http\Request;
use App\Settings;
use Auth;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Common;
use File;

class AdminSinglepageMenuController extends Controller
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
        $this->model = '\App\SinglePageMenu';
        $this->title = 'Single Page Menu';
        $this->path = 'single-page-menu';
        $this->data['subheader1'] = 'Web Components';

        $this->data['path'] = $this->path;
        $this->data['listPermission'] = $this->path . '-list';
        $this->data['createPermission'] = $this->path . '-createe';
        $this->data['editPermission'] = $this->path . '-edit';
        $this->data['deletePermission'] = $this->path . '-deletee';
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
        $resources = $this->model::orderBy('display_order', $this->settings->default_sort)->whereHas("category", function ($query) {
            $query->where('is_active', 1);
        })->with("category")->paginate($this->settings->item_per_page_back);
        return view('gwc.' . $this->data['path'] . '.index', [
            'data' => $this->data,
            'settings' => $this->settings,
            'resources' => $resources
        ]);
    }


    /**
     * Create a new resource
     **/
    public function create()
    {
        $categories = Category::where(['parent_id'=> null, 'is_active'=>1])->with('childrenRecursive')->get();
        $lastOrderInfo = $this->model::OrderBy('display_order', 'desc')->first();
        if (!empty($lastOrderInfo->display_order)) {
            $lastOrder = ($lastOrderInfo->display_order + 1);
        } else {
            $lastOrder = 1;
        }

        return view('gwc.' . $this->path . '.create', [
            'data' => $this->data,
            'settings' => $this->settings,
            'lastOrder' => $lastOrder,
            'categories_custom' => $categories
        ]);
    }


    public function storeSinglePageMenu(Request $request)
    {
        //field validation
        $this->validate($request, [
            'display_order' => 'required|numeric|unique:single_page_menu,display_order',
            'title_en' => 'required|string',
            'title_ar' => 'required|string',
            'description_en' => 'required|string',
            'description_ar' => 'required|string',
            'category_id' => 'required'
        ]);

        //upload image
        $image = "";
        $header_image = "";
        if ($request->hasfile('image')) {
            $image = Common::uploadImage($request, 'image', $this->path, $this->image_big_w, $this->image_big_h, $this->image_thumb_w, $this->image_thumb_h);
        }
        $imageName = null;
        if (request()->hasFile('header_image')) {
            $header_image = Common::uploadImage($request, 'header_image', $this->path, $this->image_big_w, $this->image_big_h, $this->image_thumb_w, $this->image_thumb_h);
        }
        $resource = new SinglePageMenu();
        $resource->title_en = $request->input('title_en');
        $resource->title_ar = $request->input('title_ar');
        $resource->description_en = $request->input('description_en');
        $resource->description_ar = $request->input('description_ar');
        $resource->is_active = !empty($request->input('is_active')) ? '1' : '0';
        $resource->display_order = !empty($request->input('display_order')) ? $request->input('display_order') : '0';
        $resource->image = $image;
        $resource->header_image = $header_image;
        $resource->category_id = $request->input('category_id');
        $resource->save();

        //save logs
        $key_name = $this->title;
        $key_id = $resource->id;
        $message = "A new record is added. (" . $resource->id . ")";
        $created_by = Auth::guard('admin')->user()->id;
        Common::saveLogs($key_name, $key_id, $message, $created_by);
        //end save logs

        return redirect('/gwc/' . $this->path)->with('message-success', 'A record is added successfully');
    }


    public function edit($id)
    {
        $category_almal = Category::where(['parent_id'=> null, 'is_active'=>1])->with('childrenRecursive')->get();

        $resource = $this->model::find($id);
        return view('gwc.' . $this->path . '.edit', [
            'data' => $this->data,
            'settings' => $this->settings,
            'resource' => $resource,
            'category_almal' => $category_almal
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
            'display_order' => 'required|numeric|unique:single_page_menu,display_order,' . $id,
            'title_en' => 'required|string',
            'title_ar' => 'required|string',
            'description_en' => 'required|string',
            'description_ar' => 'required|string',
        ]);

        $resource = $this->model::find($id);

        $image = $resource->image;
        $header_image = $resource->header_image;

        if ($request->hasfile('image'))
            $image = Common::editImage($request, 'image', $this->path, $this->image_big_w, $this->image_big_h, $this->image_thumb_w, $this->image_thumb_h, $resource);

        if ($request->hasFile('header_image'))
            $header_image = Common::editImage($request, 'header_image', $this->path, $this->image_big_w, $this->image_big_h, $this->image_thumb_w, $this->image_thumb_h, $resource);

        if ($request->remove_image) {
            $web_image_path = "/uploads/" . $this->path . '/' . $image;
            // dd($web_image_path);
            !file_exists($web_image_path) ?: unlink($web_image_path);
            $web_image_paththumb = "/uploads/" . $this->path . "/thumb/" . $image;
            !file_exists($web_image_paththumb) ?: unlink($web_image_paththumb);
            $image = null;
        }


        $resource->title_en = $request->input('title_en');
        $resource->title_ar = $request->input('title_ar');
        $resource->category_id = $request->input('category_id');
        $resource->description_en = $request->input('description_en');
        $resource->description_ar = $request->input('description_ar');
        $resource->is_active = !empty($request->input('is_active')) ? '1' : '0';
        $resource->display_order = !empty($request->input('display_order')) ? $request->input('display_order') : '0';
        $resource->image = $image;
        $resource->header_image = $header_image;
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


    public function deleteImage($id, $field)
    {
        $resource = $this->model::find($id);

        Common::deleteImage($field, $this->path, $resource);

        //save logs
        $key_name = $this->title;
        $key_id = $resource->id;
        $message = "Image is removed. (" . $resource->id . ")";
        $created_by = Auth::guard('admin')->user()->id;
        Common::saveLogs($key_name, $key_id, $message, $created_by);
        //end save logs

        return redirect()->back()->with('message-success', 'Image is deleted successfully');
    }


    /**
     * Delete the resource
     */
    public function destroy($id)
    {
        if (empty($id)) {
            return redirect('/gwc/' . $this->path)->with('message-error', 'Param ID is missing');
        }

        $resource = $this->model::find($id);

        $imageFieldName = 'image';
        $imageHeaderFieldName = 'header_image';
        if ($imageFieldName) {
            if (!empty($resource->$imageFieldName)) {
                Common::deleteImage($imageFieldName, $this->path, $resource);
            }
        }
        if ($imageHeaderFieldName) {
            if (!empty($resource->$imageHeaderFieldName)) {
                Common::deleteImage($imageHeaderFieldName, $this->path, $resource);
            }
        }

        $resource->delete();

        //save logs
        $key_name = $this->title;
        $key_id = $resource->id;
        $message = "A record is removed. (" . $resource->id . ")";
        $created_by = Auth::guard('admin')->user()->id;
        Common::saveLogs($key_name, $key_id, $message, $created_by);
        //end save logs

        return redirect()->back()->with('message-success', 'Deleted successfully');
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
