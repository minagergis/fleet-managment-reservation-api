<?php

namespace App\Repositories\App;

use Illuminate\Database\Eloquent\Model;


class AppRepository implements AppRepositoryInterface
{
    protected $model;

    public function __construct(Model $model)
    {
        $this->model = $model;
    }


    public function get()
    {
        return $this->model->get();
    }
}