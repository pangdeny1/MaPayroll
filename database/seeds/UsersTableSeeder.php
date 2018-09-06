<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Role::forceCreate([
            "name"  => "admin",
            "title" => "System administrator",
            "level" => 1,
            "description" => "Responsible for the upkeep, configuration, and reliable operation of the systems; The system administrator seeks to ensure that the uptime, performance, resources, and security of the computers they manage meet the needs of the users.",
        ]);

        \Bouncer::allow("admin")->everything();

        $user = factory(\App\User::class)->create([
            "email" => "admin@homeverge.co.tz"
        ]);

        $user->assign('admin');
    }
}
