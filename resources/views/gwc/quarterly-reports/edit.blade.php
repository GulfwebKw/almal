@extends('gwc.template.editTemplate')
@section('editContent')
    <form name="tFrm" id="form_validation" method="post" class="kt-form" enctype="multipart/form-data"
          action="{{route($data['updateRoute'],$resource->id)}}">
        @method('PUT')
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <div class="kt-portlet__body">

          

            <!-- Details -->
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        @component('gwc.components.editTextInput', [
                            'label' => 'Date',
                            'name' => 'date',
                            'type'=>'date',
                            'value' => \Carbon\Carbon::parse($resource->getOriginal('date'))->format('Y-m-d'),
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
                    <div class="col-lg-6">

                        <div class="col-md-12 mt-3">
                            <label for="file_en">File En</label>
                            <div class="custom-file">
                                <input type="file" name="file_en" class="custom-file-input" id="file_en">
                                <label class="custom-file-label" for="file_en">Choose file</label>
                                @if(isset($resource->file_en))
                                    <div>
                                        <a href="{{route('quarterly.download',$resource->id)}}">DOWNLOAD</a>
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
                                        <a href="{{route('quarterly.download', [$resource->id, 'lang' => 'ar'])}}">DOWNLOAD</a>
                                    </div>
                                @endif
                            </div>
                            @if($errors->has('file_ar'))
                                <div class="invalid-feedback">{{ $errors->first('file_ar') }}</div>
                            @endif
                        </div>

                    </div>
                      @if(isset($resource->image))
                    <div>
                        <a href="{{route('quarterly.download',$resource->id)}}">DOWNLOAD</a>
                    </div>
                    @endif
                </div>
            </div>
        </div>

        @component('gwc.templateIncludes.createEditFooter', ['url' => $data['url']]) @endcomponent

    </form>
@endsection
