<?php

use Faker\Generator as Faker;

$factory->define(App\Address::class, function (Faker $faker) {
    return [
        "street" => $faker->streetAddress,
        "address" => $faker->address,
        "country" => $faker->country,
        "state" => $faker->state,
        "postal_code" => $faker->postcode,
    ];
});
