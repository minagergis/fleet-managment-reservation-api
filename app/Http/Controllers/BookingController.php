<?php

namespace App\Http\Controllers;

use App\Filters\BusFilter;
use App\Repositories\Bus\BusRepository;
use Illuminate\Http\Request;

class BookingController extends Controller
{
    private $busRepository;

    public function __construct(BusRepository $busRepository)
    {
        $this->busRepository = $busRepository;
    }

    public function getBusFilters(BusFilter $busFilter)
    {
        return response()->json($this->busRepository->getAll($busFilter));
    }
}
