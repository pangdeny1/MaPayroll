<?php

namespace App\Http\Controllers;

use App\Exports\ProductCategoriesExport;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Requests\ProductCategoryCreateRequest;
use App\ProductCategory;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class ProductCategoriesController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function index()
    {
        $this->authorize("view", ProductCategory::class);

        $productCategories = ProductCategory::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("name", "LIKE", "%". request("q") ."%")
                    ->orWhere("description", "LIKE", "%". request("q") ."%");
            })
            ->paginate(10);

        return view("products.categories.index", compact("productCategories"));
    }

    public function create()
    {
        $this->authorize("create", ProductCategory::class);

        return view("products.categories.create");
    }

    public function store(ProductCategoryCreateRequest $request)
    {
        $this->authorize("create", ProductCategory::class);

        ProductCategory::create($request->only(["name", "description",]));

        return redirect()->route("product_categories.index");
    }

    public function show(ProductCategory $productCategory)
    {
        //
    }

    public function edit(ProductCategory $productCategory)
    {
        return view("products.categories.edit", compact("productCategory"));
    }

    public function update(Request $request, ProductCategory $productCategory)
    {
        $this->validate($request, [
            "name" => "required",
            "description" => "required",
        ]);

        $productCategory->update($request->only(["name", "description",]));

        return redirect()->route("product_categories.index");
    }

    public function destroy(ProductCategory $productCategory)
    {
        $productCategory->products()->detach();

        $productCategory->delete();

        return redirect()->back();
    }

    public function export() 
    {
        return Excel::download(new ProductCategoriesExport, 'product_categories.xlsx');
    }
}
