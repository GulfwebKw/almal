@extends('website.master')
@section('content')
    <section class="top_panel_image top_panel_image_1"
             style="background-image:url(/site_assets/images/contact_bg.jpg);">
        <div class="top_panel_image_hover"></div>
        <div class="top_panel_image_header">
            <h1 class="top_panel_image_title">Contacts</h1>
            <div class="breadcrumbs">
                <a class="breadcrumbs_item home" href="/">Home</a> <span class="breadcrumbs_delimiter"></span> Contact
                Us<span class="breadcrumbs_delimiter"></span> <span class="breadcrumbs_item current">Contacts</span>
            </div>
        </div>
    </section>

    <div class="page_content_wrap page_paddings_no sidebar_hide">
        <div class="content_wrap">
            <div class="content">
                <article class="itemscope post_item post_item_single post_featured_default post_format_standard">
                    <section class="post_content">
                        <ul class="sc_section columns_wrap mtb-40">
                            <ul class="column-1_2">
                                <h3 class="sc_title sc_title_underline sc_align_center margin_bottom_null text_align_center">
                                    {{__('adminMessage.address')}}</h3>
                                <div class="sc_empty_space" data-height="3em"></div>
                                <ul class="sc_list sc_list_style_iconed">
                                    <li class="sc_list_item"><span
                                                class="sc_list_icon icon-location-light my-ico"></span>{{getSetting('setting')['address_'.$lang]}}
                                    </li>
                                    <li class="sc_list_item"><span class="sc_list_icon icon-mobile-light my-ico"></span>Phone:
                                        <span dir="ltr">{{getSetting('setting')->phone}} </span></li>
                                    <li class="sc_list_item"><span class="sc_list_icon icon-print my-ico"></span>Fax:
                                        <span dir="ltr">{{getSetting('setting')->fax}} </span></li>
                                    <li class="sc_list_item"><span class="sc_list_icon icon-mail-light my-ico"></span>Email:
                                        {{getSetting('setting')->email}}
                                    </li>
                                </ul>
                              @if($lang=='en')
                                <h4>Client’s Complaints</h4>
                                <strong>For any Complaints , kindly download and fill out the following
                                    form:</strong><br/>
                                <a href="images/Customer_Complaint_Form.pdf">Client’s Complaints</a><br/><br/>

                                <strong>Kindly fill out and sign the form and send by one of the
                                    followings:</strong><br/>

                                <ul>
                                    <li>By hand to Clients Complaints Unit at the company.</li>
                                    <li>By registered mail to company’s head of complaints to the following address:
                                        Al-Mal Investment Company,Al-Mirqab ،Khalid ibn Al-Waleed Street, MAZAYA Towers
                                        3, 12nd Floor, P.O. Box 26308, Safat-13124 Kuwait.
                                    </li>
                                    <li>By email to company’s head of complaints to the following email: <a
                                                href="mailto:complaint@almal.com.kw" target="_blank">Complaint@almal.com.kw</a>
                                    </li>
                                </ul>
                                @else
                                         <h4>شكاوى العميل</h4>
                                <strong>لأي شكوى ، يرجى تنزيل وملء النموذج التالي:</strong><br/>
                                <a href="images/Customer_Complaint_Form.pdf">شكاوى العميل</a><br/><br/>

                                <strong>يرجى تعبئة النموذج والتوقيع عليه وإرساله بإحدى الطرق التالية:</strong><br/>

                                <ul>
                                    <li>باليد لقسم شكاوي العملاء بالشركة.</li>
                                    <li>بالبريد المسجل إلى رئيس قسم الشكاوي في الشركة على العنوان التالي: شركة المال للاستثمار ، المرقاب ، شارع خالد بن الوليد ، أبراج مزايا 3 ، الطابق 12 ، ص. 26308 الصفاة 13124 الكويت
                                    </li>
                                    <li> عن طريق البريد الإلكتروني إلى رئيس قسم الشكاوى في الشركة على البريد الإلكتروني التالي: <a
                                                href="mailto:complaint@almal.com.kw" target="_blank">Complaint@almal.com.kw</a>
                                    </li>
                                </ul>
                                @endif
                                
                            </ul>
                            <div class="column-1_2">
                                @if(\Illuminate\Support\Facades\Session::has('msg'))
                                    <h4 style="background-color: #0abb87;color: white;padding: 10px;border-radius: 5px;text-align: center;">{{session()->get('msg')}}</h4>
                                @elseif($errors->any())
                                    <h4 style="background-color: #aa0000;;color: white;padding: 10px;border-radius: 5px;text-align: center;">{{$errors->first()}}</h4>
                                @endif
                                <h3 class="sc_title sc_title_underline sc_align_center margin_bottom_null text_align_center">
                                    {{__('adminMessage.sendusmessage')}}</h3>
                                <div class="sc_empty_space" data-height="3em"></div>
                                <form action="{{route('contactus.post')}}" class="sc_input_hover_default" data-formtype="form_2" method="post">
                                    @csrf
                                    <div class="sc_columns columns_wrap sc_form_info">

                                        <div class="sc_form_address column-1_1 mb-20">
                                            <div class="sc_form_item sc_form_field label_over"><input
                                                        aria-required="true"
                                                        class="sc_form_username"
                                                        name="username"
                                                        placeholder="{{__('adminMessage.name')}}"
                                                        type="text"></div>
                                        </div>

                                        <div class="column-1_1 mb-20">
                                            <div class="sc_form_item sc_form_field label_over">
                                                <input aria-required="true" class="sc_form_email" name="email"
                                                       placeholder="{{__('adminMessage.email')}}" type="text">
                                            </div>
                                        </div>
                                        <div class="column-1_1 mb-20">
                                            <select class="sc_form_item sc_form_field label_over" name="subject" id=""
                                                    style="min-width: 210px">
                                                <option value="" class="" disabled selected>{{__('adminMessage.selectsubject')}}</option>
                                                @foreach($subjects as $subject)
                                                <option value="{{$subject['title_en']}}" class="">{{$subject['title_'.$lang]}}
                                                </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="sc_form_item sc_form_message mb-20">
                                    <textarea aria-required="true" class="sc_form_message" name="message"
                                              placeholder="{{__('adminMessage.message')}}" rows="5"></textarea>
                                    </div>
                                    <div class="form-group{{ $errors->has('captcha') ? ' has-error' : '' }}" style="display:flex;align-items:center">
                                     
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
                                        
                                    </div>                                   <div class="sc_form_item sc_form_button">
                                        <button class="sc_button sc_button_style_filled sc_button_size_medium sc_button_iconed icon-paper-plane-light">
                                             {{__('adminMessage.leavereply')}}
                                        </button>
                                    </div>
                                    <div class="result sc_infobox"></div>
                                </form>
                            </div>
                    </section>
                </article>
            </div>
        </div>
        <div class="sc_section">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1229.2534752936701!2d47.988931870868626!3d29.374567554968063!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3fcf84bd6f7e7271%3A0x277dded50da4aec0!2z2KjYsdisINin2YbYrNin2LLYp9iq!5e0!3m2!1sen!2suk!4v1655890953141!5m2!1sen!2suk"
                    style="border:0; width:100%; height:400px;" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </div><!-- </.page_content_wrap> -->
@endsection
@section('script')

@endsection