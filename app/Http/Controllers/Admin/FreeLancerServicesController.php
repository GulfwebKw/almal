<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use App\category_translation;
use App\Freelancer;
use App\FreelancerServices;
use App\Http\Controllers\Controller;
use App\language;
use App\Rate;
use App\Settings;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;

class FreeLancerServicesController extends Controller
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
        $this->model = '\App\FreelancerServices';
        $this->title = 'freelancer_services';
        $this->path = 'freelancer_services';
        $this->data['subheader1'] = 'Freelancers';

        $this->data['path'] = $this->path;
        $this->data['listPermission'] = 'freelancers' . '-list';
        $this->data['createPermission'] = 'freelancers' . '-create';
        $this->data['editPermission'] = 'freelancers' . '-edit';
        $this->data['deletePermission'] = 'freelancers' . '-delete';
        $this->data['url'] = '/gwc/freelancer/' .\Illuminate\Support\Facades\Request::segment(3) .'/services/';
        $this->data['imageFolder'] = '/uploads/' . $this->path;
        $this->data['storeRoute'] = 'services' . '.store';
        $this->data['updateRoute'] = 'services' . '.update';
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
    public function index($id)
    {
        $resources = Freelancer::find($id);
        $resources = $resources->services??[];
        return view('gwc.' . $this->data['path'] . '.index', [
            'data' => $this->data,
            'settings' => $this->settings,
            'resources' => $resources,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('gwc.' . $this->data['path'] . '.create', [
            'data' => $this->data,
            'settings' => $this->settings,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $id)
    {
        foreach ($request->images as $image) {
            if (File::exists(public_path('uploads/junk/' . $image))){
            rename(public_path('uploads/junk/' . $image), public_path('uploads/' . $this->path . '/' . $image));
            }
        }
        FreelancerServices::create([
            'freelancer_id' => $id,
            'name' => $request->name,
            'price' => $request->price,
            'short_desc' => $request->short_desc,
            'images' => implode(",", $request->images),
        ]);
        return redirect()->route('services.index', $id);
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
    public function edit($freelancer_id, $service_id)
    {
        $resource = $this->model::find($service_id);
        return view('gwc.freelancer_services.edit', [
            'data' => $this->data,
            'settings' => $this->settings,
            'resource' => $resource,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $freelancer_id, $id)
    {
        $services =  FreelancerServices::find($id);
        if ($request->images && count($request->images)) {
            foreach ($request->images as $image) {
                rename(public_path('uploads/junk/' . $image), public_path('uploads/' . $this->path . '/' . $image));
            }
        $services->images = implode(",", $request->images);
            $services->save();
        }
            $services->update([
            'name' => $request->name,
            'price' => $request->price,
            'short_desc' => $request->short_desc,
        ]);
        return redirect()->route('services.index', $freelancer_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($freelancer_id, $id)
    {
        $resource = $this->model::find($id);
        if ($resource->images != null) {
            foreach (explode(',', $resource->images) as $image) {
                $this->DeletePhotos($image, $this->path . '/');
                $this->DeletePhotos($image, $this->path . '/thumb/');
            }
        }
        $resource->delete();
        return redirect()->route('services.index', $freelancer_id);
    }
}
