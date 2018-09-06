<?php

Auth::routes();

Route::view("/", "welcome");

Route::view("template", "template");

Route::view("pdf", "pdf");

Route::get('dashboard', [
    "as" => "home",
    "uses" => "HomeController@index"
]);

Route::post("clusters/{batch}/members",   [
    "as"    => "clusters.members.store",
    "uses"  => "ClusterMembersController@store"
]);


Route::get("accounts/{user}/activations", [
    "as" => "accounts.activate",
    "uses" => "AccountActivationsController@create",
]);

Route::patch("purchases/{purchase}/packing_house_weight", [
    "as" => "packing_house_weight.record",
    "uses" => "PackingHouseWeightController@update",
]);
Route::patch("purchases/{purchase}/graded_weight", [
    "as" => "graded_weight.record",
    "uses" => "GradedWeightController@update",
]);

Route::delete("purchases/{purchase}/rejections", [
    "as" => "purchases.rejections.delete",
    "uses" => "PurchaseRejectionsController@destroy"
]);
Route::patch("purchases/{purchase}/completions", [
    "as" => "purchases.completions.store",
    "uses" => "PurchaseCompletionsController@store"
]);
Route::patch("purchases/{purchase}/payment_completions", [
    "as" => "purchases.payment_completions.store",
    "uses" => "PurchasePaymentCompletionsController@store"
]);
Route::post("purchases/{purchase}/remarks", [
    "as" => "purchases.remarks.store",
    "uses" => "PurchaseRemarksController@store",
]);

Route::post("remarks/{remark}/replays", [
    "as" => "remarks.replays.store",
    "uses" => "RemarkReplaysController@store",
]);

Route::get("farmers/{farmer}/farms", [
    "as" => "farmers.farms.index",
    "uses" => "FarmerFarmsController@index",
]);
Route::get("farmers/{farmer}/farms/create", [
    "as" => "farmers.farms.create",
    "uses" => "FarmerFarmsController@create",
]);

Route::get("farmers/{farm}/farms/edit", [
    "as" => "farmers.farms.edit",
    "uses" => "FarmerFarmsController@edit",
]);

Route::post("farmers/{farm}/farms/update", [
    "as" => "farmers.farms.update",
    "uses" => "FarmerFarmsController@update",
]);


Route::post("farmers/{farmer}/farms", [
    "as" => "farmers.farms.store",
    "uses" => "FarmerFarmsController@store",
]);

Route::get("farmers/{farmer}/household_blocks", [
    "as" => "farmers.household_blocks.index",
    "uses" => "FarmerHouseholdBlocksController@index",
]);
Route::get("farmers/{farmer}/household_blocks/create", [
    "as" => "farmers.household_blocks.create",
    "uses" => "FarmerHouseholdBlocksController@create",
]);
Route::post("farmers/{farmer}/household_blocks", [
    "as" => "farmers.household_blocks.store",
    "uses" => "FarmerHouseholdBlocksController@store",
]);

Route::delete("farmers/{block}/household_blocks/destroy", [
    "as" => "farmers.household_block.destroy",
    "uses" => "FarmerHouseholdBlocksController@destroy",
]);


Route::get("farmers/{farm}/household_blocks/edit/{farmer}", [
    "as" => "farmers.household_blocks.edit",
    "uses" => "FarmerHouseholdBlocksController@edit",
]);

Route::post("farmers/{farm}/household_blocks/update/{farmer}", [
    "as" => "farmers.household_blocks.update",
    "uses" => "FarmerHouseholdBlocksController@update",
]);


Route::get("farmers/{farmer}/harvests", [
    "as" => "farmers.harvests.index",
    "uses" => "FarmerHarvestsController@index",
]);
Route::get("farmers/{farmer}/harvests/create", [
    "as" => "farmers.harvests.create",
    "uses" => "FarmerHarvestsController@create",
]);
Route::post("farmers/{farmer}/harvests", [
    "as" => "farmers.harvests.store",
    "uses" => "FarmerHarvestsController@store",
]);

Route::get("farmers/{farmer}/sales", [
    "as" => "farmers.sales.index",
    "uses" => "FarmerSalesController@index",
]);
Route::get("farmers/{farmer}/batches", [
    "as" => "farmers.batches.index",
    "uses" => "FarmerBatchesController@index",
]);
Route::get("farmers/{farmer}/settings", [
    "as" => "farmers.settings.index",
    "uses" => "FarmerSettingsController@index",
]);

Route::resource("farmers", "FarmersController");
Route::post("farmers/{farmer}", "FarmersController@update");

Route::resource("purchases", "PurchasesController");

Route::get("clusters", [
    "as" => "clusters.index",
    "uses" => "ClustersController@index"
]);
Route::get("clusters/export", [
    "as" => "clusters.export",
    "uses" => "ClustersController@export"
]);
Route::get("clusters/{batch}/purchases", [
    "as" => "clusters.purchases.index",
    "uses" => "ClusterPurchasesController@index",
]);

Route::get("clusters/{batch}/export_pdf", [
    "as" => "clusters.purchases.export_pdf",
    "uses" => "ClusterPurchasesController@exportAsPdf",
]);

Route::get("clusters/{batch}/export_excel", [
    "as" => "clusters.purchases.export_excel",
    "uses" => "ClusterPurchasesController@exportAsExcel",
]);

Route::get("clusters/{batch}/print", [
    "as" => "clusters.purchases.print",
    "uses" => "ClusterPurchasesController@print",
]);

Route::post("clusters/{batch}/purchases", [
    "as" => "clusters.purchases.store",
    "uses" => "ClusterPurchasesController@store",
]);


Route::prefix('reports')->group(function () {
    Route::get("purchases", [
        "as" => "purchases.reports",
        "uses" => "PurchasesReportsController@index",
    ]);
    Route::get("products", [
        "as" => "products.reports",
        "uses" => "ProductsReportsController@index",
    ]);
});

Route::prefix('settings')->group(function () {
    
    Route::post("groups/{group}/products", [
        "as" => "groups.products.store",
        "uses" => "GroupProductsController@store"
    ]);
    Route::get("group_products", [
        "as" => "group_products.index",
        "uses" => "GroupProductsController@index"
    ]);
    Route::patch("group_products/{id}", [
        "as" => "group_products.update",
        "uses" => "GroupProductsController@update"
    ]);

    Route::get("blocks/export", [
        "as" => "blocks.export",
        "uses" => "BlocksController@export"
    ]);
    Route::resource("blocks", "BlocksController");

    Route::get("groups/export", [
        "as" => "groups.export",
        "uses" => "GroupsController@export"
    ]);
    Route::resource("groups", "GroupsController");

    Route::get("users/export", [
        "as" => "users.export",
        "uses" => "UsersController@export"
    ]);
    Route::resource("users", "UsersController");

    Route::resource("roles", "RolesController");

    Route::get("products/exports", [
        "as" => "products.export",
        "uses" => "ProductsController@export"
    ]);
    Route::resource("products", "ProductsController");


    Route::get("batches","BatchesController@index");
    Route::resource("batches", "BatchesController");
    Route::post("batches/{batch}","BatchesController@update");


    Route::get("batches/export", [
        "as" => "batches.export",
        "uses" => "BatchesController@export"
    ]);
    Route::resource("batches", "BatchesController");

    Route::get("product_categories/export", [
        "as" => "product_categories.export",
        "uses" => "ProductCategoriesController@export",
    ]);
    Route::resource("product_categories", "ProductCategoriesController");
});

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


