<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

class Bus extends Model
{
    /**
     * @var array
     */
    protected $fillable = [
        'seat_number'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function trip()
    {
        return $this->belongsTo('App\Models\Trip', 'trip_id');

    }

    /**
     * @return object
     */
    public function formateBusData()
    {
        $busData = [
            'id' => $this->id,
            'trip_name' => $this->trip->name,
            'trip_id' => $this->trip->id

        ];
        foreach ($this->trip->routes as $route){

            $busData['routes'][] =[
                'route_id' => $route->id,
                'from' =>$route->from()->select('name')->first()->name,
                'from_id' => $route->from,
                'to' => $route->to()->select('name')->first()->name,
                'to_id' => $route->to,
                'cost' => $route->cost,
                'available_seats' => 12 - $route->seats->count()
            ];
        }
        return (object)$busData;


    }

    /**
     * @param Builder $builder
     * @param $filters
     * @return mixed
     */
    public function scopeFilter(Builder $builder, $filters)
    {
        return $filters->filter($builder);
    }
}
