@extends('gwc.template.editTemplate')
@section('head')
    <style type="text/css">
        .dropzone {
            border: 2px dashed #999999;
            border-radius: 10px;
        }

        .dropzone .dz-default.dz-message {
            height: 171px;
            background-size: 132px 132px;
            margin-top: -101.5px;
            background-position-x: center;


        }

        .dropzone .dz-default.dz-message span {
            display: block;
            margin-top: 145px;
            font-size: 20px;
            text-align: center;
        }
    </style>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.4.0/basic.css" rel="stylesheet" type="text/css"/>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.7.0/dropzone.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.7.0/basic.min.css" rel="stylesheet">
@stop
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

            <!-- Details -->
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        @component('gwc.components.editTinyMce', [
                            'label' => 'Details (en)',
                            'name' => 'description_en',
                            'value' => $resource->description_en,
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.editTinyMce', [
                            'label' => 'Details (ar)',
                            'name' => 'description_ar',
                            'value' => $resource->description_ar,
                            'required' => true
                        ]) @endcomponent
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <label>Category</label>
                        <select name="category_id" class="form-control">
                            <option value="">None</option>
                            @foreach($category_almal as $category)
                                <option value="{{ $category->id }}"
                                        @if($category->id == $resource->category_id) selected @endif
                                        @if($category->singlepage && $category->id !=$resource->category_id) disabled @endif
                                >
                                    {{ $category->title }}
                                </option>
                                @if(count($category->childrenRecursive)>0)
                                    @include('gwc.partials.Editcategory',['children' => $category->childrenRecursive, 'parent_id'=>$resource->parent_id, 'level'=>0, 'category_id'=>$resource->category_id])
                                @endif
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <label>{{__('adminMessage.image')}}(1920 X 800)</label> remove? <input type="checkbox" name="remove_image">
                        <div class="custom-file @if($errors->has('image')) is-invalid @endif">
                            <input type="file" class="custom-file-input @if($errors->has('image')) is-invalid @endif"
                                   id="image" name="image">
                            <label class="custom-file-label" for="image">{{__('adminMessage.chooseImage')}}</label>
                        </div>
                        @if($errors->has('image'))
                            <div class="invalid-feedback">{{ $errors->first('image') }}</div>
                        @endif
                    </div>
                    <div class="col-lg-2">
                        @if($resource->image)
                            <br>
                            <img src="{{ asset('/uploads/single-page-menu') . '/' . $resource->image  }}" width="40">
                        @endif
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <label>Header Image(1920 X 800)</label>
                        <div class="custom-file @if($errors->has('header_image')) is-invalid @endif">
                            <input type="file"
                                   class="custom-file-input @if($errors->has('header_image')) is-invalid @endif"
                                   id="image" name="header_image">
                            <label class="custom-file-label" for="image">{{__('adminMessage.chooseImage')}}</label>
                        </div>
                        @if($errors->has('header_image'))
                            <div class="invalid-feedback">{{ $errors->first('header_image') }}</div>
                        @endif
                    </div>
                    <div class="col-lg-2">
                        @if($resource->header_image)
                            <br>
                            <img src="{{ asset('/uploads/single-page-menu') . '/' . $resource->header_image  }}"
                                 width="40">
                        @endif
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

        </div>

        </div>

        @component('gwc.templateIncludes.createEditFooter', ['url' => $data['url']]) @endcomponent

    </form>
@endsection

