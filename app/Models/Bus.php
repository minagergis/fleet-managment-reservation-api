<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bus extends Model
{
    protected $fillable =[
        'seat_number'
    ];

    public function trip()
    {
        return $this->belongsTo('App\Models\Trip','trip_id');

    }
}
