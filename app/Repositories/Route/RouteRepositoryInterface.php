<?php

namespace App\Repositories\Route;

interface RouteRepositoryInterface
{
    /**
     * @param $startPoint
     * @param $endPoint
     * @return mixed
     */
    public function getRoutesBetween($startPoint,$endPoint,$tripID,$seatCount);
}