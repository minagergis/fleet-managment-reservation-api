<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

class Bus extends Model
{
    protected $fillable = [
        'seat_number'
    ];

    public function trip()
    {
        return $this->belongsTo('App\Models\Trip', 'trip_id');

    }

    public function formateBusData()
    {
        $busData = [
            'id' => $this->id,
            'trip_name' => $this->trip->name,
            'trip_id' => $this->trip->id

        ];
        foreach ($this->trip->routes as $route){

            $busData['routes'][] =[
                'from' =>$route->from()->select('name')->first()->name,
                'from_id' => $route->from,
                'to' => $route->to()->select('name')->first()->name,
                'to_id' => $route->to,
                'cost' => $route->cost
            ];
        }
        return (object)$busData;


    }

    public function scopeFilter(Builder $builder, $filters)
    {

        return $filters->filter($builder);
    }
}
