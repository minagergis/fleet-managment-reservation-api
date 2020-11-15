<?php

namespace App\Repositories\App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;


class AppRepository implements AppRepositoryInterface
{
    protected $model;

    public function __construct(Model $model)
    {
        $this->model = $model;
    }

    /**
     * get all the items collection from database table using model.
     *
     * @return Collection of items.
     */
    public function get()
    {
        return $this->model->get();
    }

    /**
     * create new record in database.
     *
     * @param Request $request Illuminate\Http\Request
     * @return saved model object with data.
     */
    public function store($array)
    {
        $item = $this->model;
        $filledItem = $item->insert($array);
        return $filledItem;
    }

}