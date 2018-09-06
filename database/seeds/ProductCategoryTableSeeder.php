<?php

use Illuminate\Database\Seeder;

class ProductCategoryTableSeeder extends Seeder
{
    public function run(\Faker\Generator $faker)
    {
        $categories = [
            [
                "name" => "Cereals",
                "products" => [
                    ["name" => "Maize"],
                    ["name" => "Rice"],
                    ["name" => "Wheat"],
                    ["name" => "Sorghum"],
                    ["name" => "Barley"],
                ]
            ],
            [
                "name" => "Pulses",
                "products" => [
                    ["name" => "Kidney bean"],
                    ["name" => "Lima bean"],
                    ["name" => "Horse bean"],
                    ["name" => "Garden pea"],
                ]
            ],
            [
                "name" => "Vegetables",
                "products" => [
                    ["name" => "Mchicha"],
                    ["name" => "Tembele"],
                    ["name" => "Kabichi"],
                    ["name" => "Kisanvu"],
                ]
            ],
            [
                "name" => "Fruits",
                "products" => [
                    ["name" => "Chungwa"],
                    ["name" => "Embe"],
                    ["name" => "Ndizi"],
                    ["name" => "Tango"],
                    ["name" => "Tikiti"],
                    ["name" => "Zabibu"],
                ]
            ],
            [
                "name" => "Nuts",
                "products" => [
                    ["name" => "Karanga"],
                    ["name" => "Korosho"],
                ]
            ],
            [
                "name" => "Oilseeds",
                "products" => []
            ],
            [
                "name" => "Sugars and Starches",
                "products" => []
            ],
            [
                "name" => "Fibres",
                "products" => []
            ],
            [
                "name" => "Beverages",
                "products" => []
            ],
            [
                "name" => "Narcotics",
                "products" => []
            ],
            [
                "name" => "Spices",
                "products" => []
            ],
            [
                "name" => "Condiments",
                "products" => []
            ],
            [
                "name" => "Rubber Forages",
                "products" => []
            ],
            [
                "name" => "Green and Green leaf manure",
                "products" => []
            ],
        ];

        foreach ($categories as $data) {
            $category = factory(\App\ProductCategory::class)->create(["name" => $data["name"]]);

            foreach ($data["products"] as $key => $product) {

                $product = factory(\App\Product::class)->create(["name" => $product["name"]]);

                $product->categories()->attach($category);
            }
        }
    }
}
