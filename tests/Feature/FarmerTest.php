<?php

namespace Tests\Feature;

use App\Block;
use App\Farmer;
use App\Product;
use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class FarmerTest extends TestCase
{
    use RefreshDatabase;

    use WithFaker;

    public function test_register_a_new_farmer()
    {
        $this->withoutExceptionHandling();

        $this->actingAs($user = factory(\App\User::class)->create());

        \Bouncer::allow($user)->to("create", Farmer::class);

        $response = $this->post(route("farmers.store"), [
            "first_name" => $firstName = $this->faker->firstName,
            "last_name" => $lastName = $this->faker->lastName,
            "phone" => $phone = $this->faker->phoneNumber,
            "gender" => array_random(["male", "female"]),

            "street" => $street = $this->faker->streetAddress,
            "country" => $country = "Tanzania",
            "state" => $state = "Morogoro",

            "size" => $size = rand(3.5, 10),
            "size_unit" => array_random(["kg","t","g"]),

            "crops" => factory(Product::class, 3)->create()->pluck("id"),

            "block_id" => factory(Block::class)->create()->id,
        ]);

        $this->assertDatabaseHas("farmers", [
            "first_name" => $firstName,
            "last_name" => $lastName,
            "phone" => $phone,
        ]);

        $this->assertDatabaseHas("farms", ["size" => $size,]);

        $this->assertDatabaseHas("addresses", [
            "street" => $street,
            "country" => $country,
            "state" => $state,
        ]);

        $response->assertRedirect(route("farmers.index"));
    }

    public function test_upon_register_a_new_farmer_create_view_must_be_exist()
    {
        $this->withoutExceptionHandling();

        $this->actingAs($user = factory(\App\User::class)->create());

        \Bouncer::allow($user)->to("create", Farmer::class);

        $response = $this->get(route("farmers.create"));

        $response
            ->assertViewIs("farmers.create")
            ->assertSee("First name")
            ->assertSee("Last name")
            ->assertSee("Phone number");
    }

    public function test_first_name_is_mandatory_for_a_new_farmer()
    {
        $this->actingAs($user = factory(\App\User::class)->create());

        \Bouncer::allow($user)->to("create", Farmer::class);

        $response = $this->post(route("farmers.store"), [
            "last_name" => $lastName = $this->faker->lastName,
            "phone" => $phone = $this->faker->phoneNumber,
        ]);

        $response->assertSessionHasErrors(["first_name"]);
    }

    public function test_last_name_is_mandatory_for_a_new_farmer()
    {
        $this->actingAs($user = factory(\App\User::class)->create());

        \Bouncer::allow($user)->to("create", Farmer::class);

        $response = $this->post(route("farmers.store"), [
            "first_name" => $lastName = $this->faker->firstName,
            "phone" => $phone = $this->faker->phoneNumber,
        ]);

        $response->assertSessionHasErrors(["last_name"]);
    }

    public function test_phone_number_is_mandatory_for_a_new_farmer()
    {
        $this->actingAs($user = factory(\App\User::class)->create());

        \Bouncer::allow($user)->to("create", Farmer::class);

        $response = $this->post(route("farmers.store"), [
            "first_name" => $firstName = $this->faker->firstName,
            "last_name" => $lastName = $this->faker->phoneNumber,
        ]);

        $response->assertSessionHasErrors(["phone"]);
    }

    public function test_edit_an_existing_farmer()
    {
        $this->withoutExceptionHandling();

        $this->actingAs($user = factory(\App\User::class)->create());

        $farmer = factory(\App\Farmer::class)->create();

        \Bouncer::allow($user)->to("edit", $farmer);

        $this->put(route("farmers.update", $farmer), [
            "first_name" => $firstName = $this->faker->firstName,
        ]);

        $this->assertDatabaseMissing("farmers", [
            "first_name" => $farmer->first_name
        ]);

        $this->assertDatabaseHas("farmers", [
            "id" => $farmer->id,
            "last_name" => $farmer->last_name,
        ]);

        //$response->assertRedirect(route("farmers.index"));
    }

    public function test_delete_existing_farmer()
    {
        $this->withoutExceptionHandling();

        $this->actingAs($user = factory(\App\User::class)->create());

        $farmer = factory(\App\Farmer::class)->create();

        \Bouncer::allow($user)->to("delete", $farmer);

        $response = $this->delete(route("farmers.destroy", $farmer), []);

        $this->assertDatabaseMissing("farmers", [
            "id" => $farmer->id
        ]);

        $response->assertRedirect(route("farmers.index"));
    }
}
