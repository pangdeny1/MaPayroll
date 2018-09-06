<?php

use Faker\Generator as Faker;

$factory->define(App\Purchase::class, function (Faker $faker) {
    return [
        "weight_before_processing"  => rand(10, 100),
        "weight_after_processing"   => rand(20, 120),
        "currency"   => "TZS",
    ];
});
