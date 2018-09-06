<?php

use Faker\Generator as Faker;

$factory->define(App\ProductPrice::class, function (Faker $faker) {
    return [
        "amount" => array_random([450, 500, 550, 600, 650, 700, 750, 800, 850, 900, 950]),
        "currency" => "TZS",
        "unit" => "kg",
        "valid_from" => now(),
        "is_current_price" => true,
    ];
});
