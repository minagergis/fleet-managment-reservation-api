<?php

namespace App\Facades\RouteTraverser;

use Illuminate\Support\Facades\Facade;

class RouteTraverserFacade extends Facade
{
    protected static function getFacadeAccessor()
    {
        return 'RouteTraverser';
    }
}