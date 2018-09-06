<?php

use Faker\Generator as Faker;

$factory->define(App\Farm::class, function (Faker $faker) {
    return [
        "size" => rand(1, 10),
        "size_unit" => "acre",
        "farmer_id" => function(){
            $farmer = factory(\App\Farmer::class)->create();
            $address = factory(\App\Address::class)->create();
            $farmer->address()->save($address);

            return $farmer->id;
        },
        "description" => $faker->sentence,
    ];
});
