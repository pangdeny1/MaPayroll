<?php

Auth::routes();

Route::view("/", "welcome");

Route::view("template", "template");

Route::view("pdf", "pdf");

Route::get('dashboard', [
    "as" => "home",
    "uses" => "HomeController@index"
]);



Route::get("accounts/{user}/activations", [
    "as" => "accounts.activate",
    "uses" => "AccountActivationsController@create",
]);





    Route::get("users/export", [
        "as" => "users.export",
        "uses" => "UsersController@export"
    ]);
    Route::resource("users", "UsersController");

    Route::resource("roles", "RolesController");

 Route::get("users/{user}/passwordchange", [
    "as" => "password.change",
     "uses" => "ResetPasswordController@change",
 ]);
  Route::get("changepassword", [
     "as" => "changepassword.index",
      "uses" => "ChangePasswordControllerr@index"
  ]);
  Route::resource("changepassword", "Auth\ChangePasswordController");
 Route::post("changepassword/{user}","Auth\ChangePasswordController@update");


     
     


 




