<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class PriceNormalizeTest extends TestCase
{

    public function test_normalize_test_for_a_given_weight_unit_weight_value()
    {
        $this->withoutExceptionHandling();

        $product = factory(\App\Product::class)->create([
            "name" => "maize",
        ]);

        $price = factory(\App\ProductPrice::class)->create([
            "amount" => 2500,
            "currency" => "TZS",
            "unit" => "kg",
            "unit_value" => 1,
            "product_id" => $product->id
        ]);

        $this->assertEquals(2500000,    $price->normalize(1000, "kg"));
        $this->assertEquals(2500000,    $price->normalize(1, "ton"));
        $this->assertEquals(2500000,    $price->normalize(1000000, "gm"));

        $this->assertEquals(1,       $price->convertWeightToKg(1000, "gm"));
        $this->assertEquals(1,       $price->convertWeightToKg(1, "kg"));
        $this->assertEquals(1,       $price->convertWeightToKg(0.001, "ton"));
    }

    /*public function test_throws_exception_for_invalid_weight_unit()
    {


        $this->withoutExceptionHandling();

        $product = factory(\App\Product::class)->create([
            "name" => "maize",
        ]);

        $price = factory(\App\ProductPrice::class)->create([
            "amount" => 2500,
            "currency" => "TZS",
            "unit" => "kg",
            "unit_value" => 1,
            "product_id" => $product->id
        ]);

        $price->normalize(1000, "other");
    }*/
}
