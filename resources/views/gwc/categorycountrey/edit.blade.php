@extends('gwc.template.editTemplate')

@section('editContent')
    <form name="tFrm" id="form_validation" method="post" class="kt-form" enctype="multipart/form-data"
          action="{{route($data['updateRoute'],$resource->id)}}">
        @method('PUT')
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <div class="kt-portlet__body">

            <!-- title -->
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        @component('gwc.components.editTextInput', [
                            'label' => 'country name (en)',
                            'name' => 'country_name_en',
                            'value'=>$resource->country_name_en,
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.editTextInput', [
                            'label' => 'country name (ar)',
                            'name' => 'country_name_ar',
                            'value'=>$resource->country_name_ar,
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-3">
                        @component('gwc.components.editTextInput', [
                            'label' => 'country code',
                            'name' => 'country_code',
                            'value'=>$resource->country_code,
                            'required' => true
                        ]) @endcomponent
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <label>Image</label>
                                <div class="custom-file @if($errors->has('image')) is-invalid @endif">
                                <input type="file" class="custom-file-input @if($errors->has('image')) is-invalid @endif"  id="image" name="image">
                                <label class="custom-file-label" for="image">{{__('adminMessage.chooseImage')}}</label>
                                </div>
                                       @if($errors->has('image'))
                                       <div class="invalid-feedback">{{ $errors->first('image') }}</div>
                                       @endif
                        </div>
                        <div class="col-lg-2">
                        @if($resource->image)
                        <br>
                        <img src="{{ asset('/uploads/categorycountrey') . '/' . $resource->image  }}" width="40">
                        @endif
                        </div>
                </div>
            </div>
            
                    <div class="col-lg-6">
                        <div class="form-group row">
                            <!-- is active? -->
                            <label class="col-3 col-form-label">{{__('adminMessage.isactive')}}</label>
                            <div class="col-3">
                                @component('gwc.components.editIsActive',[
                                 'value'=>$resource->is_active
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


        </div>

        @component('gwc.templateIncludes.createEditFooter', ['url' => $data['url']]) @endcomponent

    </form>
@endsection