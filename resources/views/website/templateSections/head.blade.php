<title>{{getSetting('setting')['name_'.$lang]}}</title>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
<meta content="telephone=no" name="format-detection">
<meta name="description" content="{{getSetting('setting')['seo_description_'.$lang]}}">
<meta name="_token" content="{{ csrf_token() }}">
<link href="http://fonts.googleapis.com/css?family=Poppins:300,300italic,400,400italic,500,500italic,600,600italic,700,700italic%7CLora:300,300italic,400,400italic,500,500italic,600,600italic,700,700italic&#038;subset=latin,latin-ext&#038;" media="all" property="stylesheet" rel="stylesheet" type="text/css">
<link href='{{asset('/site_assets/css/fontello/css/fontello.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('/site_assets/js/vendor/instagram/sb-instagram.min.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('/site_assets/js/vendor/essgrid/ess-grid.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('/site_assets/js/vendor/revslider/rev-slider.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('site_assets/js/vendor/woocommerce/woocommerce.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('/site_assets/css/style.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('/site_assets/css/colors.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('/site_assets/js/vendor/woocommerce/woocommerce-layout.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('/site_assets/js/vendor/woocommerce/plugin.woocommerce.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('/site_assets/css/animation.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('/site_assets/css/shortcodes.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('/site_assets/css/messages.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('site_assets/js/vendor/magnific-popup/magnific-popup.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('site_assets/js/vendor/swiper/swiper.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href='{{asset('/site_assets/css/responsive.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
<link href="{{url('/uploads/settings/'. getSetting('setting')->favicon)}}" rel="icon" sizes="192x192">
@if($lang=='ar')
<link href='{{asset('/site_assets/css/rtl.css')}}' media='all' property="stylesheet" rel='stylesheet' type='text/css'>
    @endif
    <link href="{{asset('/site_assets/css/fonts/trajan/style.css')}}" property="stylesheet" rel='stylesheet' type='text/css'>
<link href="{{asset('/site_assets/css/fonts/roman55/style.css')}}" property="stylesheet" rel='stylesheet' type='text/css'>
<link href="{{asset('/site_assets/css/fonts/azosans/style.css')}}" property="stylesheet" rel='stylesheet' type='text/css'>
