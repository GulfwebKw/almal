@extends('website.master')

@section('content')
@php
$rs = 7
@endphp
    <section class="slider_wrap slider_fullwide slider_engine_revo slider_alias_home-2">
        <div class="rev_slider_wrapper fullscreen-container" id="rev_slider_3_1_wrapper">
            <div class="rev_slider fullscreenbanner" data-version="5.2.6" id="rev_slider_3_1">
                <ul>
                    @foreach($slideshows as $key=>$slideshow)
                 
                    <li style="cursor: pointer" onclick="window.location.href ='{{$slideshow->link}}'" data-description="" data-easein="default,default,default,default"
                        data-easeout="default,default,default,default" data-hideafterloop="0"
                        data-hideslideonmobile="off" data-index="{{'rs-'. (($key*3) + $rs)}}"
                        data-masterspeed="default,default,default,default" data-param1="" data-param10="" data-param2=""
                        data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8=""
                        data-param9="" data-rotate="0,0,0,0" data-saveperformance="off"
                        data-slotamount="default,default,default,default" data-thumb="images/slide2.jpg"
                        data-title="Slide"
                        data-transition="slidingoverlayup,slidingoverlaydown,slidingoverlayright,slidingoverlayleft">
                        <img alt="" class="rev-slidebg" data-bgfit="cover" data-bgposition="center center"
                             data-bgrepeat="no-repeat" data-no-retina="" src="{{asset('/uploads/slideshows/'.$slideshow->image)}}" title="Slide">
                        <div class="tp-caption trx-big-dark tp-resizeme" data-end="8700" data-height="['auto']"
                             data-responsive_offset="on" data-splitin="none" data-splitout="none" data-start="900"
                             data-transform_idle="o:1;" data-transform_in="opacity:0;s:800;e:Power2.easeInOut;"
                             data-transform_out="opacity:0;s:600;" data-voffset="-40" data-width="['auto']" data-x="30"
                             data-y="center" id="slide-10-layer-1">
                            {{$slideshow['title_'.$lang]}}
                        </div>
                        <div class="tp-caption trx-norm-dark tp-resizeme" data-end="8700" data-height="['auto']"
                             data-responsive_offset="on" data-splitin="none" data-splitout="none" data-start="900"
                             data-transform_idle="o:1;" data-transform_in="opacity:0;s:800;e:Power2.easeInOut;"
                             data-transform_out="opacity:0;s:600;" data-visibility="['on','on','on','off']"
                             data-voffset="76" data-width="['auto']" data-x="30" data-y="center" id="slide-10-layer-2">
                            {!! html_entity_decode($slideshow['description_'.$lang]) !!}
                        </div>
                        <div class="tp-caption trx-no-css tp-resizeme" data-end="8700" data-height="['auto']"
                             data-responsive_offset="on" data-splitin="none" data-splitout="none" data-start="900"
                             data-transform_idle="o:1;" data-transform_in="opacity:0;s:800;e:Power2.easeInOut;"
                             data-transform_out="opacity:0;s:600;" data-visibility="['on','on','off','off']"
                             data-voffset="167" data-width="['auto']" data-x="30" data-y="center" id="slide-10-layer-3">
                            <a class="sc_button sc_button_style_filled sc_button_size_medium" href="{{$slideshow->link}}">Read
                                more</a>
                        </div>
                    </li>
                    @endforeach
                </ul>
                <div class="tp-bannertimer"></div>
            </div>
        </div><!-- END REVOLUTION SLIDER -->
    </section>


    <div class="page_content_wrap page_paddings_no">
        <div class="sc_section custom_bg_2">
            <div class="content_wrap">
                <div class="sc_empty_space" data-height="2.2em"></div>
                <div class="sc_section margin_top_huge margin_bottom_huge">
                    <div class="sc_section_inner">
                        <h2 class="sc_section_title sc_item_title">{{$corporate_overview['title_'.$lang]}}</h2>
                        <div class="sc_section_descr sc_item_descr">
                            {{$corporate_overview['short_description_'.$lang]}}
                        </div>
                        <div class="sc_empty_space" data-height="0.7em"></div>
                        <div class="columns_wrap sc_columns margin_top_tiny">
                            <div class="column-1_2 sc_column_item">
                                <figure class="sc_image style_img">
                                    <img alt="" class="first" src="{{asset('/uploads/corporateoverview/'.$corporate_overview->image_top)}}"> <img alt="" class="second"
                                                                                               src="{{asset('/uploads/corporateoverview/'.$corporate_overview->image)}}">
                                </figure>
                            </div>
                            <div class="column-1_2 sc_column_item">
                                <div class="sc_empty_space" data-height="1.5em"></div>
                                {!! $corporate_overview['description_'.$lang] !!}
                                <a class="sc_button sc_button_style_filled sc_button_size_medium margin_top_small margin_bottom_small"
                                   href="/category/23/Corporate-Overview">{{__('adminMessage.readmore')}}</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sc_empty_space" data-height="2em"></div>
            </div>
        </div>
        <div class="sc_section">
            <div class="content_wrap">
                <div class="sc_empty_space" data-height="2em"></div>
                <div class="sc_services_wrap">
                    <div class="sc_services sc_services_style_services-1 sc_services_type_icons_img margin_top_huge margin_bottom_huge">
                        <h2 class="sc_services_title sc_item_title">{{$our_business['title_'.$lang]}}</h2>
                        <div class="sc_services_descr sc_item_descr">
                            {!! $our_business['details_'.$lang] !!}
                        </div>
                        <div class="sc_columns columns_wrap">
                            @foreach($services as $item)
                            <div class="column-1_3 column_padding_bottom">
                                <div class="sc_services_item">
                                    <div class="top_post_image">
                                        <a ><img alt="" class="services-post-image"
                                                                           src="{{asset('/uploads/services/'.$item->icon)}}"></a>
                                    </div>
                                    <div class="sc_services_item_content">
                                        <h4 class="sc_services_item_title"><a >{{$item['title_'.$lang]}}</a></h4>
                                        <div class="sc_services_item_description">
                                          {!! $item['details_'.$lang] !!}
                                        </div>
                                        <div class="sc_services_item_decoration"></div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div><!-- /.sc_services_wrap -->
        </div>
        <div class="sc_section custom_bg_2">
            <div class="content_wrap">
                <div class="sc_empty_space" data-height="2em"></div>
                <div class="sc_blogger layout_classic_3 template_masonry no_padding_post margin_top_huge margin_bottom_huge sc_blogger_horizontal">
                    <h2 class="sc_blogger_title sc_item_title">{{$news_events['title_'.$lang]}}</h2>
                    <div class="sc_blogger_descr sc_item_descr">
                        {!! $news_events['details_'.$lang] !!}
                    </div>
                    <div class="isotope_wrap" data-columns="3">
                        @foreach($NewsEvents as $item)
                        <div class="isotope_item isotope_item_classic isotope_item_classic_3 isotope_column_3">
                            <div class="post_item post_item_classic post_item_classic_3 post_format_standard">
                                <div class="post_featured">
                                    <div class="post_thumb">
                                        <a class="hover_icon hover_icon_link" href="{{route('news.singlepage', [$item->id, $item->slug])}}"><img alt=""
                                                                                                             src="{{asset('/uploads/news/'.explode(',',$item->images)[0])}}"></a>
                                    </div>
                                    <div class="cat_post_info">
                                        <span class="post_categories"><a class="category_link" href="{{url('#')}}">News</a></span>
                                    </div>
                                </div>
                                <div class="post_content isotope_item_content">
                                    <h5 class="post_title"><a href="{{route('news.singlepage', [$item->id, $item->slug])}}">{{$item['title_'.$lang]}}</a></h5>
                                    <div class="post_info">
                                        <span class="post_info_item"><a class="post_info_date"
                                                                        href="{{url('#')}}">{{$item->created_at}}</a></span>
                                    </div>
                                    <div class="post_descr">
                                     {!! $item['description_'.$lang] !!}
                                        <div><a class="post_readmore readmore" href="{{route('news.singlepage',[$item->id, $item->slug])}}">{{__('adminMessage.readmore')}}</a></div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.isotope_item -->
                        @endforeach
                    </div>
                    <div class="sc_blogger_button sc_item_button">
                        <a class="sc_button sc_button_style_border sc_button_size_medium" href="{{route('news.events')}}">{{__('adminMessage.viewmorepost')}}</a>
                    </div>
                </div>
                <div class="sc_empty_space" data-height="2.3em"></div>
            </div>
        </div>
        <div class="sc_section">
            <div class="content_wrap">
                <div class="sc_empty_space" data-height="1.8em"></div>
                <div class="sc_clients_wrap">
                    <div class="sc_clients sc_clients_style_clients-1 margin_top_huge margin_bottom_huge">
                        <h2 class="sc_clients_title sc_item_title">{{$subsidiaries_associates['title_'.$lang]}}</h2>
                        <div class="sc_clients_descr sc_item_descr">
                           {!! $subsidiaries_associates['details_'.$lang] !!}
                        </div>
                        <div class="sc_columns columns_wrap">
                            @foreach($subsidiaries as $item)
                            <div class="column-1_6 column_padding_bottom">
                                <div class="sc_clients_item">
                                    <div class="sc_client_image"><img alt="" src="{{asset('/uploads/subsidiaries/'.$item->image)}}"></div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div><!-- /.sc_clients -->
                </div>
            </div>
            @endsection

@section('script')
 <script src='{{asset('/site_assets/js/vendor/swiper/swiper.js')}}' type='text/javascript'></script>
@endsection