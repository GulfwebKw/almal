@extends('website.master')

@section('content')
    <section class="top_panel_image top_panel_image_1"
             style="background-image:url({{url('/site_assets/images/news_bg.jpg')}});">
        <div class="top_panel_image_hover"></div>
        <div class="top_panel_image_header">
            <h1 class="top_panel_image_title">{{$category->translate($lang)->title}}</h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home" href="{{url('/')}}">Home</a> <span class="breadcrumbs_delimiter"></span>
                {{$category['parent']->translate($lang)->title}} <span class="breadcrumbs_delimiter"></span> <span class="breadcrumbs_item current">{{$category->translate($lang)->title}}</span>
            </div>
        </div>
    </section>
    <div class="top_panel_title top_panel_style_3 title_present scheme_original is_page_paddings_yes">
        <div class="top_panel_title_inner top_panel_inner_style_3 title_present_inner">
            <div class="content_wrap">
                <div class="cat_post_info">
                    <span class="post_categories"><a class="category_link" href="{{url('/')}}" title="News">{{$news->type}}</a></span>
                </div>
                <h1 class="page_title">{{$news['title_'.$lang]}}</h1>
                <div class="post_info">
                    <span class="post_info_item"><span class="post_counters_item post_info_posted icon-calendar-light">{{$news->created_at}}</span></span>
                </div>
            </div>
        </div>
    </div>


    <div class="page_content_wrap page_paddings_yes">
        <div class="content_wrap">
            <div class="content">
                <article class="itemscope post_item post_item_single post_featured_default post_format_gallery">
                    <section class="post_content">
                        <div class="sc_slider sc_slider_swiper swiper-slider-container sc_slider_controls sc_slider_pagination" data-interval="7783" data-old-height="659" data-old-width="1170" id="sc_1920x1079804840962">
                            <div class="slides swiper-wrapper" data-style="height:659px;">
                                @foreach(explode(',', $news->images) as $image)
                                <div class="swiper-slide" data-style="background-image: url({{'/uploads/news/'.$image}});width:1170px;height:659px;">
                                    <a href="{{url('/')}}"></a>
                                </div>
                                @endforeach
                            </div>
                            <div class="sc_slider_controls_wrap">
                                <a class="sc_slider_prev" href="{{url('#')}}"></a> <a class="sc_slider_next" href="{{url('#')}}"></a>
                            </div>
                            <div class="sc_slider_pagination_wrap"></div>
                        </div>
                        {!! $news['description_'.$lang] !!}
                    </section>
                </article>

            </div>
            <div class="sidebar widget_area scheme_original">
                <div class="sidebar_inner widget_area_inner">
                    <aside class="widget widget_categories">
                        <h5 class="widget_title">{{$category['parent']->translate($lang)->title}}</h5>
                        <ul>
                            @foreach($children as $child)
                            <li class="cat-item">
                                <a href="{{$child->link?url($child->link):route('category.singlepage', [$child->id, $child->slug])}}">{{$child->translate($lang)->title}}</a>
                            </li>
                            @endforeach
                        </ul>
                    </aside>
                </div>
            </div><!-- /.sidebar -->
        </div>
    </div>
@endsection
