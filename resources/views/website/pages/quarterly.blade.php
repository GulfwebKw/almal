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
        <div class="content_wrap">
            <div class="content">
                <article class="itemscope post_item post_item_single post_featured_default post_format_gallery">
                    <section class="post_content">
                        <form action="/quarterly" method="get" id="calender">
                            <select name="calender" class="select_box" onchange="calenderChange()">
                                <option @if(request()->calender==null) selected @endif value="">{{ app()->getLocale() == 'en' ? '--All--' : '--الكل--' }}</option>
                                <option @if(request()->calender=="2022") selected @endif value="2022">2022</option>
                                <option @if(request()->calender=="2021") selected @endif value="2021">2021</option>
                                <option @if(request()->calender=="2020") selected @endif value="2020">2020</option>
                                <option @if(request()->calender=="2019") selected @endif value="2019">2019</option>
                                <option @if(request()->calender=="2018") selected @endif value="2018">2018</option>
                                <option @if(request()->calender=="2017") selected @endif value="2017">2017</option>
                                <option @if(request()->calender=="2016") selected @endif value="2016">2016</option>
                                <option @if(request()->calender=="2015") selected @endif value="2015">2015</option>
                                <option @if(request()->calender=="2014") selected @endif value="2014">2014</option>
                                <option @if(request()->calender=="2013") selected @endif value="2013">2013</option>
                                <option @if(request()->calender=="2012") selected @endif value="2012">2012</option>
                                <option @if(request()->calender=="2011") selected @endif value="2011">2011</option>
                                <option @if(request()->calender=="2010") selected @endif value="2010">2010</option>
                            </select>
                        </form>

                        <div class="clear30x"></div>

                        <div class="isotope_wrap" data-columns="9">
                            @foreach($quarterlys as $item)
                            <div class="isotope_item isotope_item_classic isotope_item_classic_4 isotope_column_4">
                                <div style="text-align: center" class="post_item post_item_classic post_item_classic_3 post_format_standard annual">
                                    @php $params = app()->getLocale() == 'en' ? [$item->id] : [$item->id, 'lang' => 'ar']; @endphp
                                    <a href="{{route('quarterly.download', $params)}}" target="_blank">
                                        @if(app()->getLocale() == 'en')
                                            <img src="{{asset('/quarterly_en.jpg')}}" alt="quarterly_en">
                                        @else
                                            <img src="{{asset('/quarterly_ar.jpg')}}" alt="quarterly_ar">
                                        @endif
                                        <div class="annu_date">{{Carbon\Carbon::parse($item->date)->translatedFormat('d F Y')}}</div>
                                    </a>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </section>
                </article>

            </div>
           <div class="sidebar widget_area scheme_original">
                <div class="sidebar_inner widget_area_inner">
                    <aside class="widget widget_categories">
                        @if(count($children))
                     <h5 class="widget_title">{{$children[0]['parent']?$children[0]['parent']->translate($lang)->title:$children[0]->translate($lang)->title}}</h5>
                        <ul>
                            @foreach($children as $child)
                                <li class="cat-item">
                                    <a href="{{$child->link?url($child->link):route('category.singlepage', [$child->id, $child->slug])}}"><span>{{$child->translate($lang)->title}}</span></a>
                                </li>
                            @endforeach
                        </ul>
                        @endif
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