<?php

namespace App\Repositories\Route;


use App\Facades\RouteTraverser\RouteTraverser;
use App\Models\Bus;
use App\Models\Route;
use App\Repositories\App\AppRepository;


class RouteRepository extends AppRepository implements RouteRepositoryInterface
{
    public $route;
    public $bus;

    /**
     * BusRepository constructor.
     * @param Bus $bus
     */
    public function __construct(Route $route, Bus $bus)
    {
        $this->route = $route;
        $this->bus = $bus;
    }

    public function getRoutesBetween($startPoint, $endPoint, $tripID, $seatCount)
    {
        $routes = $this->route->whereHas('trips', function ($query) use ($tripID) {
            return $query->where('trips.id', $tripID);
        })->get()->map(function (Route $route) {
            return $route->formateRouteData();
        });
        $bus = $this->bus->where('trip_id', $tripID)->first();
        return RouteTraverser::traverse($routes, $startPoint, $endPoint, intval($tripID), intval($seatCount),$bus->id);


    }

}