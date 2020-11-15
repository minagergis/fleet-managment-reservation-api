<?php

namespace App\Repositories\Seat;

use App\Models\Seat;
use App\Repositories\App\AppRepository;
use http\Env\Request;


class SeatRepository extends AppRepository implements SeatRepositoryInterface
{

    private $model;

    /**
     * SeatRepository constructor.
     * @param Seat $seat
     */
    public function __construct(Seat $seat)
    {
        $this->model = $seat;
    }

    /**
     * @param $requiredRoutes
     * @param $passenger
     * @return \App\Repositories\App\saved
     */
    public function setSeatsToPassengers($requiredRoutes, $passenger)
    {

        $dataToByStored = [];
        foreach ($requiredRoutes['required_routes'] as $requiredRoute) {
            for ($i=0;$i<=$requiredRoute['seat_count'];$i++){
                $dataToByStored[] = [
                    'passenger_name' => $passenger,
                    'bus_id' => $requiredRoute['bus_id'],
                    'route_id' => $requiredRoute['route_id']
                ];
            }

        }

        return $this->store($dataToByStored);
    }


}