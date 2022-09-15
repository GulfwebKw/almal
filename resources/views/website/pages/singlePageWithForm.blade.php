@extends('website.master')

@section('content')
    <section class="top_panel_image top_panel_image_1"
             style="background-image:url({{$category['singlepage']?url('/uploads/single-page-menu/'.$category['singlepage']->header_image):url('/uploads/categories/'.$category->image)}});">
        <div class="top_panel_image_hover"></div>
        <div class="top_panel_image_header">
            <h1 class="top_panel_image_title">{{$category->translate($lang)->title}}</h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home" href="{{url('/')}}">
                      @if($lang=='en')Home @else الرئيسية @endif
                </a> <span class="breadcrumbs_delimiter"></span>
                @if($category['parent'])
                    {{$category['parent']->translate($lang)->title}} <span class="breadcrumbs_delimiter"></span> <span
                            class="breadcrumbs_item current">{{$category->translate($lang)->title}}</span>
                @else
                    {{$category->translate($lang)->title}}
                @endif
            </div>
        </div>
    </section>

    <div class="page_content_wrap page_paddings_yes">
        <div class="content_wrap sidebar_show sidebar_left">
            <div class="content ">
                <!--<article class="itemscope post_item post_item_single post_featured_default post_format_gallery">-->
                <!--    <section class="post_content">-->
                <!--        <div class="sc_slider sc_slider_swiper swiper-slider-container sc_slider_controls sc_slider_pagination"-->
                <!--             data-interval="7783" data-old-height="659" data-old-width="1170"-->
                <!--             id="sc_1920x1079804840962">-->
                <!--            <div class="slides swiper-wrapper" data-style="height:300px;">-->
                                
                <!--            </div>-->
                            
                <!--        </div>-->
                       
                <!--    </section>-->
                <!--</article>-->
                  <img src="{{$category['singlepage']?asset('/uploads/single-page-menu/'.$category['singlepage']->image):asset('/uploads/categories/'.$category->image)}}"
                     alt="">
                <p>
                    {!!$category['singlePage']? $category['singlePage']['description_'. $lang]:$category->translate($lang)->meta_desc !!}
                </p>
                 @if(\Illuminate\Support\Facades\Session::has('msg'))
                            <h4 style="background-color: #0abb87;color: white;padding: 10px;border-radius: 5px;text-align: center;">{{session()->get('msg')}}</h4>
                        @elseif($errors->any())
                            <h4 style="background-color: #aa0000;;color: white;padding: 10px;border-radius: 5px;text-align: center;">{{$errors->first()}}</h4>
                        @endif
                        <strong>For further information, please fill the following form:</strong><br/><br/>
                <form action="{{route('educations.post')}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="sc_columns columns_wrap sc_form_info">
                                <div class="sc_form_address column-1_2">
                                    <div class="sc_form_item sc_form_field label_over"><input aria-required="true"
                                                                                              class="sc_form_username"
                                                                                              name="name"
                                                                                              placeholder="{{__('adminMessage.name')}}"
                                                                                              type="text"></div>
                                </div>
                                <div class="column-1_2">
                                    <div class="sc_form_item sc_form_field label_over"><input aria-required="true"
                                                                                              class="sc_form_email"
                                                                                              name="parent_school"
                                                                                              placeholder="{{__('adminMessage.parentidschoolnumber')}}"
                                                                                              type="text"></div>
                                </div>
                                <br/><br/>

                                <div class="column-1_2">
                                    <div class="sc_form_item sc_form_field label_over"><input aria-required="true"
                                                                                              class="sc_form_email"
                                                                                              name="mobile"
                                                                                              placeholder="{{__('adminMessage.mobile')}}"
                                                                                              type="text"></div>
                                </div>
                                <div class="column-1_2">
                                    <div class="sc_form_item sc_form_field label_over"><input aria-required="true"
                                                                                              class="sc_form_email"
                                                                                              name="email"
                                                                                              placeholder="{{__('adminMessage.email')}}"
                                                                                              type="text"></div>
                                </div>
                                <br/><br/>

                                <div class="column-1_2">
                                    <select class="sc_form_item sc_form_field label_over" name="school" id=""
                                            style="min-width: 210px">
                                        <option value="" class="" disabled selected>{{__('adminMessage.selectschool')}}</option>
                                        <option value="Al-Bayan Bilingual School" class="">Al-Bayan Bilingual School
                                        </option>
                                    </select>
                                </div>
                                <div class="column-1_2">
                                    <select class="sc_form_item sc_form_field label_over" name="installments_number"
                                            id="" style="min-width: 210px">
                                        <option value="" class="" disabled selected>{{__('adminMessage.numberofinstallmentsrequired')}}
                                        </option>
                                        <option value="9" class="">9</option>
                                        <option value="10" class="">10</option>
                                        <option value="11" class="">11</option>
                                        <option value="12" class="">12</option>
                                    </select>
                                </div>
                                <br/><br/>

                                <div class="column-1_2">
                                    <div class="sc_form_item sc_form_field label_over"><input aria-required="true"
                                                                                              class="sc_form_email"
                                                                                              name="amount"
                                                                                              placeholder="{{__('adminMessage.loanamountrequired')}}"
                                                                                              type="text"></div>
                                </div>
                                <div class="column-1_2">
                                    <div class="sc_form_item sc_form_field label_over"><input aria-required="true"
                                                                                              class="sc_form_email"
                                                                                              name="image"
                                                                                              placeholder="{{__('adminMessage.image')}}"
                                                                                              type="file"></div>
                                </div>
                                <br/><br/>
                                <div class="form-group{{ $errors->has('captcha') ? ' has-error' : '' }}" style="display:flex;align-items: center;">
                                    
                                        <div  style="padding: 0 10px;" class="captcha col-md-6">
                                            <span class="btn-refresh">{!! captcha_img() !!}</span>
                                        </div>
                                        <div class="col-md-6">
                                        <input style="margin:10px 0;" id="captcha" type="text" class="form-control" placeholder="{{__('adminMessage.entercaptcha')}}" name="captcha">    
                                        </div>
                                        


                                        @if ($errors->has('captcha'))
                                            <span class="help-block">
                                  <strong>{{ $errors->first('captcha') }}</strong>
                              </span>
                                        @endif
                                   
                                </div>

                                <div class="sc_form_item sc_form_button" style="text-align:left">
                                    <button class="sc_button sc_button_style_filled sc_button_size_medium" >{{__('adminMessage.submit')}}
                                    </button> &nbsp;
                                </div>
                            </div>

                        </form>
            </div>
            <div class="sidebar widget_area scheme_original">
                <div class="sidebar_inner widget_area_inner">
                    <aside class="widget widget_categories">
                   <h5 class="widget_title">{{$children[0]['parent']?$children[0]['parent']->translate($lang)->title:$children[0]->translate($lang)->title}}</h5>
                        <ul>
                            @foreach($children as $child)
                                <li class="cat-item">
                                    <a href="{{$child->link?url($child->link):route('category.singlepage', [$child->id, $child->slug])}}"><span>{{$child->translate($lang)->title}}</span></a>
                                </li>
                            @endforeach
                        </ul>
                    </aside>
                </div>
            </div><!-- /.sidebar -->
        </div>
    </div>
@endsection

@section('script')
<script type="text/javascript">

    $(".btn-refresh").click(function () {
        $.ajax({
            type: 'GET',
            url: '/refresh_captcha',
            success: function (data) {
                $(".captcha span").html(data.captcha);
            }
        });
    });

</script>
@endsection



