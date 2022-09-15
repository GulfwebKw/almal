<?php

namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use App\Settings;
use Auth;
use App\Http\Controllers\Controller;
use App\Category_almal;
use Image;
use File;
use Response;
use DB;
use App\Http\Controllers\Common;
class AdminMenuCategoryController extends Controller
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
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
		$settingInfo = Settings::where("keyname","setting")->first();
        $categories    = Category_almal::where('parent_id', '=', 0)->get();
        $allCategories = Category_almal::all();
        
        $totalCategories = count($allCategories);
  
        return view('gwc.category.index',compact('categories','allCategories','totalCategories'));
    }


    /**
     * Create a new resource
     **/
    public function create()
    {	$categories = Category_almal::where('parent_id', '=', 0)->get();
        $lastOrderInfo = Category_almal::where('parent_id', '=', 0)->OrderBy('display_order','desc')->first();
		//dd($lastOrderInfo->display_order);
	if(!empty($lastOrderInfo->display_order)){
		$lastOrder=($lastOrderInfo->display_order+1);
		}else{
		$lastOrder=1;
		}
        return view('gwc.category.create')->with([
            'categories'  =>  $categories,'lastOrder'=>$lastOrder
        ]);
    }


    /**
     * Store New Resource
     **/


    public function storeCategory(Request $request)
    {

		$settingInfo = Settings::where("keyname","setting")->first();
		$category_thumb_w = 450;
		$category_thumb_h = 450;
		
		$category_big_w = 990;
		$category_big_h = 990;
		
		//field validation
	    $this->validate($request, [
            'name_en' => 'required|min:3|max:100|string',
			'name_ar' => 'required|min:3|max:100|string',
			'friendly_url' => 'required|min:3|max:200|string|unique:gwc_categories,friendly_url',
			'image' => 'mimes:jpeg,png,jpg,gif,svg|max:2048'
        ]);
		
		
		
	    try{
		
	

            
		$category = new Category_almal();
  //upload image
  $image="";
  if($request->hasfile('image')){
  $image = 'b-'.md5(time()).'.'.$request->image->getClientOriginalExtension();
  $request->image->move(public_path('uploads/category'), $image);
  }

       
    //Store Image In Folder
  //upload image
  $imageHeader="";
  if($request->hasfile('header_image')){
 $imageHeader  = 'b-'.md5(time()).'.'.$request->header_image->getClientOriginalExtension();
  $request->header_image->move(public_path('uploads/category'),$imageHeader);
  }



		$category->parent_id=$request->input('parent_id');
		$category->name_en=$request->input('name_en');
		$category->name_ar=$request->input('name_ar');
		$category->details_en=$request->input('details_en');
		$category->details_ar=$request->input('details_ar');
		$category->seo_keywords_en=$request->input('seo_keywords_en');
		$category->seo_keywords_ar=$request->input('seo_keywords_ar');
		$category->seo_description_en=$request->input('seo_description_en');
		$category->seo_description_ar=$request->input('seo_description_ar');
		$category->friendly_url=$request->input('friendly_url');
		$category->is_active=!empty($request->input('is_active'))?$request->input('is_active'):'0';
		$category->display_order=!empty($request->input('display_order'))?$request->input('display_order'):'0';
        $category->image=$image;
        $category->header_image=$imageHeader;
		$category->save();
		
		//save logs
		$key_name   = "category";
		$key_id     = $category->id;
		$message    = "New category is added (".$category->name_en.")";
		$created_by = Auth::guard('admin')->user()->id;
		Common::saveLogs($key_name,$key_id,$message,$created_by);
		//end save logs

        return redirect('/gwc/category')->with('message-success','Category is added successfully');
		
		}catch (\Exception $e) {
	    return redirect()->back()->with('message-error',$e->getMessage());	
	    }
    }


    public function edit($id)
    {
		$settingInfo = Settings::where("keyname","setting")->first();
        $categories   = Category_almal::where('parent_id', '=', 0)->get();
	    $editcategory = Category_almal::find($id);
        return view('gwc.category.edit',compact('editcategory','categories'));
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
   
   public function updateCategory(Request $request, $id)
   {

	$settingInfo = Settings::where("keyname","setting")->first();
	$category_thumb_w = 450;
	$category_thumb_h = 450;
	
	$category_big_w = 990;
	$category_big_h = 990;
	
	
 //field validation  
   $this->validate($request, [
		'name_en' => 'required|min:3|max:100|string',
		'name_ar' => 'required|min:3|max:100|string',
		'friendly_url' => 'required|min:3|max:200|string|unique:gwc_categories,friendly_url,'.$id,
		'image' => 'mimes:jpeg,png,jpg,gif,svg|max:2048'
	]);
	
	
   try{
   
 
	
	$category = Category_almal::find($id);
	
	
	
  //upload image
  $image=$category->image;
  if($request->hasfile('image')){
  $image = 'b-'.md5(time()).'.'.$request->image->getClientOriginalExtension();
  $request->image->move(public_path('uploads/category'), $image);
  }

       
    //Store Image In Folder
  //upload image
  $imageHeader=$category->header_image;
  if($request->hasfile('header_image')){
 $imageHeader  = 'b-'.md5(time()).'.'.$request->header_image->getClientOriginalExtension();
  $request->header_image->move(public_path('uploads/category'),$imageHeader);
  }


	$category->parent_id=$request->input('parent_id');
	$category->name_en=$request->input('name_en');
	$category->name_ar=$request->input('name_ar');
	$category->details_en=$request->input('details_en');
	$category->details_ar=$request->input('details_ar');
	$category->seo_keywords_en=$request->input('seo_keywords_en');
	$category->seo_keywords_ar=$request->input('seo_keywords_ar');
	$category->seo_description_en=$request->input('seo_description_en');
	$category->seo_description_ar=$request->input('seo_description_ar');
	$category->friendly_url=$request->input('friendly_url');
	$category->is_active=!empty($request->input('is_active'))?$request->input('is_active'):'0';
	$category->display_order=!empty($request->input('display_order'))?$request->input('display_order'):'0';
    $category->image=$image;
    $category->header_image=$imageHeader;
	//save logs
	$category->save();
	$key_name   = "category";
	$key_id     = $category->id;
	$message    = "Category is edited (".$category->name_en.")";
	$created_by = Auth::guard('admin')->user()->id;
	Common::saveLogs($key_name,$key_id,$message,$created_by);
	//end save logs
	return redirect('/gwc/category')->with('message-success','Category is updated successfully');
  }catch (\Exception $e) {
	return redirect()->back()->with('message-error',$e->getMessage());	
	}
   }

     /**
     * Update the specified resource
     */
   
    /**
     * Delete the Image.
     */
    public function deleteImage($id, $field)
    {
        $category = Category_almal::find($id);
        //delete image from folder
        if(!empty($category->image)){
        $web_image_path = "/uploads/category/".$category->image;
        $web_image_paththumb = "/uploads/category/thumb/".$category->image;
        if(File::exists(public_path($web_image_path))){
           File::delete(public_path($web_image_path));
           File::delete(public_path($web_image_paththumb));
         }
        }
        
        $category->image='';
        $category->save();
            //save logs
            $key_name   = "category";
            $key_id     = $category->id;
            $message    = "Category image is deleted (".$category->name_en.")";
            $created_by = Auth::guard('admin')->user()->id;
            Common::saveLogs($key_name,$key_id,$message,$created_by);
            //end save logs
            
        return redirect()->back()->with('message-success','Image is deleted successfully');	
    }


	public function deleteHeaderImage($id){
        $category = Category_almal::find($id);
        //delete image from folder
        if(!empty($category->header_image)){
        $web_image_path = "/uploads/category/".$category->header_image;
        if(File::exists(public_path($web_image_path))){
           File::delete(public_path($web_image_path));
         }
        }
        
        $category->header_image='';
        $category->save();
            //save logs
            $key_name   = "category";
            $key_id     = $category->id;
            $message    = "Category header_image is deleted (".$category->name_en.")";
            $created_by = Auth::guard('admin')->user()->id;
            Common::saveLogs($key_name,$key_id,$message,$created_by);
            //end save logs
            
        return redirect()->back()->with('message-success','Image is deleted successfully');	
        }
    /**
     * Delete the resource
     */
    public function destroy($id)
    {
       //check param ID
	 if(empty($id)){
        return redirect('/gwc/category')->with('message-error','Param ID is missing'); 
        }
        //get cat info
        $category = Category_almal::find($id);
        //check cat id exist or not
        if(empty($category->id)){
        return redirect('/gwc/category')->with('message-error','No record found'); 
        }
     
		$this->destroy_childs($id);
        //delete parent cat mage
        if(!empty($category->image)){
        $web_image_path = "/uploads/category/".$category->image;
        $web_image_paththumb = "/uploads/category/thumb/".$category->image;
        if(File::exists(public_path($web_image_path))){
          File::delete(public_path($web_image_path));
          File::delete(public_path($web_image_paththumb));
         }
        }
        
        if(!empty($category->header_image)){
        $web_image_path = "/uploads/category/".$category->header_image;
        if(File::exists(public_path($web_image_path))){
          File::delete(public_path($web_image_path));
         }
        }
           //save logs
           $key_name   = "category";
           $key_id     = $category->id;
           $message    = "Category is removed (".$category->name_en.")";
           $created_by = Auth::guard('admin')->user()->id;
           Common::saveLogs($key_name,$key_id,$message,$created_by);
           //end save logs
           
        //end deleting parent cat image
        $category->delete();
        return redirect()->back()->with('message-success','Category is deleted successfully');	
    }


	 //child category
	 public function destroy_childs($id){
		//check param ID
		if(!empty($id)){
		//get cat info
		$categorys = Category_almal::where("parent_id",$id)->get();
		//check cat id exist or not
		if(count($categorys)){
		foreach($categorys as $category){
				$categorychild = Category_almal::find($category->id);
				//delete parent cat mage
				if(!empty($categorychild->image)){
				$web_image_path = "/uploads/category/".$categorychild->image;
				$web_image_paththumb = "/uploads/category/".$categorychild->image;
				if(File::exists(public_path($web_image_path))){
				  File::delete(public_path($web_image_path));
				  File::delete(public_path($web_image_paththumb));
				 }
				}
				$this->destroy_childs($category->id);
				
				//end deleting parent cat image
				$categorychild->delete();
		
										 }
							 }
					   }	
		}
    //update status
    public function updateStatusAjax(Request $request)
    {
        
        $resource = Category_almal::where('id', $request->id)->first();
        
        if ($resource['is_active'] == 1) {
            $active = 0;
        } else {
            $active = 1;
        }

        $resource->is_active = $active;
        $resource->save();

     

        return ['status' => 200, 'message' => 'Status is modified successfully'];
    }       
    
}
