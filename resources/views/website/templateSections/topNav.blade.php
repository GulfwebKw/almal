<div class="top_panel_fixed_wrap"></div>
<header class="top_panel_wrap top_panel_style_3 boxed_style scheme_original">
    <div class="top_panel_wrap_inner top_panel_inner_style_3 top_panel_position_over">
        <div class="top_panel_top">
            <div class="content_wrap clearfix" style="line-height:23px">
                <div class="top_panel_top_contact_area icon-location-light">
                    {{getSetting('setting')['address_'.$lang]}}
                </div>
                <div class="top_panel_top_open_hours icon-mail-light">
                    {{getSetting('setting')->email}}
                </div>
                <div class="top_panel_top_ophone icon-call-out">
                    {{getSetting('setting')->phone}}
                </div>
                <div class="arabic"><a href="/locale/{{$lang=='en'?'ar':'en'}}">{{$lang=='en'?'العربية':'English'}}</a></div>
                <div class="top_panel_top_socials top_panel_el">
                    <div class="sc_socials sc_socials_type_icons sc_socials_shape_square sc_socials_size_tiny">
                        @if(getSetting('setting')->social_facebook)
                        <div class="sc_socials_item"><a class="social_icons social_facebook" href="{{getSetting('setting')->social_facebook}}" target="_blank"><span class="icon-facebook"></span></a></div>
                        @endif
                        @if(getSetting('setting')->social_twitter)
                        <div class="sc_socials_item"><a class="social_icons social_twitter" href="{{getSetting('setting')->social_twitter}}" target="_blank"><span class="icon-twitter"></span></a></div>
                            @endif
                        @if(getSetting('setting')->social_google_plus)
                        <div class="sc_socials_item"><a class="social_icons social_gplus" href="{{getSetting('setting')->social_google_plus}}" target="_blank"><span class="icon-gplus"></span></a></div>
                            @endif
                        @if(getSetting('setting')->social_linkedin)
                        <div class="sc_socials_item"><a class="social_icons social_linkedin" href="{{getSetting('setting')->social_linkedin}}" target="_blank"><span class="icon-linkedin"></span></a></div>
                            @endif
                        @if(getSetting('setting')->social_instagram)
                        <div class="sc_socials_item"><a class="social_icons social_instagram" href="{{getSetting('setting')->social_instagram}}" target="_blank"><span class="icon-instagramm"></span></a></div>
                            @endif
                    </div>
                </div>
            </div>
        </div>
        <div class="top_panel_middle">
            <div class="content_wrap">
                <div class="contact_logo">
                    <div class="logo">
                        <a href="/"><img width="200" alt="" class="logo_main" src="{{'/uploads/settings/'. getSetting('setting')->logo}}"> <img alt="" class="logo_fixed" src="{{'/uploads/settings/'. getSetting('setting')->logo}}"></a>
                    </div>
                </div>
                <div class="menu_main_wrap">
                    <nav class="menu_main_nav_area menu_hover_fade">
                        <ul class="menu_main_nav" id="menu_main">
                            <li class="menu-item current-menu-ancestor current-menu-parent">
                                <a href="/"><span>@if($lang=='en')Home @else الرئيسية @endif</span></a>
                            </li>
                            @foreach($categories as $category)
                                <li class="menu-item menu-item-has-children">
                                    <a href="{{$category->link?:route('category.singlepage', [$category->id, $category->slug])}}"><span>{{$category->translate($lang)->title}}</span></a>
                                    @if(count($category->childrenRecursive))
                                        <ul class="sub-menu">
                                            @foreach($category->childrenRecursive as $child)
                                                <li class="menu-item">
                                                    <a href="{{$child->link?:route('category.singlepage', [$child->id, $child->slug])}}"><span>{{$child->translate($lang)->title}}</span></a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    @endif
                                </li>
                            @endforeach
                        </ul>
                    </nav>
                    <div class="search_wrap search_style_fullscreen search_state_closed top_panel_el top_panel_icon">
                        <div class="search_form_wrap">
{{--                            <form action="#" class="search_form" method="get">--}}
{{--                                <button class="search_submit icon-search-light" type="submit"></button> <input class="search_field" name="s" placeholder="Search" type="text" value=""> <a class="search_close icon-1460034721_close"></a>--}}
{{--                            </form>--}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="header_mobile header_mobile_style_3 boxed_style">
    <div class="content_wrap">
        <div class="menu_button icon-menu"></div>
        <div class="logo">
            <a href="index.html"><img alt="" class="logo_main" src="{{'/uploads/settings/'. getSetting('setting')->logo}}"></a>
        </div>
    </div>
    <div class="side_wrap">
        <div class="close">
            Close
        </div>
        <div class="panel_top">
            <nav class="menu_main_nav_area">
                <ul class="menu_main_nav" id="menu_mobile">
                    <li class="menu-item current-menu-ancestor current-menu-parent"><a href="/"><span>Home</span></a></li>
                    @foreach($categories as $category)
                        <li class="menu-item menu-item-has-children">
                            <a href="{{$category->link?:route('category.singlepage', [$category->id, $category->slug])}}"><span>{{$category->translate($lang)->title}}</span></a>
                            @if($category->childrenRecursive)
                                <ul class="sub-menu">
                                    @foreach($category->childrenRecursive as $child)
                                        <li class="menu-item">
                                            <a href="{{$child->link?:route('category.singlepage', [$child->id, $child->slug])}}"><span>{{$child->translate($lang)->title}}</span></a>
                                        </li>
                                    @endforeach
                                </ul>
                            @endif
                        </li>
                    @endforeach

                    <li class="menu-item arabic_mob"><a href="#"><span>العربية</span></a></li>
                </ul>
            </nav>
            <div class="search_wrap search_state_fixed search_ajax">
                <div class="search_form_wrap">
                    <form action="#" class="search_form" method="get">
                        <button class="search_submit icon-search-light" type="submit"></button> <input class="search_field" name="s" placeholder="Search" type="text" value="">
                    </form>
                </div>
                <div class="search_results widget_area scheme_original">
                    <a class="search_results_close icon-cancel"></a>
                    <div class="search_results_content"></div>
                </div>
            </div>
        </div>
        <div class="panel_middle">
            <div class="contact_field contact_phone">
                <span class="contact_icon icon-call-out"></span> <span class="contact_label contact_phone">{{getSetting('setting')->phone}}</span>

            <div class="top_panel_top_open_hours icon-mail-light">{{getSetting('setting')->email}}</div>
        </div>
        <div class="panel_bottom">
            <div class="contact_socials">

                <div class="sc_socials sc_socials_type_icons sc_socials_shape_square sc_socials_size_small">


                    @if(getSetting('setting')->social_facebook)
                        <div class="sc_socials_item"><a class="social_icons social_facebook" href="{{getSetting('setting')->social_facebook}}" target="_blank"><span class="icon-facebook"></span></a></div>
                    @endif
                    @if(getSetting('setting')->social_twitter)
                        <div class="sc_socials_item"><a class="social_icons social_twitter" href="{{getSetting('setting')->social_twitter}}" target="_blank"><span class="icon-twitter"></span></a></div>
                    @endif
                    @if(getSetting('setting')->social_google_plus)
                        <div class="sc_socials_item"><a class="social_icons social_gplus" href="{{getSetting('setting')->social_google_plus}}" target="_blank"><span class="icon-gplus"></span></a></div>
                    @endif
                    @if(getSetting('setting')->social_linkedin)
                        <div class="sc_socials_item"><a class="social_icons social_linkedin" href="{{getSetting('setting')->social_linkedin}}" target="_blank"><span class="icon-linkedin"></span></a></div>
                    @endif
                    @if(getSetting('setting')->social_instagram)
                        <div class="sc_socials_item"><a class="social_icons social_instagram" href="{{getSetting('setting')->social_instagram}}" target="_blank"><span class="icon-instagramm"></span></a></div>
                    @endif


                </div>
            </div>
        </div>
    </div>
    <div class="mask"></div>
</div>
</div>