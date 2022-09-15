<!DOCTYPE html>
<html lang="{{$lang}}" class="scheme_original">
<head>
    @include('website.templateSections.head')
     <script src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    @yield('style')
</head>
<body class="body_style_wide body_filled scheme_original top_panel_show top_panel_over sidebar_show sidebar_left sidebar_outer_show sidebar_outer_yes top_panel_fixed">
<div id="page_preloader"></div>
<div class="body_wrap">
    <div class="page_wrap">
        @include('website.templateSections.topNav')
        @yield('content')
        @include('website.templateSections.footer')
    </div>
</div>
@include('website.templateSections.script')
@yield('script')
<script>
    document.addEventListener("DOMContentLoaded", function(){
        setTimeout(()=>{
            $.ajax({
                type:'GET',
                url:'/refresh_captcha',
                success:function(data){
                    $(".captcha span").html(data.captcha);
                }
            });
        },1000)
    });
</script>
</body>
</html>