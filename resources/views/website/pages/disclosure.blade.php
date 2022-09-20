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
                {{$category['parent']->translate($lang)->title}} <span class="breadcrumbs_delimiter"></span> <span class="breadcrumbs_item current">{{$category->translate($lang)->title}}</span>
                @else
                {{$category->title}}
                @endif
            </div>
        </div>
    </section>
    <div class="page_content_wrap page_paddings_yes">
        <div class="content_wrap">
            <div class="content">
                <article class="itemscope post_item post_item_single post_featured_default post_format_gallery">
                    <section class="post_content">
                        <form action="/disclosures" method="get" id="calender">
                        <select name="calender" class="select_box" onchange="calenderChange()">
                            <option @if(request()->calender==null) selected @endif  value="">{{ app()->getLocale() == 'en' ? '--All--' : '--الكل--' }}</option>
                            <option @if(request()->calender=="2022") selected @endif>2022</option>
                            <option @if(request()->calender=="2021") selected @endif>2021</option>
                            <option @if(request()->calender=="2020") selected @endif>2020</option>
                            <option @if(request()->calender=="2019") selected @endif>2019</option>
                            <option @if(request()->calender=="2018") selected @endif>2018</option>
                            <option @if(request()->calender=="2017") selected @endif>2017</option>
                            <option @if(request()->calender=="2016") selected @endif>2016</option>
                            <option @if(request()->calender=="2015") selected @endif>2015</option>
                            <option @if(request()->calender=="2014") selected @endif>2014</option>
                            <option @if(request()->calender=="2013") selected @endif>2013</option>
                        </select>
                        </form>
                        <div class="clear30x"></div>

                        <div class="isotope_wrap" data-columns="9">
                            @foreach($disclosures as $item)

                                <div class="isotope_item isotope_item_classic isotope_item_classic_2 isotope_column_2">
                                    <div class="post_item post_item_classic post_item_classic_2 post_format_standard">
                                        <div class="post_featured">
                                            <div class="post_thumb">
                                                <a class="hover_icon hover_icon_link" href="{{route('disclosures.single', $item->id)}}"><img alt="" src="{{asset('/default1.png')}}"></a>
                                            </div>
                                            <div class="cat_post_info">
                                                <span class="post_categories"><a class="category_link" href="{{url('#')}}">Disclosures</a></span>
                                            </div>
                                        </div>
                                        <div class="post_content isotope_item_content">
                                            <h5 class="post_title"><a href="{{route('disclosures.single', $item->id)}}">{{$item['title_'.$lang]}}</a></h5>
                                            <div class="post_info">
                                                <span class="post_info_item"><a class="post_info_date" href="{{url('#')}}">{{Carbon\Carbon::parse($item->date)->translatedFormat('d F Y')}}</a></span>
                                            </div>
                                            <div class="post_descr">
                                                <p>{!! \Illuminate\Support\Str::limit(strip_tags($item['details_'.$lang]), 50) !!}</p>
                                                <a class="post_readmore readmore" href="{{route('disclosures.single', $item->id)}}">{{__('adminMessage.readmore')}}</a>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.isotope_item -->


                            @endforeach
                        </div>
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
                                <a href="{{$child->link?:route('category.singlepage', [$child->id, $child->slug])}}">{{$child->translate($lang)->title}}</a>
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
@section('script')
    <script>
        function calenderChange(){
            document.getElementById('calender').submit();
        }
    </script>
@endsection