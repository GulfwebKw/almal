@extends('gwc.template.createTemplate')

@section('createContent')
    <form name="tFrm" id="form_validation" method="post" class="kt-form" enctype="multipart/form-data" action="{{url('gwc/categorycountrey/post')}}">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <div class="kt-portlet__body">

            <!-- title -->
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        @component('gwc.components.createTextInput', [
                            'label' => 'country name (en)',
                            'name' => 'country_name_en',
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.createTextInput', [
                            'label' => 'country name (ar)',
                            'name' => 'country_name_ar',
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-4">
                        @component('gwc.components.createTextInput', [
                            'label' => 'country code',
                            'name' => 'country_code',
                            'type' => 'number',
                            'required' => true
                        ]) @endcomponent
                    </div>
                </div>
            </div>

        <div class="form-group">
            <div class="row">
                <div class="col-lg-6">
                    <!-- image -->
                    @php $label = "Image"; @endphp
                    @php $field = 'image'; @endphp
                    @component('gwc.components.createImageUpload', [
                        'label' => $label,
                        'name' => $field,
                        'required' => true
                    ]) @endcomponent
                </div>
            </div>
        </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group row">
                            <!-- is active? -->
                            <label class="col-3 col-form-label">{{__('adminMessage.isactive')}}</label>
                            <div class="col-3">
                                @component('gwc.components.createIsActive') @endcomponent
                            </div>
                            <!-- display order -->
                            <label class="col-3 col-form-label">{{__('adminMessage.displayorder')}}</label>
                            <div class="col-3">
                                @component('gwc.components.createDisplayOrder', [
                                    'lastOrder' => $lastOrder
                                ]) @endcomponent
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
        </div>

        @component('gwc.templateIncludes.createEditFooter', ['url' => $data['url']]) @endcomponent

    </form>
@endsection