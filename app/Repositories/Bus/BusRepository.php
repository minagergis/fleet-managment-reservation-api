<?php

namespace App\Repositories\Bus;

use App\Models\Bus;
use App\Repositories\App\AppRepository;
use Illuminate\Database\Eloquent\Model;

class BusRepository extends AppRepository implements BusRepositoryInterface
{
    public $bus;

    /**
     * BusRepository constructor.
     * @param Bus $bus
     */
    public function __construct(Bus $bus)
    {
        $this->bus = $bus;
    }

    /**
     * @param $filters
     * @return mixed
     */
    public function getAll($filters)
    {
        return $this->bus->filter($filters)->get()->map(function (Bus $bus) {
            return $bus->formateBusData();
        });
    }

}