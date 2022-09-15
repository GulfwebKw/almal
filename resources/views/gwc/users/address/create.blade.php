@extends('gwc.template.createTemplate')

@section('createContent')
    <form name="tFrm" id="form_validation" method="post" class="kt-form" enctype="multipart/form-data"
          action="{{'/gwc/users/'. Request::segment(3).'/address'}}">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <div class="kt-portlet__body">

            <!-- name -->
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        @component('gwc.components.createTextInput', [
                            'label' => 'Name',
                            'name' => 'full_name',
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.createTextInput', [
                            'label' => 'mobile',
                            'name' => 'mobile',
                            'required' => true
                        ]) @endcomponent
                    </div>
                </div>
            </div>

            <!-- email -->
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                            <label>Country</label>
                            <select name="country_id" onchange="getCities(this.value)" id=""  class="form-control" required>
                                <option value="">None</option>
                                @foreach($countries as $resource)
                                    <option value="{{ $resource->id }}">{{ $resource->title_en }}</option>
                                @endforeach
                            </select>
                    </div>
                    <div class="col-md-6">
                        <label>City</label>
                        <select name="city" id="city-list"  class="form-control" required>
                            <option value="">None</option>
                        </select>
                    </div>
                </div>
            </div>

            <!-- auth -->
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        @component('gwc.components.createTextInput', [
                            'label' => 'ZipCode',
                            'name' => 'zipcode',
                            'required' => true
                        ]) @endcomponent
                    </div>
                    <div class="col-md-6">
                        @component('gwc.components.createTextarea', [
                            'label' => 'Address',
                            'name' => 'address',
                            'required' => true
                        ]) @endcomponent
                    </div>
                </div>
            </div>
        </div>

        @component('gwc.templateIncludes.createEditFooter', ['url' => $data['url']]) @endcomponent

    </form>

    <script>
        function getCities(val) {
            console.log(val)
            $.ajax({
                type: "POST",
                url: "/gwc/get-country-cities",
                data: 'country_id=' + val,
                beforeSend: function () {
                    $("#city-list").addClass("loader");
                },
                success: function (data) {
                    console.log(data)
                    $("#city-list").html(data);
                    $("#city-list").prop('disabled', false);
                    $("#city-list").removeClass("loader");
                }
            });
        }

        function getAreas(val) {
            $.ajax({
                type: "POST",
                url: "/gwc/get-city-areas",
                data: 'city_id=' + val,
                beforeSend: function () {
                    $("#area-list").addClass("loader");
                },
                success: function (data) {
                    $("#area-list").html(data);
                    $("#area-list").prop('disabled', false);
                    $("#area-list").removeClass("loader");
                }
            });
        }
    </script>

@endsection