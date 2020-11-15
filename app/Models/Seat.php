<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seat extends Model
{


    protected $fillable = ['passenger_name'];

    public function bus()
    {
        return $this->belongsTo('App\Models\Bus');

    }

    public function route()
    {
        return $this->belongsTo('App\Models\Route');
    }
}
