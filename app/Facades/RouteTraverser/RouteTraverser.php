<?php

namespace App\Facades\RouteTraverser;

class RouteTraverser
{

    /**
     * Traverse route facade to make the application able to get all the routes from certain starting point to endpoint
     * get start point then traverse the trip line = group of routes like cairo-gharbia , gharbia-buhaira , buhaira-alex
     * then it get the required routes for the requested ticket => price for each ticket => price for total ticket
     * @param $routes
     * @param $startPoint
     * @param $endPoint
     * @param $tripID
     * @param $seatCount
     * @return array|bool
     */

    static function traverse($routes, $startPoint, $endPoint, $tripID, $seatCount,$busID)
    {
        $endStation = [];
        $retrievedRoutes = [];
        $costPerTicket = 0;

        foreach ($routes as $route) {
            if ($route->from != $startPoint) {
                continue;
            } else {
                if ($route->to == $endPoint) {
                    $endStation = ['route_id' => $route->id, 'trip_id' => $tripID, 'seat_count' => $seatCount ,'bus_id' => $busID];
                    $costPerTicket+=$route->cost;
                    break;
                } else {
                    $retrievedRoutes[] = ['route_id' => $route->id, 'trip_id' => $tripID, 'seat_count' => $seatCount,'bus_id' => $busID];
                    $costPerTicket+=$route->cost;
                    $startPoint = $route->to;
                }


            }
        }
        if (count($endStation) > 0) {
            array_push($retrievedRoutes, $endStation);
            return ['required_routes'=>$retrievedRoutes,
                'cost_per_ticket'=>$costPerTicket,
                'total_cost'=>$costPerTicket*$seatCount
            ];
        } else {
            return false;
        }
    }
}