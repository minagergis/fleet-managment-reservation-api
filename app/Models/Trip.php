<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Trip extends Model
{

    protected $fillable = ['name'];

    public function routes()
    {
        return $this->belongsToMany('App\Models\Route', 'trip_route');
    }

    public function trip()
    {
        return $this->hasOne('App\Models\Trip','trip_id','id');

    }
}
