<?php

namespace App\Filters;
use Illuminate\Database\Eloquent\Builder;

class BusToFilter
{
    public function filter(Builder $builder, $value)
    {

        return $builder->whereHas('trip.routes.to', function ($query) use ($value) {
            return $query->where('destinations.name', $value);
        });

    }
}