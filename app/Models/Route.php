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
       return $this->hasOne('App\Models\Destination','id','from');

    }
    public function to()
    {
        return $this->hasOne('App\Models\Destination','id','to');

    }

    public function trips()
    {
        return $this->belongsToMany('App\Models\Trip', 'trip_route');
    }
}
