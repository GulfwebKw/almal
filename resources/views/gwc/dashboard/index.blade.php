<!DOCTYPE html>
<html lang="en">
<head>
    @include('gwc.templateIncludes.head')
</head>
<body class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--enabled kt-subheader--fixed kt-subheader--solid kt-aside--enabled kt-aside--fixed">
@include('gwc.templateIncludes.headerMobile')
<div class="kt-grid kt-grid--hor kt-grid--root">
    <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">
        @include('gwc.templateIncludes.leftMenu')
        <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">
            @include('gwc.templateIncludes.header')

            <div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">
                <div class="kt-container ">
                    <div class="row">
                        @if (!empty($Slideshows))
                            <div class="col-lg-4">
                                <a href="{{ url('gwc/slideshows') }}"
                                   class="kt-portlet kt-iconbox kt-iconbox--animate-slow">
                                    <div class="kt-portlet__body">
                                        <div class="kt-iconbox__body">

                                            <div class="kt-iconbox__desc">
                                                <h3 class="kt-iconbox__title">
                                                    {{ __('adminMessage.slideshow') }}
                                                </h3>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.total') }}<span
                                                                class="badge badge-success float-right"
                                                                style="width:50px;">{{ $Slideshows['total'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.today') }}<span
                                                                class="badge badge-info float-right"
                                                                style="width:50px;">{{ $Slideshows['today'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.lastweek') }}<span
                                                                class="badge badge-warning float-right"
                                                                style="width:50px;">{{ $Slideshows['week'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.lastthritydays') }}<span
                                                                class="badge badge-danger float-right"
                                                                style="width:50px;">{{ $Slideshows['month'] }}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endif

                        @if (!empty($News))
                            <div class="col-lg-4">
                                <a href="{{ url('gwc/news') }}"
                                   class="kt-portlet kt-iconbox kt-iconbox--animate-slow">
                                    <div class="kt-portlet__body">
                                        <div class="kt-iconbox__body">

                                            <div class="kt-iconbox__desc">
                                                <h3 class="kt-iconbox__title">
                                                    {{ __('adminMessage.news') }}
                                                </h3>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.total') }}<span
                                                                class="badge badge-success float-right"
                                                                style="width:50px;">{{ $News['total'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.today') }}<span
                                                                class="badge badge-info float-right"
                                                                style="width:50px;">{{ $News['today'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.lastweek') }}<span
                                                                class="badge badge-warning float-right"
                                                                style="width:50px;">{{ $News['week'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.lastthritydays') }}<span
                                                                class="badge badge-danger float-right"
                                                                style="width:50px;">{{ $News['month'] }}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endif

                        @if (!empty($Categories))
                            <div class="col-lg-4">
                                <a href="{{ url('gwc/categories') }}"
                                   class="kt-portlet kt-iconbox kt-iconbox--animate-slow">
                                    <div class="kt-portlet__body">
                                        <div class="kt-iconbox__body">

                                            <div class="kt-iconbox__desc">
                                                <h3 class="kt-iconbox__title">
                                                    {{ __('adminMessage.categories') }}
                                                </h3>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.total') }}<span
                                                                class="badge badge-success float-right"
                                                                style="width:50px;">{{ $Categories['total'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.today') }}<span
                                                                class="badge badge-info float-right"
                                                                style="width:50px;">{{ $Categories['today'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.lastweek') }}<span
                                                                class="badge badge-warning float-right"
                                                                style="width:50px;">{{ $Categories['week'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.lastthritydays') }}<span
                                                                class="badge badge-danger float-right"
                                                                style="width:50px;">{{ $Categories['month'] }}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endif

                        @if (!empty($SinglePageMenu))
                            <div class="col-lg-4">
                                <a href="{{ url('gwc/single-page-menu') }}"
                                   class="kt-portlet kt-iconbox kt-iconbox--animate-slow">
                                    <div class="kt-portlet__body">
                                        <div class="kt-iconbox__body">

                                            <div class="kt-iconbox__desc">
                                                <h3 class="kt-iconbox__title">
                                                    {{ __('adminMessage.singlepagemenu') }}
                                                </h3>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.total') }}<span
                                                                class="badge badge-success float-right"
                                                                style="width:50px;">{{ $SinglePageMenu['total'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.today') }}<span
                                                                class="badge badge-info float-right"
                                                                style="width:50px;">{{ $SinglePageMenu['today'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.lastweek') }}<span
                                                                class="badge badge-warning float-right"
                                                                style="width:50px;">{{ $SinglePageMenu['week'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.lastthritydays') }}<span
                                                                class="badge badge-danger float-right"
                                                                style="width:50px;">{{ $SinglePageMenu['month'] }}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endif

                        @if (!empty($AnnualReports))
                            <div class="col-lg-4">
                                <a href="{{ url('gwc/annual-reports') }}"
                                   class="kt-portlet kt-iconbox kt-iconbox--animate-slow">
                                    <div class="kt-portlet__body">
                                        <div class="kt-iconbox__body">

                                            <div class="kt-iconbox__desc">
                                                <h3 class="kt-iconbox__title">
                                                    {{ __('adminMessage.annual-report') }}
                                                </h3>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.total') }}<span
                                                                class="badge badge-success float-right"
                                                                style="width:50px;">{{ $AnnualReports['total'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.today') }}<span
                                                                class="badge badge-info float-right"
                                                                style="width:50px;">{{ $AnnualReports['today'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.lastweek') }}<span
                                                                class="badge badge-warning float-right"
                                                                style="width:50px;">{{ $AnnualReports['week'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.lastthritydays') }}<span
                                                                class="badge badge-danger float-right"
                                                                style="width:50px;">{{ $AnnualReports['month'] }}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endif

                        @if (!empty($QuarterlyReport))
                            <div class="col-lg-4">
                                <a href="{{ url('gwc/quarterly-reports') }}"
                                   class="kt-portlet kt-iconbox kt-iconbox--animate-slow">
                                    <div class="kt-portlet__body">
                                        <div class="kt-iconbox__body">

                                            <div class="kt-iconbox__desc">
                                                <h3 class="kt-iconbox__title">
                                                    {{ __('adminMessage.quarterlyreport') }}
                                                </h3>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.total') }}<span
                                                                class="badge badge-success float-right"
                                                                style="width:50px;">{{ $QuarterlyReport['total'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.today') }}<span
                                                                class="badge badge-info float-right"
                                                                style="width:50px;">{{ $QuarterlyReport['today'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.lastweek') }}<span
                                                                class="badge badge-warning float-right"
                                                                style="width:50px;">{{ $QuarterlyReport['week'] }}</span>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        {{ __('adminMessage.lastthritydays') }}<span
                                                                class="badge badge-danger float-right"
                                                                style="width:50px;">{{ $QuarterlyReport['month'] }}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endif

                    </div>
                </div>
            </div>


            <!-- begin:: Footer -->
            @include('gwc.includes.footer')
            <!-- end:: Footer -->
        </div>
    </div>
</div>
<!-- end:: Page -->

<!-- begin::Scrolltop -->
<div id="kt_scrolltop" class="kt-scrolltop">
    <i class="fa fa-arrow-up"></i>
</div>
<!-- end::Scrolltop -->

<!-- js files -->
@include('gwc.js.dashboard')

{{--@if(!empty($gaAccesstoken))--}}
{{--    <script type="text/javascript" src="https://www.google.com/jsapi"></script>--}}
{{--    <script>--}}
{{--        (function(w,d,s,g,js,fjs){--}}
{{--            g=w.gapi||(w.gapi={});g.analytics={q:[],ready:function(cb){this.q.push(cb)}};--}}
{{--            js=d.createElement(s);fjs=d.getElementsByTagName(s)[0];--}}
{{--            js.src='https://apis.google.com/js/platform.js';--}}
{{--            fjs.parentNode.insertBefore(js,fjs);js.onload=function(){g.load('analytics')};--}}
{{--        }(window,document,'script'));--}}
{{--    </script>--}}

{{--    <script>--}}
        {{--gapi.analytics.ready(function() {--}}
        {{--    var ids = 'ga:236997161';--}}
        {{--    var ACCESS_TOKEN = '@php echo $gaAccesstoken; @endphp'--}}

        {{--    gapi.analytics.auth.authorize({--}}
        {{--        serverAuth: {--}}
        {{--            access_token: ACCESS_TOKEN--}}
        {{--        }--}}
        {{--    });--}}

        {{--    /**--}}
        {{--     * Create a new ViewSelector instance to be rendered inside of an--}}
        {{--     * element with the id "view-selector-container".--}}
        {{--     */--}}
        {{--    var viewSelector = new gapi.analytics.ViewSelector({--}}
        {{--        container: 'view-selector-container'--}}
        {{--    });--}}

        {{--    // Render the view selector to the page.--}}
        {{--    viewSelector.execute();--}}

        {{--    /**--}}
        {{--     * Create a new DataChart instance with the given query parameters--}}
        {{--     * and Google chart options. It will be rendered inside an element--}}
        {{--     * with the id "chart-container".--}}
        {{--     */--}}
        {{--    var dataChart = new gapi.analytics.googleCharts.DataChart({--}}
        {{--        query: {--}}
        {{--            metrics: 'ga:sessions',--}}
        {{--            dimensions: 'ga:date',--}}
        {{--            'start-date': '30daysAgo',--}}
        {{--            'end-date': 'yesterday'--}}
        {{--        },--}}
        {{--        chart: {--}}
        {{--            container: 'chart-container',--}}
        {{--            type: 'LINE',--}}
        {{--            options: {--}}
        {{--                width: '100%'--}}
        {{--            }--}}
        {{--        }--}}
        {{--    });--}}

        {{--    /**--}}
        {{--     * Render the dataChart on the page whenever a new view is selected.--}}
        {{--     */--}}
        {{--    viewSelector.on('change', function(ids) {--}}
        {{--        dataChart.set({query: {ids: ids}}).execute();--}}
        {{--    });--}}

        {{--    /**--}}
        {{--     * Create a ViewSelector for the first view to be rendered inside of an--}}
        {{--     * element with the id "view-selector-1-container".--}}
        {{--     */--}}
        {{--    var viewSelector1 = new gapi.analytics.ViewSelector({--}}
        {{--        container: 'view-selector-1-container'--}}
        {{--    });--}}

        {{--    // Render both view selectors to the page.--}}
        {{--    viewSelector1.execute();--}}

        {{--    /**--}}
        {{--     * Create the first DataChart for top countries over the past 30 days.--}}
        {{--     * It will be rendered inside an element with the id "chart-1-container".--}}
        {{--     */--}}
        {{--    var dataChart1 = new gapi.analytics.googleCharts.DataChart({--}}
        {{--        query: {--}}
        {{--            metrics: 'ga:sessions',--}}
        {{--            dimensions: 'ga:country',--}}
        {{--            'start-date': '30daysAgo',--}}
        {{--            'end-date': 'yesterday',--}}
        {{--            'max-results': 6,--}}
        {{--            sort: '-ga:sessions'--}}
        {{--        },--}}
        {{--        chart: {--}}
        {{--            container: 'chart-1-container',--}}
        {{--            type: 'PIE',--}}
        {{--            options: {--}}
        {{--                width: '100%',--}}
        {{--                pieHole: 4/9--}}
        {{--            }--}}
        {{--        }--}}
        {{--    });--}}

        {{--    /**--}}
        {{--     * Update the first dataChart when the first view selecter is changed.--}}
        {{--     */--}}
        {{--    viewSelector1.on('change', function(ids) {--}}
        {{--        dataChart1.set({query: {ids: ids}}).execute();--}}
        {{--        $('#loading').hide();--}}
        {{--    });--}}
        {{--});--}}
{{--    </script>--}}
{{--@endif--}}
</body>
</html>