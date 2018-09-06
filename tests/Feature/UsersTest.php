<?php

namespace Tests\Feature;

use App\Events\UserRegistered;
use Tests\TestCase;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\Mail;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class UsersTest extends TestCase
{
    use WithFaker;

    use RefreshDatabase;

    public function test_authenticated_user_must_view_registration_form_before_register_a_new_user()
    {
        $this->withoutExceptionHandling();

        $this->be(factory(\App\User::class)->create());

        $response = $this->get(route("users.create"));

        $response->assertViewIs("users.create");
    }

    public function test_authenticated_user_can_view_a_list_of_registered_users()
    {
        $this->withoutExceptionHandling();

        $this->actingAs(factory(\App\User::class)->create());

        $response = $this->get(route("users.index"));

        $response->assertViewIs("users.index");
    }

    public function test_authenticated_user_can_view_edit_form()
    {
        $this->withoutExceptionHandling();

        $this->be(factory(\App\User::class)->create());

        $user = factory(\App\User::class)->create();

        $response = $this->get(route("users.edit", $user));

        $response->assertViewIs("users.edit");
    }

    public function test_create_new_user()
    {
        $this->withoutExceptionHandling();

        $this->actingAs(factory(\App\User::class)->create());

        Event::fake();

        Mail::fake();

        $response = $this->post(route("users.store"), [
            "first_name" => $firstName = $this->faker->firstName,
            "last_name" => $lastName = $this->faker->lastName,
            "email" => $email = $this->faker->safeEmail,
            "phone" => $phone = $this->faker->phoneNumber,
            "gender" => $gender = rand(0, 1) ? "male" : "female",
            "birthday" => $date = "1988-08-08",

            "street" => $street = $this->faker->streetAddress,
            "address" => $address = $this->faker->address,
            "country" => $country = $this->faker->country,
            "state" => $state = $this->faker->state,
            "postal_code" => $postalCode = $this->faker->postcode,
        ]);

        Event::assertDispatched(UserRegistered::class);

        //Mail::assertSent(UserActivation::class);

        $this->assertDatabaseHas("addresses", [
            "street" => $street,
            "address" => $address,
            "country" => $country,
            "state" => $state,
            "postal_code" => $postalCode,
        ]);

        $response->assertRedirect(route("users.index"));
    }

    public function test_edit_an_existing_user()
    {
        $this->withoutExceptionHandling();

        $this->actingAs(factory(\App\User::class)->create());

        $user = factory(\App\User::class)->create();

        $user->address()->create(factory(\App\Address::class)->raw());

        $response = $this->put(route("users.update", $user), [
            "first_name" => $firstName = $this->faker->firstName,
            "last_name" => $lastName = $this->faker->lastName,
            "email" => $email = $this->faker->safeEmail,
            "phone" => $phone = $this->faker->phoneNumber,
            "gender" => $gender = rand(0, 1) ? "male" : "female",
            "birthday" => $date = "1988-08-08",

            "street" => $street = $this->faker->streetAddress,
            "address" => $address = $this->faker->address,
            "country" => $country = $this->faker->country,
            "state" => $state = $this->faker->state,
            "postal_code" => $postalCode = $this->faker->postcode,
        ]);

        $this->assertDatabaseHas("addresses", [
            "street" => $street,
            "address" => $address,
            "country" => $country,
            "state" => $state,
            "postal_code" => $postalCode,
        ]);

        $response->assertRedirect(route("users.index"));
    }

    public function test_authenticated_user_can_view_user_details()
    {
        $this->withoutExceptionHandling();

        $this->actingAs(factory(\App\User::class)->create());

        $user = factory(\App\User::class)->create();

        $user->address()->create(factory(\App\Address::class)->raw());

        $response = $this->get(route("users.show", $user));

        $response->assertViewIs("users.show");
    }

    public function test_authenticated_user_can_an_existing_user()
    {
        $this->withoutExceptionHandling();

        $this->actingAs(factory(\App\User::class)->create());

        $user = factory(\App\User::class)->create();

        $user->address()->create(factory(\App\Address::class)->raw());

        $response = $this->delete(route("users.destroy", $user));

        $response->assertRedirect(route("users.index"));
    }
}
