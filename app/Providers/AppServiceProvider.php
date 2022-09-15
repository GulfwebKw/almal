<?php

namespace App\Providers;
use App\Category;
use App\QuickLink;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
		Schema::defaultStringLength(191);

        $this->app['view']->composer('*', function ($view) {
            $view->with('lang', App::getLocale());
        });
        $this->app['view']->composer('*', function ($view) {
            $view->with('categories', Category::with('childrenRecursive')->where('parent_id', null)->get());
        });

        $this->app['view']->composer('*', function ($view) {
            $view->with('quicklinks', QuickLink::with(['category'=>function($q){
                $q->with('singlepage');
            }])->where('is_active', 1)->get());
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
//        $this->app->bind('path.public', function() {
//            return realpath(base_path().'/../public_html');
//        });

//        $this->app->bind('path.public', function() {
//            return realpath(base_path().'/public');
//        });
    }
}
