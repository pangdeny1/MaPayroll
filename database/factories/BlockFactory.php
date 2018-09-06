<?php

use Faker\Generator as Faker;

$factory->define(App\Block::class, function (Faker $faker) {
    return [
        "number" => strtoupper(str_random(5)),
        "size" => rand(1, 10),
        "size_unit" => "acre",
        "farm_id" => function(){
            $farm = factory(App\Farm::class)->create();
            $address = factory(\App\Address::class)->create();
            $farm->address()->save($address);

            return $farm->id;
        },
        "product_id" => rand(1, 21),
        "description" => $faker->sentence,
    ];
});
