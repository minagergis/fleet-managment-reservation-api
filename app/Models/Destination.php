<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Destination extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    public function routesFrom(){
        return $this->belongsTo('App\Models\Route','from');
    }
    public function routesTo(){
        return $this->belongsTo('App\Models\Route','to');
    }
}
