<?php

namespace App\Providers;

use App\Repositories\Bus\RouteRepository;
use App\Repositories\Bus\RouteRepositoryInterface;
use Illuminate\Support\ServiceProvider;

class RouteRepositoryServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(RouteRepositoryInterface::class,RouteRepository::class);
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
