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
     Route::get("payrolls", [
        "as" => "payrolls.reports",
        "uses" => "PayrollsReportsController@index",
    ]);
});
  Route::get("payrolls/export", [
        "as" => "payrolls.export",
        "uses" => "PayrollsReportsController@export"
    ]);
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
 Route::resource("employees","EmployeesController");
 Route::get("employee/create", [
     "as" => "employee.create",
      "uses" => "EmployeesController@create"
  ]);
 Route::post("employee/store", [
     "as" => "employee.store",
      "uses" => "EmployeesController@store"
  ]);
  Route::post("employees/{employee}", [
     "as" => "employees.update",
      "uses" => "EmployeesController@update"
  ]);
    Route::get('employeemaster','employee\employeemaster@index');
    Route::get('addemployee','employee\employeemaster@addemployee');
    Route::post('employeestore','employee\employeemaster@store');
    //Route::get('editemployee/{employeeid}/edit','employee\employeemaster@edit');
    Route::get('editemployee/{id}','employee\employeemaster@edit');
    Route::post('employeeupdate/{id}','employee\employeemaster@update');
    Route::get('employeedelete/{id}','employee\employeemaster@destroy');
    Route::get('prlpayroll','employee\employeemaster@prlpayroll');
    Route::get('editemployeedetail/{id}','employee\employeemaster@editemployeedetail');
    Route::get('jobs','job\JobsController@index');
    Route::get('addjob','job\JobsController@create');
    Route::post('new_job','job\JobsController@store');
    Route::get('showjob/{id}','job\JobsController@show');
    Route::get('editjob/{id}','job\JobsController@edit');
    Route::post('update_job/{id}','job\JobsController@update');
    Route::get('deletejob/{id}','job\JobsController@destroy');
    Route::get('viewjobgroups','job\jobgroupsController@index');
    Route::get('createjobgroup','job\jobgroupsController@create');
    Route::post('addjobgroup','job\jobgroupsController@store');
    Route::get('showjobgroup/{id}','job\jobgroupsController@show');
    Route::get('editjobgroup/{id}','job\jobgroupsController@edit');
    Route::post('updatejobgroup/{id}','job\jobgroupsController@update');
    Route::get('deletejobgroup/{id}','job\jobgroupsController@destroy');
    Route::post('addbranch','branch\branchcontroller@store');
    Route::get('createbranch','branch\branchcontroller@create');
    Route::get('viewbranches','branch\branchcontroller@index');
    Route::get('editbranch/{id}','branch\branchcontroller@edit');
    Route::post('updatebranch/{id}','branch\branchcontroller@update');
    Route::get('deletebranch/{id}','branch\branchcontroller@destroy');
    Route::get('showbranch/{id}','branch\branchcontroller@show');
    Route::post('adddepartment','department\DepartmentsController@store');
    Route::get('createdepartment','department\DepartmentsController@create');
    Route::get('viewdepartments','department\DepartmentsController@index');
    Route::get('editdepartment/{id}','department\DepartmentsController@edit');
    Route::post('updatedepartment/{id}','department\DepartmentsController@update');
    Route::get('deletedepartment/{id}','department\DepartmentsController@destroy');
    Route::get('showdepartment/{id}','department\DepartmentsController@show');
    Route::post('addcompany','company\companiesController@store');
    Route::get('createcompany','company\companiesController@create');
    Route::get('viewcompany','company\companiesController@index');
    Route::get('editcompany/{id}','company\companiesController@edit');
    Route::post('updatecompany/{id}','company\companiesController@update');
    Route::get('showcompany/{id}','company\companiesController@show');
    Route::get('deletecompany/{id}','company\companiesController@destroy');
    Route::post('addsss','sss\SssController@store');
    Route::get('editsss/{id}','sss\SssController@edit');
    Route::get('createsss','sss\SssController@create');
     Route::get('viewsss','sss\SssController@index');
     Route::get('deletesss/{id}','sss\SssController@destroy');
     Route::post('updatesss/{id}','sss\SssController@update');
     Route::post('addhdmf','hdmf\Hdmfontroller@store');
    Route::get('edithdmf/{id}','hdmf\Hdmfontroller@edit');
    Route::get('createhdmf','hdmf\Hdmfontroller@create');
     Route::get('viewhdmf','hdmf\Hdmfontroller@index');
     Route::get('deletehdmf/{id}','hdmf\Hdmfontroller@destroy');
     Route::post('updatehdmf/{id}','hdmf\Hdmfontroller@update');
     Route::post('addhealth','health\HealthsController@store');
    Route::get('edithealth/{id}','health\HealthsController@edit');
    Route::get('createhealth','health\HealthsController@create');
     Route::get('viewhealth','health\HealthsController@index');
     Route::get('deletehealth/{id}','health\HealthsController@destroy');
     Route::post('updatehealth/{id}','health\HealthsController@update');
     Route::post('addtax','tax\TaxController@store');
    Route::get('edittax/{id}','tax\TaxController@edit');
    Route::get('createtax','tax\TaxController@create');
     Route::get('viewtax','tax\TaxController@index');
     Route::get('deletetax/{id}','tax\TaxController@destroy');
     Route::post('updatetax/{id}','tax\TaxController@update');
    Route::post('addsalary','salary\SalariesController@store');
    Route::get('createsalary','salary\SalariesController@create');
    Route::post('addpayrollperiod','payroll\payrollsController@store');
    Route::get('showpayroll/{id}','payroll\payrollsController@show');
    Route::get('editpayroll/{id}','payroll\payrollsController@edit');
    Route::post('updatepayroll/{id}','payroll\payrollsController@update');
    Route::get('deletepayroll/{id}','payroll\payrollsController@destroy');
    Route::get('createpayrollperiod','payroll\PayrollsController@create');
    Route::get('viewpayrollperiods','payroll\PayrollsController@index');
    Route::post('generate/{id}','payroll\payrollsController@generate');
    Route::post('void/{id}','payroll\payrollsController@void');
    Route::post('close/{id}','payroll\payrollsController@close');
    Route::post('open/{id}','payroll\payrollsController@open');
    //qualifications
    Route::post('addqualification','qualification\qualificationscontroller@store');
    Route::get('showqualification/{id}','qualification\qualificationscontroller@show');
    Route::get('editqualification/{id}','qualification\qualificationscontroller@edit');
    Route::post('updatequalification/{id}','qualification\qualificationscontroller@update');
    Route::get('deletequalification/{id}','qualification\qualificationscontroller@destroy');
    Route::get('createqualification','qualification\qualificationscontroller@create');
    Route::get('viewqualifications','qualification\qualificationscontroller@index');
    //employee qualifications
    Route::post('addemployeequalification','qualification\employeequalificationscontroller@store');
    Route::get('showemployeequalification/{id}','qualification\employeequalificationscontroller@show');
    Route::get('editemployeequalification/{id}','qualification\employeequalificationscontroller@edit');
    Route::post('updateemployeequalification/{id}','qualification\employeequalificationscontroller@update');
    Route::get('deleteemployeequalification/{id}','qualification\employeequalificationscontroller@destroy');
    Route::get('createemployeequalification','qualification\employeequalificationscontroller@create');
    Route::get('viewemployeequalifications','qualification\employeequalificationscontroller@index');
    //qualification level
    Route::post('addqualificationlevel','qualification\qualificationlevelscontroller@store');
    Route::get('showqualificationlevel/{id}','qualification\qualificationlevelscontroller@show');
    Route::get('editqualificationlevel/{id}','qualification\qualificationlevelscontroller@edit');
    Route::post('updatequalificationlevel/{id}','qualification\qualificationlevelscontroller@update');
    Route::get('deletequalificationlevel/{id}','qualification\qualificationlevelscontroller@destroy');
    Route::get('createqualificationlevel','qualification\qualificationlevelscontroller@create');
    Route::get('viewqualificationlevels','qualification\qualificationlevelscontroller@index');
    //institution
    Route::post('addinstitution','institution\institutescontroller@store');
    Route::get('showinstitution/{id}','institution\institutescontroller@show');
    Route::get('editinstitution/{id}','institution\institutescontroller@edit');
    Route::post('updateinstitution/{id}','institution\institutescontroller@update');
    Route::get('deleteinstitution/{id}','institution\institutescontroller@destroy');
    Route::get('createinstitution','institution\institutescontroller@create');
    Route::get('viewinstitutions','institution\institutescontroller@index');
