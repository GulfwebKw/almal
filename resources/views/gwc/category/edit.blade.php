
<!DOCTYPE html>
<html lang="en">
	<!-- begin::Head -->
	<head>
		<meta charset="utf-8" />
		<title>{{__('adminMessage.websiteName')}}|edit category</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!--css files -->
		@include('gwc.css.user')
		<!-- token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">
	</head>

	<!-- end::Head -->

	<!-- begin::Body -->
	<body class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--enabled kt-subheader--fixed kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-aside--minimize  kt-page--loading">

		<!-- begin:: Page -->

		<!-- begin:: Header Mobile -->
		<div id="kt_header_mobile" class="kt-header-mobile  kt-header-mobile--fixed ">
			<div class="kt-header-mobile__logo">
				<a href="{{url('/')}}">
					<img alt="Logo" src="{!! url('admin_assets/assets/media/logos/logo-light.png') !!}" />
				</a>
			</div>
			<div class="kt-header-mobile__toolbar">
				<button class="kt-header-mobile__toggler kt-header-mobile__toggler--left" id="kt_aside_mobile_toggler"><span></span></button>
				<button class="kt-header-mobile__toggler" id="kt_header_mobile_toggler"><span></span></button>
				<button class="kt-header-mobile__topbar-toggler" id="kt_header_mobile_topbar_toggler"><i class="flaticon-more"></i></button>
			</div>
		</div>

		<!-- end:: Header Mobile -->
		<div class="kt-grid kt-grid--hor kt-grid--root">
			<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">

				<!-- begin:: Aside -->
				@include('gwc.includes.leftmenu')

				<!-- end:: Aside -->
				<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">

					<!-- begin:: Header -->
					@include('gwc.includes.header')

					<!-- end:: Header -->
					<div class="kt-content  kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">

						<!-- begin:: Subheader -->
						<div class="kt-subheader   kt-grid__item" id="kt_subheader">
							<div class="kt-container  kt-container--fluid ">
								<div class="kt-subheader__main">
									<h3 class="kt-subheader__title">categories</h3>
									<span class="kt-subheader__separator kt-hidden"></span>
									<div class="kt-subheader__breadcrumbs">
										<a href="{{url('gwc/home')}}" class="kt-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></a>
										<span class="kt-subheader__breadcrumbs-separator"></span>
										<a href="javascript:;" class="kt-subheader__breadcrumbs-link">edit category</a>
									</div>
								</div>
								<div class="btn-group" style="margin-top:10px;">
                                @if(auth()->guard('admin')->user()->can('category-create'))
								<a href="{{url('gwc/category')}}" class="btn btn-brand  btn-icon-sm"><i class="la la-list-ul"></i>list categories</a> @endif
                                </div>
							</div>
						</div>

						<!-- end:: Subheader -->

						<!-- begin:: Content -->
						<div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
                            @include('gwc.includes.alert')

							<!--begin::Portlet-->
									<div class="kt-portlet">
						<div class="kt-portlet__head kt-portlet__head--lg">
									<div class="kt-portlet__head-label">
										<span class="kt-portlet__head-icon">
											<i class="kt-font-brand flaticon2-line-chart"></i>
										</span>
										<h3 class="kt-portlet__head-title">edit category</h3>
									</div>
									
								</div>				
										<!--begin::Form-->
					@if(auth()->guard('admin')->user()->can('category-edit'))
                    <form name="tFrm"  id="form_validation"  method="post"
                          class="kt-form" enctype="multipart/form-data" action="{{route('update.category',$editcategory->id)}}">
                          <input type="hidden" name="_token" value="{{ csrf_token() }}">
											<div class="kt-portlet__body">
										<!--parent categories dropdown -->	
                                           <div class="form-group row">
                                                <div class="col-lg-12">
                                                 <div class="kt-checkbox-list kt-checkbox-inline">
                                                   <select class="form-control" name="parent_id">
                                                    <option value="0">Parent Category</option>
                                                    @foreach ($categories as $category)
                                                      <option value="{{ $category->id }}" {{$editcategory->parent_id==$category->id?'selected':''}}>{{ $category->name_en }}</option>
                                                       @if(count($category->childs))
                                                            @include('gwc.category.dropdown_childs',['childs' => $category->childs,'level'=>0,'editcategory'=>$editcategory])
                                                       @endif
                                                    @endforeach
                                                  </select>
                                                    </div>
                                                </div>
                                                </div>
                                                <div class="form-group row">
                                                <div class="col-lg-12">
                                                <div class="form-group row">
                                                
													<label class="col-2 col-form-label">is active</label>
													<div class="col-2">
														<span class="kt-switch">
															<label>
																<input type="checkbox" value="1" {{$editcategory->is_active==1?'checked':''}} name="is_active"  id="is_active"/>
																<span></span>
															</label>
														</span>
													</div>
													<label class="col-2 col-form-label">display order</label>
													<div class="col-2">
														<input type="text" class="form-control @if($errors->has('display_order')) is-invalid @endif" name="display_order"
                                                               value="{{$editcategory->display_order?$editcategory->display_order:old('display_order')}}" autocomplete="off" />
                                                               @if($errors->has('display_order'))
                                                               <div class="invalid-feedback">{{ $errors->first('display_order') }}</div>
                                                               @endif
													</div>
												</div>
                                                </div>
                                            </div>
                                            													
                                       <!--categories name -->         
                                        <div class="form-group row">
                                                <div class="col-lg-6">
                                                <label>category name en</label>
                                                        <input type="text" class="form-control @if($errors->has('name_en')) is-invalid @endif" name="name_en"
                                                               value="{{$editcategory->name_en?$editcategory->name_en:old('name_en')}}" autocomplete="off" placeholder="enter categoryname en*" />
                                                               @if($errors->has('name_en'))
                                                               <div class="invalid-feedback">{{ $errors->first('name_en') }}</div>
                                                               @endif
                                                </div>
                                                <div class="col-lg-6">
                                                <label>category name ar</label>
                                                        <input dir="rtl" type="text" class="form-control @if($errors->has('name_ar')) is-invalid @endif" name="name_ar"
                                                               value="{{$editcategory->name_ar?$editcategory->name_ar:old('name_ar')}}" autocomplete="off" placeholder="enter categoryname ar*" />
                                                               @if($errors->has('name_ar'))
                                                               <div class="invalid-feedback">{{ $errors->first('name_ar') }}</div>
                                                               @endif
                                                </div>
                                            </div>
                                            
                                      <!--categories description -->          
                                            <div class="form-group row">
                                                <div class="col-lg-6">
                                                <label>category description en</label>
                                                        <textarea rows="3" name="details_en" class="form-control @if($errors->has('details_en')) is-invalid @endif" autocomplete="off" placeholder="enter description en">{{$editcategory->details_en?$editcategory->details_en:old('details_en')}}</textarea>
                                                               @if($errors->has('details_en'))
                                                               <div class="invalid-feedback">{{ $errors->first('details_en') }}</div>
                                                               @endif
                                                </div>
                                                <div class="col-lg-6">
                                                <label>category description ar</label>
                                                        <textarea dir="rtl" rows="3" name="details_ar" class="form-control @if($errors->has('details_ar')) is-invalid @endif" autocomplete="off" placeholder="enter description ar">{{$editcategory->details_ar?$editcategory->details_ar:old('details_ar')}}</textarea>
                                                               @if($errors->has('details_ar'))
                                                               <div class="invalid-feedback">{{ $errors->first('details_ar') }}</div>
                                                               @endif
                                                </div>
                                            </div>
                                        <!-- categories SEO keywords -->   
                                      <div class="form-group row">
                                                <div class="col-lg-6">
                                                <label>seo keywords en</label>
                                                        <textarea rows="3" name="seo_keywords_en" class="form-control @if($errors->has('seo_keywords_en')) is-invalid @endif" autocomplete="off" placeholder="enter seo keywords en">{{$editcategory->seo_keywords_en?$editcategory->seo_keywords_en:old('seo_keywords_en')}}</textarea>
                                                               @if($errors->has('seo_keywords_en'))
                                                               <div class="invalid-feedback">{{ $errors->first('seo_keywords_en') }}</div>
                                                               @endif
                                                </div>
                                                <div class="col-lg-6">
                                                <label>seo keywords ar</label>
                                                        <textarea dir="rtl" rows="3" name="seo_keywords_ar" class="form-control @if($errors->has('seo_keywords_ar')) is-invalid @endif" autocomplete="off" placeholder="enter seo keywords ar">{{$editcategory->seo_keywords_ar?$editcategory->seo_keywords_ar:old('seo_keywords_ar')}}</textarea>
                                                               @if($errors->has('seo_keywords_ar'))
                                                               <div class="invalid-feedback">{{ $errors->first('seo_keywords_ar') }}</div>
                                                               @endif
                                                </div>
                                            </div>       
                                    <!--categories SEO description-->
                                            
                                    <div class="form-group row">
                                                <div class="col-lg-6">
                                                <label>seo description en</label>
                                                        <textarea rows="3" name="seo_description_en" class="form-control @if($errors->has('seo_description_en')) is-invalid @endif" autocomplete="off" placeholder="enter seo description en">{{$editcategory->seo_description_en?$editcategory->seo_description_en:old('seo_description_en')}}</textarea>
                                                               @if($errors->has('seo_description_en'))
                                                               <div class="invalid-feedback">{{ $errors->first('seo_description_en') }}</div>
                                                               @endif
                                                </div>
                                                <div class="col-lg-6">
                                                <label>seo description ar</label>
                                                        <textarea dir="rtl" rows="3" name="seo_description_ar" class="form-control @if($errors->has('seo_description_ar')) is-invalid @endif" autocomplete="off" placeholder="enter seo description en">{{$editcategory->seo_description_ar?$editcategory->seo_description_ar:old('seo_description_ar')}}</textarea>
                                                               @if($errors->has('seo_description_ar'))
                                                               <div class="invalid-feedback">{{ $errors->first('seo_description_ar') }}</div>
                                                               @endif
                                                </div>
                                            </div>
                                            
                                         <!-- friendly url , status , sorting -->   
                                         <div class="form-group row">
                                                <div class="col-lg-12">
                                                <label>friendly url</label>
                                                        <input type="text" class="form-control @if($errors->has('friendly_url')) is-invalid @endif" name="friendly_url"
                                                               value="{{$editcategory->friendly_url?$editcategory->friendly_url:old('friendly_url')}}" autocomplete="off" placeholder="enter firednly url*" />
                                                               @if($errors->has('friendly_url'))
                                                               <div class="invalid-feedback">{{ $errors->first('friendly_url') }}</div>
                                                               @endif
                                                </div>
                                               
												
                                            </div>
                                             <div class="form-group row">
                                              <div class="col-lg-4">
                                                <label>category image</label>
                                                        <div class="custom-file @if($errors->has('image')) is-invalid @endif">
														<input type="file" class="custom-file-input @if($errors->has('image')) is-invalid @endif"  id="image" name="image">
														<label class="custom-file-label" for="image">{{__('adminMessage.chooseImage')}}</label>
													    </div>
                                                        @if($errors->has('image'))
                                                        <div class="invalid-feedback">{{ $errors->first('image') }}</div>
                                                        @endif
                                                </div>
                                                <div class="col-lg-2">
                                                @if($editcategory->image)
                                                <img src="{!! url('uploads/category/'.$editcategory->image) !!}" width="40">
                                                <a href="javascript:;" data-toggle="kt-popover" data-trigger="focus" title="{{__('adminMessage.alert')}}" data-html="true" data-content="{{__('adminMessage.areyousuretodelete')}}<br><br><a href='{{url('gwc/category/deleteImage/'.$editcategory->id)}}' class='btn btn-brand btn-danger btn-icon-sm btn-sm'>YES</a>" class="btn btn-brand btn-danger btn-icon-sm btn-sm"><i class="la la-trash"></i>{{__('adminMessage.delete')}}</a>
                                                @endif
                                                </div>
                                             <div class="col-lg-4">
                                                <label>category header image</label>
                                                        <div class="custom-file @if($errors->has('header_image')) is-invalid @endif">
														<input type="file" class="custom-file-input @if($errors->has('header_image')) is-invalid @endif"  id="header_image" name="header_image">
														<label class="custom-file-label" for="header_image">choose Image</label>
													    </div>
                                                        @if($errors->has('header_image'))
                                                        <div class="invalid-feedback">{{ $errors->first('header_image') }}</div>
                                                        @endif
                                                </div>
                                                <div class="col-lg-2">
                                                @if($editcategory->header_image)
                                                <img src="{!! url('uploads/category/'.$editcategory->header_image) !!}" width="40">
                                                <a href="javascript:;" data-toggle="kt-popover" data-trigger="focus" title="{{__('adminMessage.alert')}}" data-html="true" data-content="{{__('adminMessage.areyousuretodelete')}}<br><br><a href='{{url('gwc/category/deleteHImage/'.$editcategory->id)}}' class='btn btn-brand btn-danger btn-icon-sm btn-sm'>YES</a>" class="btn btn-brand btn-danger btn-icon-sm btn-sm"><i class="la la-trash"></i>{{__('adminMessage.delete')}}</a>
                                                @endif
                                                </div>
                                             </div>
                                                     
                                                     
											</div>
											<div class="kt-portlet__foot">
												<div class="kt-form__actions">
													<button type="submit" class="btn btn-success">{{__('adminMessage.save')}}</button>
													<button type="button" onClick="Javascript:window.location.href='{{url('gwc/category')}}'"  class="btn btn-secondary cancelbtn">{{__('adminMessage.cancel')}}</button>
												</div>
											</div>
										</form>
                                        
                         
                                  @else
                            <div class="alert alert-light alert-warning" role="alert">
								<div class="alert-icon"><i class="flaticon-warning kt-font-brand"></i></div>
								<div class="alert-text">{{__('adminMessage.youdonthavepermission')}}</div>
							</div>
                            @endif
										<!--end::Form-->
									</div>

									<!--end::Portlet-->
                                    
                                    
						</div>

						<!-- end:: Content -->
					</div>

					<!-- begin:: Footer -->
					@include('gwc.includes.footer');

					<!-- end:: Footer -->
				</div>
			</div>
		</div>

		<!-- end:: Page -->


		<!-- begin::Scrolltop -->
		<div id="kt_scrolltop" class="kt-scrolltop">
			<i class="fa fa-arrow-up"></i>
		</div>

	
		<!-- js files -->
		@include('gwc.js.user')
	</body>

	<!-- end::Body -->
</html>