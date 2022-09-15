@extends('front.layouts.master')
@section('head')
    <link rel="stylesheet" type="text/css" href="{{asset('front_assets/css/bootstrap.min.css')}}">
    <script src="{{asset('front_assets/assets/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('front_assets/js/jquery.min.js')}}"></script>
    <link rel="stylesheet" type="text/css" href="{{asset('front_assets/css/login.css')}}">
    @stop
@section('content')
    <div id="register">
        <div class="text-center text-white pt-5">
            <a href="../index9ed2.html?lang=en" id="landing-page"><img src="{{'/uploads/settings/'. getSetting('setting')->logo}}" img class="img-fluid"></a>
        </div>
        <div class="container">
            <div id="register-row" class="row justify-content-center align-items-center">
                <div id="register-column" class="col-md-10">
                    <div id="register-box" class="col-md-12">
                        <form id="register-form" class="form" action="{{route('register.store')}}" method="post">
                            @csrf
                            <h3 class="text-center text-info">Sign Up</h3>
                            @if ($errors->any())
                                @foreach ($errors->all() as $error)
                                    <div class="bg-danger text-center p-2 text-white">{{$error}}</div>
                                @endforeach
                            @endif
                            <div class="row">
                                <div class="col-md-12 english-name">
                                    <div class="form-group">
                                        <label for="lastname" class="text-info">{{__('site.full_name')}}:</label><br>
                                        <input type="text" name="full_name" id="full_name" placeholder="{{__('site.full_name')}}" class="form-control ">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="email" class="text-info">{{__('site.email')}}:</label><br>
                                        <input type="email" id="email" placeholder="{{__('site.email')}}" class="form-control " name= "email">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="phonenumber" class="text-info">{{__('site.phone_number')}}:</label><br>
                                        <input type="text" id="phonenumber" name="phonenumber" placeholder="{{__('site.phone_number')}}" class="form-control ">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="password" class="text-info">{{__('site.password')}}:</label><br>
                                        <input type="password" name="password" id="password" placeholder="{{__('site.password')}}" class="form-control ">
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="password_confirmation" class="text-info">{{__('site.confirm_password')}}:</label><br>
                                        <input type="password" name="password_confirmation" id="password_confirmation" placeholder="{{__('site.confirm_password')}}" class="form-control ">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <div class="form-group mb-0">
                                        <input type="submit" name="submit" class="btn btn-md btn-submit" value="{{__('site.signup')}}" id="register-btn">
                                    </div>
                                    <div id="login-link" class="register-here">
                                        <a href="{{route('login.index')}}" class="text-info">{{__('site.login')}}</a>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
