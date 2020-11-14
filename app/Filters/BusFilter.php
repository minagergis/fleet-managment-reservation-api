<?php

namespace App\Filters;

use App\Filters\AbstractFilter;

class BusFilter extends AbstractFilter
{

    protected $filters = [
        'from' => BusFromFilter::class,
        'to' => BusToFilter::class,
        'available' => BusAvailableSeetFilter::class
    ];
}