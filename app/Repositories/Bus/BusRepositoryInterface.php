<?php

namespace App\Repositories\Bus;

interface BusRepositoryInterface
{
    /**
     * @param $filters
     * @return mixed
     */
    public function getAll($filters);
}