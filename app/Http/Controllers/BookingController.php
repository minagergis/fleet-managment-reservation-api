<?php

namespace App\Http\Controllers;

use App\Filters\BusFilter;
use App\Http\Requests\BookingRequest;
use App\Repositories\Bus\BusRepository;
use App\Repositories\Route\RouteRepository;
use App\Repositories\Seat\SeatRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BookingController extends Controller
{
    private $busRepository;
    private $routeRepository;
    private $seatRepository;

    public function __construct(BusRepository $busRepository, RouteRepository $routeRepository, SeatRepository $seatRepository)
    {
        $this->busRepository = $busRepository;
        $this->routeRepository = $routeRepository;
        $this->seatRepository = $seatRepository;
    }

    public function getBusFilters(BusFilter $busFilter)
    {
        return response()->json($this->busRepository->getAll($busFilter));
    }

    public function postReserveTicket(Request $request)
    {
        /**
         * I used the request validation like that to be able to retrive the occured error as a json
         */
        $requestValidator = new BookingRequest();
        $validator = $requestValidator->validate($request);
        if ($validator->errors()->count() > 0) {
            return response()->json($validator->errors()->toJson(), 400);
        } else {
            /**
             * get the required routes from routesRepository
             */
            $requiredRoutes = $this->routeRepository->getRoutesBetween($request->get('from'), $request->get('to'), $request->get('trip_id'), $request->get('seat_count'));
            if ($requiredRoutes == 'unavailable'){
                return response()->json(['message' => "Sorry there is no sufficient seats on this trip"], '404');

            }
            elseif ($requiredRoutes) {
                $this->seatRepository->setSeatsToPassengers($requiredRoutes,$request->get('passenger_name'));
                return response()->json(["message" => "You booked " . $request->get('seat_count') . " => Single seat cost :" . $requiredRoutes['cost_per_ticket'] . " => Total cost : " . $requiredRoutes["total_cost"]], '200');
            }
            else {
                return response()->json(['message' => "Sorry we don't provide trips from this points / to this points"], '404');
            }

            return response()->json();
        }


    }
}
