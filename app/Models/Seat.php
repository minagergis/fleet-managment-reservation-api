<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seat extends Model
{
    use HasFactory;

    protected $fillable = ['number', 'passenger_name'];

    public function bus()
    {
        return $this->belongsTo('App\Models\Bus');

    }
}
