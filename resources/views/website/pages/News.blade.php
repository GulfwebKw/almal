@extends('website.master')

@section('content')
    <section class="top_panel_image top_panel_image_1"
             style="background-image:url({{url('/uploads/categories/'.$category->image)}});">
        <div class="top_panel_image_hover"></div>
        <div class="top_panel_image_header">
            <h1 class="top_panel_image_title">{{$category->translate($lang)->title}}</h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home" href="{{url('/')}}">
                    @if($lang=='en')Home @else الرئيسية @endif
                </a> <span class="breadcrumbs_delimiter"></span>
                {{$category['parent']->translate($lang)->title}} <span class="breadcrumbs_delimiter"></span> <span class="breadcrumbs_item current">{{$category->translate($lang)->title}}</span>
            </div>
        </div>
    </section>

    <div class="page_content_wrap page_paddings_no">
        <div class="sc_section custom_bg_2">
            <div class="content_wrap">
                <div class="sc_empty_space" data-height="2em"></div>
                <div class="isotope_wrap" data-columns="3">
                    @foreach($news as $item)
                    <div class="isotope_item isotope_item_classic isotope_item_classic_3 isotope_column_3">
                        <div class="post_item post_item_classic post_item_classic_3 post_format_standard">
                            <div class="post_featured">
                                <div class="post_thumb">
                                    <a class="hover_icon hover_icon_link" href="{{route('news.singlepage', [$item->id, $item->slug])}}"><img alt="" src="{{asset('/uploads/news/'. explode(',', $item->images)[0])}}"></a>
                                </div>
                                <div class="cat_post_info">
                                    <span class="post_categories"><a class="category_link" href="{{url('#')}}">{{$item->type}}</a></span>
                                </div>
                            </div>
                            <div class="post_content isotope_item_content">
                                <h5 class="post_title"><a href="{{route('news.singlepage', [$item->id, $item->slug])}}">{{$item['title_'.$lang]}}</a></h5>
                                <div class="post_info">
                                    <span class="post_info_item"><a class="post_info_date" href="{{url('#')}}">{{$item->created_at}}</a></span>
                                </div>
                                <div class="post_descr">
                                    {{html_entity_decode(\Illuminate\Support\Str::limit(strip_tags($item['description_'.$lang]), 100, '...'))}}
                                    <div>
                                    <a class="post_readmore readmore" href="{{route('news.singlepage', [$item->id, $item->slug])}}">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.isotope_item -->
                    @endforeach
                </div>
            </div>
        </div>
    </div><!-- </.page_content_wrap> -->
@endsection