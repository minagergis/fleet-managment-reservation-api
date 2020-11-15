 ![testing](https://img.shields.io/badge/Unit%20testing-Passed-brightgreen.svg?style=flat) ![Design pattern: Repository - Facade](https://img.shields.io/badge/Design%20pattern-Repository%2FFacades-purple.svg?style=flat) ![PHP Framework: Laravel 8.12](https://img.shields.io/badge/PHP%20Framework-%20Laravel%208.14-red.svg?style=flat)
![Container: Docker](https://img.shields.io/badge/Container-Docker-blue.svg?style=flat)
## Fleet management system

A fleet managment restful APIs to book buses from a destination to another destination

## Installed software and configuration
01. XAMPP SERVER (PHP 7.4.*)
02. Docker for windows 10

## How to deploy

### Local deployment
01. Install xampp server on your own machine
02. Create a new database with name "robusta_1"
03. Clone the project to your apache folder ex .htdocs
04. To run the migrations and create the database Run command ```php artisan migrate``` or import ```robusta_v1.sql``` to PhpMyAdmin
05. The project should be working now on ```http://localhost/fleet-managment-reservation-api/public```
     
### Docker deployment
01. Install [docker]("https://docs.docker.com/docker-for-windows/install/") on your machine.
02. Clone the project to your machine.
03. Use command ``` docker-compose up -d --build ```
04. The project should be working now on ```http://localhost:8100```

## Restful API services request

### API documentation
01. [Postman published documentation]('https://documenter.getpostman.com/view/4710778/TVep8njt')

### GET REQUEST
The services is using the Restful API request.

###### Get trips By From point to point 
* This api end-point is to get all trips from point to another point
*  Get request To [http://localhost:8100/api/v1/get-available-trips?from=Cairo&to=Suiz](http://localhost:8100/api/v1/get-available-trips?from=Cairo&to=Suiz)
* Possible payload
```
?from='' => should be an String represent destination from destination table name (optional)
?to='' => should be an String represent destination from destination table name (optional)

```

* Response should be like 
```
[
  {
    "id": 3,
    "trip_name": "Cairo - Dahab",
    "trip_id": 2,
    "routes": [
      {
        "route_id": 4,
        "from": "Cairo",
        "from_id": 6,
        "to": "Suiz",
        "to_id": 26,
        "cost": "30",
        "available_seats": 12
      },
      {
        "route_id": 5,
        "from": "Suiz",
        "from_id": 26,
        "to": "South sinai",
        "to_id": 25,
        "cost": "30",
        "available_seats": 12
      }
    ]
  }
]
```

* Empty response should be like 
```
[
]
```

### Post REQUEST
###### Matches Filter function 
* This request make the user can book a ticket if there are available seats
* Post request To [http://localhost:8100/api/v1/book-seat?from=1&to=1&seat_count=1&trip_id=1&passenger_name=Mina](http://localhost:8100/api/v1/book-seat?from=1&to=1&seat_count=1&trip_id=1&passenger_name=Mina)
* possible payload should be like the example below
```
?from='' => destination id (required)
?to='' => destination id (required)
?seat_count='' => integer (required)
?trip_id='' => trip ID (required)
?passenger_name='' => string Name (required)
```
* Response should be like 
```
status : 200
[ {
      "message": "You booked 1 => Single seat cost :90 => Total cost : 90"
  }]
```

```
status : 404
{
      "message": "Sorry we don't provide trips from this points / to this points"
  }
```

```
status : 404
{
    "message": "Sorry there is no sufficient seats on this trip"
}
```



## Testing
### Unit testing
01. I wrote unit testing cases for the filter functions 
02. to run the test cases use this command ``` php artisan test ```

## Built With
* [Laravel](https://laravel.com/docs) - The web framework used
## Acknowledgments
* Hat tip to anyone whose answers on stackoverflow were used