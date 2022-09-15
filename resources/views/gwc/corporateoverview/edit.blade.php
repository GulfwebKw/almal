@extends('gwc.template.editTemplate')
@section('editContent')
    <form name="tFrm" id="form_validation" method="post" class="kt-form" enctype="multipart/form-data"
          action="{{route($data['updateRoute'],$resource->id)}}">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <div class="kt-portlet__body">

            <!-- title -->
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        @component('gwc.components.editTextInput', [
                            'label' => 'Title (en)',
                            'name' => 'title_en',
                            'value' => $resource->title_en,
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.editTextInput', [
                            'label' => 'Title (ar)',
                            'name' => 'title_ar',
                            'value' => $resource->title_ar,
                            'required' => true
                        ]) @endcomponent
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">

                    <div class="col-md-6">
                        @component('gwc.components.editTextarea', [
                            'label' => 'Short Details (en)',
                            'name' => 'short_details_en',
                            'value'=> $resource->short_description_en,
                            'required' => true
                        ]) @endcomponent
                    </div>

                    <div class="col-md-6">
                        @component('gwc.components.editTextarea', [
                            'label' => 'Short Details (ar)',
                            'name' => 'short_details_ar',
                            'value'=> $resource->short_description_ar,
                            'required' => true
                        ]) @endcomponent
                    </div>

                </div>
            </div>

            <!-- Details -->
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        @component('gwc.components.editTinyMce', [
                            'label' => 'Details (en)',
                            'name' => 'details_en',
                            'value' => $resource->description_en,
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.editTinyMce', [
                            'label' => 'Details (ar)',
                            'name' => 'details_ar',
                            'value' => $resource->description_ar,
                            'required' => true
                        ]) @endcomponent
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-4">
                        @component('gwc.components.editTextInput', [
                            'label' => 'Name',
                            'name' => 'name',
                            'value' => $resource->name,
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-lg-8">
                        <div class="form-group row">
                            <!-- is active? -->
                            <label class="col-3 col-form-label">{{__('adminMessage.isactive')}}</label>
                            <div class="col-3">
                                @component('gwc.components.editIsActive', [
									'value' => $resource->is_active
								]) @endcomponent
                            </div>
                            <!-- display order -->
                            <label class="col-3 col-form-label">{{__('adminMessage.displayorder')}}</label>
                            <div class="col-3">
                                @component('gwc.components.editDisplayOrder', [
                                    'lastOrder' => $resource->display_order
                                ]) @endcomponent
                            </div>
                        </div>
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
                        ]) @endcomponent
                    </div>
                    <div class="col-lg-6">
                        <img width="100" src="{{asset('/uploads/corporateoverview/'.$resource->image)}}" alt="">

                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-lg-6">
                        <!-- image -->
                        @php $label = "Top Image"; @endphp
                        @php $field = 'image_top'; @endphp
                        @component('gwc.components.createImageUpload', [
                            'label' => $label,
                            'name' => $field,
                        ]) @endcomponent
                    </div>

                    <div class="col-lg-6">
                        <img width="100" src="{{asset('/uploads/corporateoverview/'.$resource->image_top)}}" alt="">
                    </div>

                </div>
            </div>


        </div>

        @component('gwc.templateIncludes.createEditFooter', ['url' => $data['url']]) @endcomponent

    </form>
@endsection
