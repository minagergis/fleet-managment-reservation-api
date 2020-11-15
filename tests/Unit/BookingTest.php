<?php

namespace Tests\Unit;

use Tests\TestCase;

class BookingTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    /** @test */
    public function trips_filter_from_to()
    {
        $this->get('/api/v1/get-available-trips?from=Cairo&to=Suiz')
            ->assertSee('Suiz')
            ->assertDontSee('Gharbia');

    }

}
