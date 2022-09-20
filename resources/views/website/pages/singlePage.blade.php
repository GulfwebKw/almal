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
                {{--                <article class="itemscope post_item post_item_single post_featured_default post_format_gallery">--}}
                {{--                    <section class="post_content">--}}
                {{--                        <div class="sc_slider sc_slider_swiper swiper-slider-container sc_slider_controls sc_slider_pagination"--}}
                {{--                             data-interval="7783" data-old-height="659" data-old-width="1170"--}}
                {{--                             id="sc_1920x1079804840962">--}}
                {{--                            @if(isset($category['singlepage'])&&$category['singlepage']->image)--}}
                {{--                            <div class="slides swiper-wrapper disabled" data-style="height:300px;">--}}
                {{--                                <div class="swiper-slide disabled"--}}
                {{--                                     data-style="background-image: url({{$category['singlepage']?'/uploads/single-page-menu/'.$category['singlepage']->image:'/uploads/categories/'.$category->image}});width:1170px;height:300px;">--}}
                {{--                                    <a href="/site_assets/images/news1.png"></a>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                            @endif--}}
                {{--                    </section>--}}
                {{--                </article>--}}
                <img src="{{$category['singlepage']?asset('/uploads/single-page-menu/'.$category['singlepage']->image):asset('/uploads/categories/'.$category->image)}}"
                     alt="">
                <p>
                    {!!$category['singlePage']? $category['singlePage']['description_'. $lang]:$category->translate($lang)->meta_desc !!}
                </p>
            </div>

            <div class="sidebar widget_area scheme_original">
                <div class="sidebar_inner widget_area_inner">
                    <aside class="widget widget_categories">
                        @if(count($children))
                     <h5 class="widget_title">{{$children[0]['parent']?$children[0]['parent']->translate($lang)->title:$children[0]->translate($lang)->title}}</h5>
                        <ul>
                            @foreach($children as $child)
                                <li class="cat-item">
                                    <a href="{{$child->link?url($child->link):route('category.singlepage', [$child->id, $child->slug])}}"><span style="{{ urldecode(basename(url()->current())) == urldecode($child->slug) ? 'color: #0058a2' : '' }}">{{$child->translate($lang)->title}}</span></a>
                                    @foreach($child->childrenRecursive as $chi)
                                        <li class="cat-item {{ app()->getLocale() == 'en' ? 'margin_left_small' : 'margin_right_small' }}">
                                            <a href="{{$chi->link?url($chi->link):route('category.singlepage', [$chi->id, $chi->slug])}}"><span style="{{ basename(url()->current()) == $chi->slug ? 'color: #0058a2' : '' }}">{{$chi->translate($lang)->title}}</span></a>
                                        </li>
                                    @endforeach
                                </li>
                            @endforeach
                        </ul>
                        @endif
                    </aside>
                </div>
            </div><!-- /.sidebar -->
        </div>
    </div>
@endsection
@section('script')

@endsection