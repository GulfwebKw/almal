<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use App\category_translation;
use App\Freelancer;
use App\Http\Controllers\Controller;
use App\language;
use App\Rate;
use App\Settings;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;

class FreeLancersController extends Controller
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

    public function __construct()
    {
        $this->settings = Settings::where("keyname", "setting")->first();
        $this->model = '\App\Freelancer';
        $this->title = 'Freelancers';
        $this->path = 'freelancers';
        $this->data['subheader1'] = 'Freelancers';

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
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $resources = $this->model::paginate($this->settings->item_per_page_back);
        $categories = Category::where('parent_id', null)->with('childrenRecursive')->get();
        return view('gwc.' . $this->data['path'] . '.index', [
            'data' => $this->data,
            'settings' => $this->settings,
            'resources' => $resources,
            'categories' => $categories
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories  = Category::where('parent_id', null)->get();
        return view('gwc.' . $this->data['path'] . '.create', [
            'data' => $this->data,
            'settings' => $this->settings,
            'categories' => $categories ,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $cover_image = Common::uploadImage($request, 'image', $this->path, $this->image_big_w, $this->image_big_h, $this->image_thumb_w, $this->image_thumb_h);
        $freelancer = new Freelancer();
        $freelancer->name = $request->name;
        $freelancer->email = $request->email;
        $freelancer->phone = $request->phone;
        $freelancer->link = $request->link;
        $freelancer->bio = $request->bio;
        $freelancer->category_id = $request->category_id;
        $freelancer->image = $cover_image;
        $rate = Rate::create([
            'number_people'=>0,
            'rate'=>5,
        ]);
        $freelancer->rate_id = $rate->id;
        $freelancer->save();

        return redirect()->route('freelancers.index');
    }
    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categories = Category::where('parent_id', null)->get();
        $resource = $this->model::find($id);
        return view('gwc.' . $this->data['path'] . '.edit', [
            'data' => $this->data,
            'settings' => $this->settings,
            'resource' => $resource,
            'categories' => $categories
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

//        $resource = Category::find($id);
//
//        $resource->update([
//            'title_en' => $request->title_en,
//            'title_fa' => $request->title_fa,
//            'icon' => $cover_image != '' ? $cover_image : $resource->icon,
//            'slug' => make_slug($request->title_en),
//            'meta_desc' => $request->meta_desc,
//            'parent_id' => $request->parent_id,
//        ]);
//        return redirect()->route('categories.index');

        $resource = Freelancer::find($id);
        $cover_image = $resource->image;
        if ($request->hasFile('image'))
        $cover_image = Common::editImage($request, 'image', $this->path, $this->image_big_w, $this->image_big_h, $this->image_thumb_w, $this->image_thumb_h, $resource);
        $resource->name = $request->name;
        $resource->email = $request->email;
        $resource->phone = $request->phone;
        $resource->link = $request->link;
        $resource->bio = $request->bio;
        $resource->category_id = $request->category_id;
        $resource->image = $cover_image;
        $resource->save();
        return redirect()->route('freelancers.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
       public function destroy($id)
    {
        $freelancer = $this->model::find($id);
        if ($freelancer->image && File::exists(public_path($this->path . '/thumb/'))){
        $this->DeletePhotos($freelancer->image, $this->path . '/thumb/');
            
            }
        if ($freelancer->image && File::exists(public_path($this->path . '/thumb/'))){
            $this->DeletePhotos($freelancer->image, $this->path . '/');
    }
        $freelancer->delete();
        return redirect()->route('freelancers.index');
    }
}
