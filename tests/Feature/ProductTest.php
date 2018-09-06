<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ProductTest extends TestCase
{
    use RefreshDatabase;

    use WithFaker;

    public function test_create_a_new_product()
    {
        $this->withoutExceptionHandling();

        $category = factory(\App\ProductCategory::class)->create();

        $response = $this->post(route("products.store"), [
            "name" => $name = $this->faker->word,
            "description" => $description = $this->faker->sentence,
            "category_id" => $category = $category->id,
            "amount" => $priceAmount = 3000,
            "currency" => $priceCurrency = "TZS",
            "unit" => $priceUnit = "kg",
            "unit_value" => $priceUnitValue = 1,
        ]);

        $this->assertDatabaseHas("products", [
            "name" => $name,
            "description" => $description,
        ]);

        $this->assertDatabaseHas("product_category", [
            "category_id" => $category,
        ]);

        $this->assertDatabaseHas("product_prices", [
            "amount" => $priceAmount,
            "currency" => $priceCurrency,
            "unit" => $priceUnit,
            "unit_value" => $priceUnitValue,
        ]);

        $response->assertRedirect(route("products.index"));
    }
}
