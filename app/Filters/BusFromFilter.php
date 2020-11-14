<?php

namespace App\Filters;

use Illuminate\Database\Eloquent\Builder;

class BusFromFilter
{
    public function filter(Builder $builder, $value)
    {

        return $builder->whereHas('trip.routes.from', function ($query) use ($value) {
            return $query->where('destinations.name', $value);
        });

    }
}