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
                            'label' => 'Tilte (en    Optional)',
                            'name' => 'title_en',
                            'value'=>$resource->title_en,
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.editTextInput', [
                            'label' => 'Title (ar    Optional)',
                            'name' => 'title_ar',
                            'value'=>$resource->title_ar,
                        ]) @endcomponent
                    </div>
                </div>
            </div>

            <!-- link -->
            <div class="form-group">
                <div class="row">
                    <div class="col-md-12">
                        @component('gwc.components.editSelectBox', [
                            'label' => 'Category Page',
                            'name' => 'category_id',
                            'resources' => $categories_custom,
                            'foreign_key' => $resource->category_id,
                        ]) @endcomponent
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-lg-8">
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