<footer class="footer_wrap widget_area scheme_dark">
    <div class="footer_wrap_inner widget_area_inner">
        <div class="content_wrap">
            <div class="columns_wrap">
                <aside class="column-1_3 widget widget_socials">
                    <div class="widget_inner">
                        <div class="logo">
                            <a href="/"><img alt="" class="logo_main" src="{{asset('/uploads/settings/'. getSetting('setting')->footer_logo)}}"></a>
                        </div>
                        <div class="logo_descr">
                            <ul class="sc_list sc_list_style_iconed custom_cl_1">
                                <li class="sc_list_item"><span class="sc_list_icon icon-location-light custom_cl_2"></span>{{getSetting('setting')['address_'.$lang]}}</li>
                                <li class="sc_list_item"><span class="sc_list_icon icon-mobile-light custom_cl_2"></span>Phone: {{getSetting('setting')->phone}}</li>
                                <li class="sc_list_item"><span class="sc_list_icon icon-mail-light custom_cl_2"></span>Email: {{getSetting('setting')->email}}</li>
                            </ul>
                        </div>
                    </div>
                </aside>
                <aside class="column-1_3 widget widget_recent_posts">
                    <h5 class="widget_title">{{__('adminMessage.quicklink')}}</h5>
                    <ul>
                        @foreach($quicklinks as $link)
                        <li><a href="{{route('category.singlepage',[$link['category']->id, $link['category']->slug])}}">{{$link['title_'.$lang]?:$link['category']->translate($lang)->title}}</a></li>
                        @endforeach
                    </ul>
                </aside>
                <aside class="column-1_3 widget widget_text">
                    <h5 class="widget_title" style="margin: 0">{{__('adminMessage.contactform')}}</h5>
                    <div class="textwidget">
                        <div class="sc_form_wrap">
                            <div class="sc_form_style_form_1" id="sc_form_1">
                                @if(\Illuminate\Support\Facades\Session::has('msg') &&request()->path()!='contact-us'&&request()->segment('2')!='available-vacancies')
                                    <h4 style="background-color: #0abb87;color: white;padding: 10px;border-radius: 5px;text-align: center;">{{session()->get('msg')}}</h4>
                                @elseif($errors->any()&&request()->path()!='contact-us')
                                    <h4 style="background-color: #aa0000;;color: white;padding: 10px;border-radius: 5px;text-align: center;">{{$errors->first()}}</h4>
                                @endif
                                <form action="{{route('contactus.post')}}" class="sc_input_hover_default d-pt-1" data-formtype="form_1" method="post">
                                    @csrf
                                    <div class="sc_form_info">
                                        <div class="sc_form_item sc_form_field">
                                            <input aria-required="true" class="sc_form_username" name="username" placeholder="{{__('adminMessage.name')}}" type="text">
                                        </div>
                                        <div class="sc_form_item sc_form_field">
                                            <input aria-required="true" class="sc_form_email" name="email" placeholder="{{__('adminMessage.email')}}" type="text">
                                        </div>
                                    </div>
                                    <div class="sc_form_item sc_form_message">
                                        <textarea aria-required="true" class="sc_form_message" name="message" placeholder="{{__('adminMessage.message')}}"></textarea>
                                    </div>
                                    <div class="form-group{{ $errors->has('captcha') ? ' has-error' : '' }}" style="display: flex;align-items: center">
                                            <div style="padding: 0 10px;" class="captcha col-md-6">
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
                                    <div style="text-align:left" class="sc_form_item sc_form_button">
                                        <button class="sc_button sc_button_style_filled sc_button_size_medium sc_button_iconed icon-mail-light">{{__('adminMessage.sendmessage')}}</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</footer>
<div class="copyright_wrap copyright_style_soc scheme_dark">
    <div class="copyright_wrap_inner">
        <div class="content_wrap">
            <p class="text-left">Copyright 2021 © AL MAL INVESTMENT COMPANY (KPSC) All rights reserved</p>
        </div>
    </div>
</div>

<script>
    $(".btn-refresh").click(function(){
        $.ajax({
            type:'GET',
            url:'/refresh_captcha',
            success:function(data){
                $(".captcha span").html(data.captcha);
            }
        });
    });
</script>