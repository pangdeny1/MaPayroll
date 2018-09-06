<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class PurchaseTest extends TestCase
{
    use RefreshDatabase;

    use WithFaker;

    public function test_view_list_of_purchases()
    {
        $this->withoutExceptionHandling();

        $response = $this->get(route("purchases.index"));

        $response->assertViewIs("purchases.index");
    }

    public function test_a_view_for_a_new_purchase()
    {
        $this->withoutExceptionHandling();

        $response = $this->get(route("purchases.create"));

        $response->assertViewIs("purchases.create");
    }

    public function test_record_a_new_purchase()
    {
        $this->withoutExceptionHandling();

        $product = factory(\App\Product::class)->create();

        factory(\App\ProductPrice::class)->create([
            "amount" => 2500,
            "currency" => "TZS",
            "unit" => "kg",
            "unit_value" => 1,
            "product_id" => $product->id
        ]);

        $farmer = factory(\App\Farmer::class)->create();

        $response = $this->post(route("purchases.store"), [
            "weight_unit" => "kg",
            "weight_before" => 100,
            "weight_after" => 80,
            "product_id" => $product->id,
            "farmer_id" => $farmer->id,
            "amount" => null,
            "currency" => "TZS",
            "remarks" => $remarks = $this->faker->sentence,
        ]);

        $this->assertDatabaseHas("remarks", [
            "body" => $remarks
        ]);

        $response->assertRedirect(route("purchases.index"));
    }

    public function test_a_view_for_a_editing_purchase()
    {
        $this->withoutExceptionHandling();

        $purchase = factory(\App\Purchase::class)->create();

        $response = $this->get(route("purchases.edit", $purchase));

        $response->assertViewIs("purchases.edit");
    }
}
