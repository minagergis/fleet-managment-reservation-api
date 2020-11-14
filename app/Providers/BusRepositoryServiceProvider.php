<?php

namespace App\Providers;

use App\Repositories\Bus\BusRepository;
use App\Repositories\Bus\BusRepositoryInterface;
use Illuminate\Support\ServiceProvider;

class BusRepositoryServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(BusRepositoryInterface::class,BusRepository::class);
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
