<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BookingRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'from' => 'required|exists:destinations,id',
            'to' => 'required|exists:destinations,id',
            'trip_id' => 'required|exists:trips,id',
            'seat_count' => 'required|numeric|min:0|not_in:0',
            'passenger_name' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'from.required' => "The start point is required",
            'to.required' => "The end destination is required",
            'trip_id.required' => "The trip ID is required",
            'from.exists' => "The start point doesn't exist in our stations",
            'to.exists' => "The end destination doesn't exist in our stations",
            'trip_id.exists' => "The trip ID doesn't exist in our trips",
            'seat_count.required' => "The seat count is required",
            'seat_count.numeric' => "The seat count should be a number",
            'seat_count.min' => "The seat count should be more than 0",
            'seat_count.not_in' => "The seat count should be more than 0",
            'passenger_name.required' => "The Passenger name is required",
        ];
    }

    public function validate(Request $request)
    {
        return Validator::make($request->all(), $this->rules(), $this->messages());


    }
}
