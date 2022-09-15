@extends('website.master')

@section('content')
    <section class="top_panel_image top_panel_image_1"
             style="background-image:url({{$category['singlepage']?url('/uploads/single-page-menu/'.$category['singlepage']->header_image):url('/uploads/categories/'.$category->image)}});">
        <div class="top_panel_image_hover"></div>
        <div class="top_panel_image_header">
            <h1 class="top_panel_image_title">{{$category->title}}</h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home" href="/">Home</a> <span class="breadcrumbs_delimiter"></span>
                @if($category['parent'])
                {{$category['parent']->title}} <span class="breadcrumbs_delimiter"></span> <span class="breadcrumbs_item current">{{$category->title}}</span>
                @else
                {{$category->title}}
                @endif
            </div>
        </div>
    </section>
    <div class="page_content_wrap page_paddings_yes">
        <div class="content_wrap">
            <div class="content">
                <div style="font-size: 20px;font-weight: bold;text-align: center;margin-bottom: 50px">
                    {{$disclosure['title_'.$lang]}}
                </div>

                        {!! html_entity_decode($disclosure['details_'.$lang]) !!}


                    @if($disclosure->image!=null)
                        <div>
                            <a  href="{{route('disclosures.download',$disclosure->id)}}"><span style="color: #1e85be;text-decoration: underline;">{{$disclosure->image?"Almal ".$disclosure->date:null}}</span></a>
                        </div>
                    @endif
                <article class="itemscope post_item post_item_single post_featured_default post_format_gallery">
                    <section class="post_content">
                        <p>
                            @foreach(explode(',', $disclosure->images) as $image)
                            <img src="{{asset('/uploads/disclosures/'.$image)}}"><br/><br/>
                            @endforeach
                        </p>

                    </section>

                </article>
            </div>
            <div class="sidebar widget_area scheme_original">
                <div class="sidebar_inner widget_area_inner">
                    <aside class="widget widget_categories">
                       <h5 class="widget_title">{{$children[0]['parent']?$children[0]['parent']->title:$children[0]->title}}</h5>
                        <ul>
                            @foreach($children as $child)
                                <li class="cat-item">
                                    <a href="{{$child->link?:route('category.singlepage', [$child->id, $child->slug])}}"><span>{{$child->title}}</span></a>
                                </li>
                            @endforeach
                        </ul>
                    </aside>
                </div>
            </div><!-- /.sidebar -->
        </div>
    </div>

@endsection