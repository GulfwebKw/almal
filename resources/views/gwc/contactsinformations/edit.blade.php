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
                            'value' =>$resource->title_en,
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.editTextInput', [
                            'label' => 'Title (ar)',
                            'name' => 'title_ar',
                            'value' =>$resource->title_ar,
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.editTextInput', [
                            'label' => 'email',
                            'name' => 'email',
                            'value' =>$resource->email,
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.editTextInput', [
                            'label' => 'phone',
                            'name' => 'phone',
                            'value' =>$resource->phone,
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.editTextInput', [
                            'label' => 'fax',
                            'name' => 'fax',
                            'value' => $resource->fax,
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
                            'label' => 'Description (en)',
                            'name' => 'description_en',
                            'value' => $resource->description_en,
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.editTinyMce', [
                            'label' => 'Description (ar)',
                            'name' => 'description_ar',
                            'value' => $resource->description_ar,
                            'required' => true
                        ]) @endcomponent
                    </div>
                </div>
            </div>

        


            <div class="form-group">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group row">
                            
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


        </div>

        @component('gwc.templateIncludes.createEditFooter', ['url' => $data['url']]) @endcomponent

    </form>
@endsection