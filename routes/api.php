<?php

Route::get("roles", "Api\RolesController@index");
Route::get("crops", "Api\CropsController@index");

Route::get("blocks/{block}/products", "Api\BlockProductsController@index");
Route::get("products/{product}/prices", "Api\ProductPricesController@index");

Route::get("farmers/{farmer}/batches",   "Api\FarmerBatchesController@index");
Route::get("farmers/{farmer}/blocks",   "Api\FarmerBlocksController@index");

Route::get("farms/{farm}/blocks",   "Api\FarmBlocksController@index");
Route::get("farms/{farm}/crops",    "Api\FarmCropsController@index");

Route::get("farmers", "Api\FarmersController@index");
Route::get("employees", "Api\EmployeesController@index");