//dependants
    Route::post('adddependant','dependant\dependantscontroller@store');
     Route::post('addemployeedependant','dependant\dependantscontroller@storeemployeedependant');
    Route::get('showdependant/{id}','dependant\dependantscontroller@show');
    Route::get('editdependant/{id}','dependant\dependantscontroller@edit');
    Route::post('updatedependant/{id}','dependant\dependantscontroller@update');
    Route::get('deletedependant/{id}','dependant\dependantscontroller@destroy');
    Route::get('createdependant','dependant\dependantscontroller@create');
    
    Route::get('createdependant/{id}','dependant\dependantscontroller@createemployeedependant');
    Route::get('viewdependants','dependant\dependantscontroller@index');
    //work Experience
    Route::post('addworkexperience','workexperience\workexperiencecontroller@store');
    Route::get('showworkexperience/{id}','workexperience\workexperiencecontroller@show');
    Route::get('editworkexperience/{id}','workexperience\workexperiencecontroller@edit');
    Route::post('updateworkexperience/{id}','workexperience\workexperiencecontroller@update');
    Route::get('deleteworkexperience/{id}','workexperience\workexperiencecontroller@destroy');
    Route::get('createworkexperience','workexperience\workexperiencecontroller@create');
    Route::get('viewworkexpiriences','workexperience\workexperiencecontroller@index');
    Route::get('testreport','report\reportcontroller@test');
    Route::get('testpdf','report\reportcontroller@testpdf');
     Route::post('employeebio','report\reportscontroller@employeebio');
     Route::get('reportform','report\reportscontroller@reportform');
     Route::get('payslipform','report\reportscontroller@payslipform');
     Route::get('payslip','report\reportscontroller@payslip');
     Route::get('payrollregisterform','report\reportscontroller@payrollregisterform');
     Route::post('payrollregister','report\reportscontroller@payrollregister');
     Route::get('payrollregisterformpdf','report\reportscontroller@payrollregisterformpdf');
     Route::post('payrollregisterpdf','report\reportscontroller@payrollregisterpdf');
     Route::post('printpayslip/{id}','report\reportscontroller@print');
     
     Route::get('form','form\FormController@create');
     Route::post('form','form\FormController@store');
     Route::get('formlist','form\FormController@index');
     Route::get('createimage/{id}','form\FormController@createimage');
     Route::post('updateimage','form\FormController@updateimage');
     //payrolls
    Route::post('addotherdeduction','otherdeduction\otherdeductionscontroller@store');
    Route::get('showotherdeduction/{id}','otherdeduction\otherdeductionscontroller@show');
    Route::get('editotherdeduction/{id}','otherdeduction\otherdeductionscontroller@edit');
    Route::post('updateotherdeduction/{id}','otherdeduction\otherdeductionscontroller@update');
    Route::get('deleteotherdeduction/{id}','otherdeduction\otherdeductionscontroller@destroy');
    Route::get('createotherdeduction','otherdeduction\otherdeductionscontroller@create');
    Route::get('viewotherdeductions','otherdeduction\otherdeductionscontroller@index');
     Route::get('deductionstypes','otherdeduction\deductions\deductionsController@index');
    Route::get('createdeductiontype','otherdeduction\deductions\deductionsController@create');
    Route::post('storedeductiontype','otherdeduction\deductions\deductionsController@store');
    Route::get('deletedeductiontype/{id}','otherdeduction\deductions\deductionsController@destroy');
    Route::post('updatdeductiontype/{id}','otherdeduction\deductions\deductionsController@update');
    Route::get('editdeductiontype/{id}','otherdeduction\deductions\deductionsController@edit');
    Route::post('addotherincome','otherincome\otherincomescontroller@store');
    Route::get('showotherincome/{id}','otherincome\otherincomescontroller@show');
    Route::get('editotherincome/{id}','otherincome\otherincomescontroller@edit');
    Route::post('updateotherincome/{id}','otherincome\otherincomescontroller@update');
    Route::get('deleteotherincome/{id}','otherincome\otherincomescontroller@destroy');
    Route::get('createotherincome','otherincome\otherincomescontroller@create');
    Route::get('viewotherincomes','otherincome\otherincomescontroller@index');
    Route::get('incomestypes','otherincome\incomes\incomesController@index');
    Route::get('createincometype','otherincome\incomes\incomesController@create');
    Route::post('storeincometype','otherincome\incomes\incomesController@store');
    Route::get('deleteincometype/{id}','otherincome\incomes\incomesController@destroy');
    Route::post('updatincometype/{id}','otherincome\incomes\incomesController@update');
    Route::get('editincometype/{id}','otherincome\incomes\incomesController@edit');
     Route::post('addloan','loan\loanscontroller@store');
    Route::get('showloan/{id}','loan\loanscontroller@show');
    Route::get('editloan/{id}','loan\loanscontroller@edit');
    Route::post('updateloan/{id}','loan\loanscontroller@update');
    Route::get('deleteloan/{id}','loan\loanscontroller@destroy');
    Route::get('createloan','loan\loanscontroller@create');
    Route::get('viewloans','loan\loanscontroller@index');