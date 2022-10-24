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
        @method('PUT')
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
                            'name' => 'details_en',
                            'value' => $resource->details_en,
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.editTinyMce', [
                            'label' => 'Details (ar)',
                            'name' => 'details_ar',
                            'value' => $resource->details_ar,
                            'required' => true
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
                    <div class="col-md-6">
                        @component('gwc.components.editTextInput', [
                            'label' => 'Date',
                            'name' => 'date',
                            'type' => 'date',
                            'value' => \Carbon\Carbon::parse($resource->getOriginal('date'))->format('Y-m-d'),
                            'required' => true
                        ]) @endcomponent
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-lg-6">

                        <div class="col-md-12 mt-3">
                            <label for="file_en">File En</label>
                            <div class="custom-file">
                                <input type="file" name="file_en" class="custom-file-input" id="file_en">
                                <label class="custom-file-label" for="file_en">Choose file</label>
                                @if(isset($resource->file_en))
                                    <div>
                                        <a href="{{route('disclosures.download',$resource->id)}}">DOWNLOAD</a>
                                    </div>
                                @endif
                            </div>
                            @if($errors->has('file_en'))
                                <div class="invalid-feedback">{{ $errors->first('file_en') }}</div>
                            @endif
                        </div>

                        <div class="col-md-12 mt-3">
                            <label for="file_ar">File Ar</label>
                            <div class="custom-file">
                                <input type="file" name="file_ar" class="custom-file-input" id="file_ar">
                                <label class="custom-file-label" for="file_ar">Choose file</label>
                                @if(isset($resource->file_ar))
                                    <div class="float-left mt-3">
                                        <a href="{{route('disclosures.download', [$resource->id, 'lang' => 'ar'])}}">DOWNLOAD</a>
                                    </div>
                                @endif
                            </div>
                            @if($errors->has('file_ar'))
                                <div class="invalid-feedback">{{ $errors->first('file_ar') }}</div>
                            @endif
                        </div>

                    </div>

                    @if($resource->image!=null)
                        <div>
                            <a href="{{route('disclosures.download',$resource->id)}}">DOWNLOAD</a>
                        </div>
                    @endif
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-lg-12 p-4">
                        <div class="needsclick dropzone" style="height: 165px" id="document-dropzone"></div>
                    </div>
                    @if($resource->images)
                        <ul class="pic">
                            @foreach(explode(',', $resource->images) as $image)
                                <li data-e="{{$image}}">
                                    <button type="button" class="close text-danger p-1" onclick="DeletePic('{{$image}}')">
                                        ×
                                    </button>
                                    <img width="150" src="{{asset("/uploads/disclosures/". $image)}}" alt="">
                                </li>
                            @endforeach
                        </ul>
                    @endif
                </div>
            </div>
        </div>

        @component('gwc.templateIncludes.createEditFooter', ['url' => $data['url']]) @endcomponent

    </form>
@endsection
@section('script')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.4.0/dropzone.js"></script>
    <script type="text/javascript">
        var uploadedDocumentMap = {}
        Dropzone.options.documentDropzone = {
            url: '{{ route('dropzone.images.store') }}',
            maxFilesize: 1, // MB
            addRemoveLinks: true,
            headers: {
                'X-CSRF-TOKEN': "{{ csrf_token() }}"
            },
            success: function (file, response) {
                $('form').append('<input type="hidden" name="images[]" value="' + response.name + '">')
                uploadedDocumentMap[file.name] = response.name
            },
            removedfile: function (file) {
                var name = uploadedDocumentMap[file.name];
                var token = $('[name=_token]').val();
                var dir = $('[name=dir]').val();
                console.log(dir);


                $.ajax({
                    type: 'get',
                    headers: {'X-CSRF-Token': token},
                    url: '{{ route('dropzone.images.remove') }}',
                    data: {name: name, dir: dir},
                    dataType: 'html'
                });

                var _ref;
                return (_ref = file.previewElement) != null ? _ref.parentNode.removeChild(file.previewElement) : void 0;
                availableImages = availableImages + 1;
            },
            init: function () {
                @if(isset($project) && $project->document)
                var files =
                        {!! json_encode($project->document) !!}
                        for (var i in files) {
                    var file = files[i]
                    this.options.addedfile.call(this, file)
                    file.previewElement.classList.add('dz-complete')
                    $('form').append('<input type="hidden" name="images[]" value="' + file.file_name + '">')
                }
                @endif
            }
        };

        function DeletePic(name) {
            $.ajax({
                url: '{{ route('dropzone.image.delete') }}',
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                },
                method: 'POST',
                data: {name: name, id: '{{$resource->id}}', model: 'Disclosure'},
                success: function (data) {
                    $('li[data-e="' + data + '"]').fadeOut();
                }
            });
        }
    </script>
@endsection