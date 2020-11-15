<?php

namespace App\Providers;


use App\Facades\RouteTraverser\RouteTraverser;
use Illuminate\Support\ServiceProvider;

class RoutesTraverserServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
       $this->app->bind('RouteTraverser',function (){
           return new RouteTraverser();
       });
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
