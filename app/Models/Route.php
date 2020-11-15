<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Route extends Model
{
    use HasFactory;

    protected $fillable = ['cost'];

    public function from()
    {
        return $this->hasOne('App\Models\Destination', 'id', 'from');

    }

    public function to()
    {
        return $this->hasOne('App\Models\Destination', 'id', 'to');

    }

    public function trips()
    {
        return $this->belongsToMany('App\Models\Trip', 'trip_route');
    }

    public function seats()
    {
        return $this->hasMany('App\Models\Seat');
    }

    public function formateRouteData()
    {
        $routeData = [
            'id' => $this->id,
            'from' => $this->from,
            'to' => $this->to,
            'cost' => $this->cost,
            'available_seats' => 12 - intval($this->seats->count())

        ];

        return (object)$routeData;


    }

}
