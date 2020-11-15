<?php

namespace App\Repositories\Seat;

interface SeatRepositoryInterface{
    public function setSeatsToPassengers($requiredRoutes,$passenger);
}