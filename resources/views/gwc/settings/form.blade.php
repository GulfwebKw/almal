@extends('gwc.template.formTemplate')

@section('formContent')
    <form name="tFrm" action="{{route($data['updateRoute'])}}" id="form_validation" method="post" class="kt-form" enctype="multipart/form-data">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">

        <div class="row">
            <div class="col-md-12">
                <!-- begin::Portlet -->
                <div class="kt-portlet">
                    <div class="kt-portlet__head">
                        <div class="kt-portlet__head-label">
                            <h3 class="kt-portlet__head-title">
                                {{__('adminMessage.storedetails')}}
                            </h3>
                        </div>
                    </div>

                    <!-- begin portlet body -->
                    <div class="kt-portlet__body">

                        <!-- is language active -->
                        @component('gwc.components.isLanguageActive', [
                            'label' => 'Show Language Button',
                            'name' => 'is_lang',
                            'value' => $resource->is_lang
                        ]) @endcomponent

                        <br><br>

                        <!-- logo -->
                        <div class="form-group">
                            <div class="row">
                                @php $label = "Logo"; @endphp
                                @php $field = 'logo'; @endphp
                                @component('gwc.components.editImageUpload', [
                                    'label' => $label,
                                    'name' => $field,
                                    'value' => $resource->$field,
                                    'required' => true,
                                    'folder' => $data['imageFolder'] . '/thumb/',
                                    'deletePath' => 'gwc/' . $data['path'] . '/deleteimage/' . $field,
                                ]) @endcomponent
                            </div>
                        </div>

                        <!-- email logo -->
                        <div class="form-group">
                            <div class="row">
                                @php $label = "Email Logo"; @endphp
                                @php $field = 'email_logo'; @endphp
                                @component('gwc.components.editImageUpload', [
                                    'label' => $label,
                                    'name' => $field,
                                    'value' => $resource->$field,
                                    'required' => true,
                                    'folder' => $data['imageFolder'] . '/thumb/',
                                    'deletePath' => 'gwc/' . $data['path'] . '/deleteimage/' . $field,
                                ]) @endcomponent
                            </div>
                        </div>

                        <!-- favicon -->
                        <div class="form-group">
                            <div class="row">
                                @php $label = "Favicon"; @endphp
                                @php $field = 'favicon'; @endphp
                                @component('gwc.components.editImageUpload', [
                                    'label' => $label,
                                    'name' => $field,
                                    'value' => $resource->$field,
                                    'required' => true,
                                    'folder' => $data['imageFolder'] . '/thumb/',
                                    'deletePath' => 'gwc/' . $data['path'] . '/deleteimage/' . $field,
                                ]) @endcomponent
                            </div>
                        </div>

                        <!-- favicon -->
                        <div class="form-group">
                            <div class="row">
                                @php $label = "Footer Logo"; @endphp
                                @php $field = 'footer_logo'; @endphp
                                @component('gwc.components.editImageUpload', [
                                    'label' => $label,
                                    'name' => $field,
                                    'value' => $resource->$field,
                                    'required' => true,
                                    'folder' => $data['imageFolder'] . '/thumb/',
                                    'deletePath' => 'gwc/' . $data['path'] . '/deleteimage/' . $field,
                                ]) @endcomponent
                            </div>
                        </div>

                        <br><br><br>

                        <div class="form-group ">
                            <h5>{{__('adminMessage.seo')}}</h5>
                        </div>

                        <!-- seo description en -->
                        <div class="form-group">
                            @component('gwc.components.editTextInput', [
                                'label' => 'SEO Description (en)',
                                'name' => 'seo_description_en',
                                'value' => $resource->seo_description_en,
                                'required' => true,
                            ]) @endcomponent
                        </div>

                        <!-- seo description ar -->
                        <div class="form-group">
                            @component('gwc.components.editTextInput', [
                                'label' => 'SEO Description (ar)',
                                'name' => 'seo_description_ar',
                                'value' => $resource->seo_description_ar,
                                'required' => true,
                            ]) @endcomponent
                        </div>

                        <!-- seo keywords en -->
                        <div class="form-group">
                            @component('gwc.components.editTextInput', [
                                'label' => 'SEO Keywords (en)',
                                'name' => 'seo_keywords_en',
                                'value' => $resource->seo_keywords_en,
                                'required' => true,
                            ]) @endcomponent
                        </div>

                        <!-- seo keywords ar -->
                        <div class="form-group">
                            @component('gwc.components.editTextInput', [
                                'label' => 'SEO Keywords (ar)',
                                'name' => 'seo_keywords_ar',
                                'value' => $resource->seo_keywords_ar,
                                'required' => true,
                            ]) @endcomponent
                        </div>

                        <br><br><br>

                        <div class="form-group ">
                            <h5>{{__('adminMessage.site_name')}}</h5>
                        </div>

                        <!-- website name -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    @component('gwc.components.editTextInput', [
                                        'label' => 'Name (en)',
                                        'name' => 'name_en',
                                        'value' => $resource->name_en,
                                        'required' => true
                                    ]) @endcomponent
                                </div>
                                <div class="col-md-6">
                                    @component('gwc.components.editTextInput', [
                                        'label' => 'Name (ar)',
                                        'name' => 'name_ar',
                                        'value' => $resource->name_ar,
                                        'required' => true
                                    ]) @endcomponent
                                </div>
                            </div>
                        </div>

                        <br><br><br>

                        <div class="form-group ">
                            <h5>{{__('adminMessage.address')}}</h5>
                        </div>

                        <!-- Address -->
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6">
                                    @component('gwc.components.editTextInput', [
                                        'label' => 'Address (en)',
                                        'name' => 'address_en',
                                        'value' => $resource->address_en,
                                        'required' => true
                                    ]) @endcomponent
                                </div>
                                <div class="col-md-6">
                                    @component('gwc.components.editTextInput', [
                                        'label' => 'Address (ar)',
                                        'name' => 'address_ar',
                                        'value' => $resource->address_ar,
                                        'required' => true
                                    ]) @endcomponent
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <!-- Email -->
                                <div class="col-md-6">
                                    @component('gwc.components.editTextInput', [
                                        'label' => 'Email',
                                        'name' => 'email',
                                        'value' => $resource->email
                                    ]) @endcomponent
                                </div>
                                <!-- Mobile -->
                                <div class="col-md-6">
                                    @component('gwc.components.editTextInput', [
                                        'label' => 'Mobile',
                                        'name' => 'mobile',
                                        'value' => $resource->mobile
                                    ]) @endcomponent
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="row">
                                <!-- Phone -->
                                <div class="col-md-6">
                                    @component('gwc.components.editTextInput', [
                                        'label' => 'Phone',
                                        'name' => 'phone',
                                        'value' => $resource->phone
                                    ]) @endcomponent
                                </div>
                                <!-- Fax -->
                                <div class="col-md-6">
                                    @component('gwc.components.editTextInput', [
                                        'label' => 'Fax',
                                        'name' => 'fax',
                                        'value' => $resource->fax
                                    ]) @endcomponent
                                </div>
                            </div>
                        </div>

                        <br><br><br>

                        <div class="form-group">
                            <h5>{{__('adminMessage.fromemailandname')}}</h5>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <!-- From Email -->
                                <div class="col-md-6">
                                    @component('gwc.components.editTextInput', [
                                        'label' => 'From Email',
                                        'name' => 'from_email',
                                        'value' => $resource->from_email,
                                        'required' => true
                                    ]) @endcomponent
                                </div>
                                <!-- From Name -->
                                <div class="col-md-6">
                                    @component('gwc.components.editTextInput', [
                                        'label' => 'From Name',
                                        'name' => 'from_name',
                                        'value' => $resource->from_name,
                                        'required' => true
                                    ]) @endcomponent
                                </div>
                            </div>
                        </div>

                        <br><br><br>

                        <div class="form-group ">
                            <h5>{{__('adminMessage.sociallinks')}}</h5>
                        </div>

                        <!-- google plus -->
                        <div class="form-group">
                            @component('gwc.components.editTextInput', [
                                'label' => 'Google Plus',
                                'name' => 'social_google_plus',
                                'value' => $resource->social_google_plus
                            ]) @endcomponent
                        </div>

                        <!-- facebook -->
                        <div class="form-group">
                            @component('gwc.components.editTextInput', [
                                'label' => 'Facebook',
                                'name' => 'social_facebook',
                                'value' => $resource->social_facebook
                            ]) @endcomponent
                        </div>

                        <!-- twitter -->
                        <div class="form-group">
                            @component('gwc.components.editTextInput', [
                                'label' => 'Twitter',
                                'name' => 'social_twitter',
                                'value' => $resource->social_twitter
                            ]) @endcomponent
                        </div>

                        <div class="form-group">
                            @component('gwc.components.editTextInput', [
                                'label' => 'Instagram',
                                'name' => 'social_instagram',
                                'value' => $resource->social_instagram
                            ]) @endcomponent
                        </div>

                        <!-- linked in -->
                        <div class="form-group">
                            @component('gwc.components.editTextInput', [
                                'label' => 'Linked in',
                                'name' => 'social_linkedin',
                                'value' => $resource->social_linkedin
                            ]) @endcomponent
                        </div>

                        {{--    Google Analytics--}}
{{--    <div class="form-group">--}}
{{--        <div class="row">--}}
{{--            <div class="col-md-12">--}}
{{--                @component('gwc.components.editTextarea', [--}}
{{--                    'label' => 'Google Analytics Embed Code',--}}
{{--                    'name' => 'google_analytics',--}}
{{--                    'value' => $resource->google_analytics,--}}
{{--                    'required' => true--}}
{{--                ]) @endcomponent--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}

{{--    <div class="form-group">--}}
{{--        <h4>{{__('adminMessage.pushnotificationsetting')}}</h4>--}}
{{--    </div>--}}

{{--    Push Notification--}}
{{--    <div class="form-group">--}}
{{--        @component('gwc.components.editTextInput', [--}}
{{--            'label' => 'Push Notification Settings',--}}
{{--            'name' => 'web_server_key',--}}
{{--            'value' => $resource->web_server_key,--}}
{{--            'required' => true--}}
{{--        ]) @endcomponent--}}
{{--    </div>--}}

                    </div>
                    <!-- end portlet body -->



                    <!-- begin portlet foot -->
                    @component('gwc.templateIncludes.formFooter') @endcomponent
                    <!-- end portlet foot -->

                </div>
                <!--end::Portlet-->
            </div>
        </div>

    </form>
@endsection