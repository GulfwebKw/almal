@extends('website.master')

@section('content')
    <section class="top_panel_image top_panel_image_1"
             style="background-image:url({{$category['singlepage']?url('/uploads/single-page-menu/'.$category['singlepage']->header_image):url('/uploads/categories/'.$category->image)}});">
        <div class="top_panel_image_hover"></div>
        <div class="top_panel_image_header">
            <h1 class="top_panel_image_title">{{$category->translate($lang)->title}}</h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home" href="{{url('/')}}">
                     @if($lang=='en')Home @else  الرئيسية@endif
                </a> <span class="breadcrumbs_delimiter"></span>
                @if($category['parent'])
                {{$category['parent']->translate($lang)->title}} <span class="breadcrumbs_delimiter"></span> <span class="breadcrumbs_item current">{{$category->translate($lang)->title}}</span>
                @else
                {{$category->translate($lang)->title}}
                @endif
            </div>
        </div>
    </section>

    <div class="page_content_wrap page_paddings_yes">
        <div class="content_wrap">
            <div class="content">
                <div class="sc_recent_news sc_recent_news_style_news-announce">
                    @foreach($resources as $resource)
                    <article class="post_item post_layout_news-announce post_size_big">
                        <div class="post_des">
                            <h5 class="post_title"><a href="{{url('/')}}" rel="">{{$resource['title_'.$lang]}}</a></h5>
                            <div class="post_info">
                                <span class="post_meta_date">{{$resource->created_at}}</span>
                            </div>
                            <p>{!! \Illuminate\Support\Str::limit(strip_tags($resource['details_'.$lang]), 50) !!}</p>
                            <div class="clearfix"></div>
                            <a class="sc_button sc_button_style_filled sc_button_size_small sc_button_iconed icon-paper-plane-light my-right" href="{{route('available.vacancies.single',$resource->id)}}">{{__('adminMessage.applynow')}}</a>
                        </div>
                    </article>
                    @endforeach
                </div>
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
    </div>
@endsection