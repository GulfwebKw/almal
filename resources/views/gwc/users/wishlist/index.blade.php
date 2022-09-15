@extends('gwc.template.indexTemplate')

@section('indexContent')
    <div class="row">
        @foreach($freelancers as $freelancer)
        <div class="col-auto">
            {{$freelancer->name}}
        </div>
        <div class="col-auto">
            <label>
                <input type="checkbox" data-path="{{ $data['path'] }}" data-id="{{ $user->id }}" class="wishlist"
                       value="{{$freelancer->id}}" {{in_array($freelancer->id, $wishlist)?'checked':''}}>
                <span></span>
            </label>
        </div>
        @endforeach
    </div>
@endsection