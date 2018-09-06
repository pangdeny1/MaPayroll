<?php

namespace Tests\Unit;

use Illuminate\Database\Eloquent\Collection;
use Tests\TestCase;

class ProductTest extends TestCase
{
    public function test_product_must_have_category()
    {
        $product = factory(\App\Product::class)->make();

        $this->assertInstanceOf(Collection::class, $product->categories);
    }

    public function test_product_must_have_prices()
    {
        $product = factory(\App\Product::class)->make();

        $this->assertInstanceOf(Collection::class, $product->prices);
    }
}
