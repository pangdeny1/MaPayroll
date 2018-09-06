<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductCreateRequest;
use App\Product;
use App\ProductCategory;
use App\ProductPrice;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;
use App\Exports\ProductsExport;
use Maatwebsite\Excel\Facades\Excel;

class ProductsController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    /**
     * @return View
     * @throws AuthorizationException
     */
    public function index()
    {
        $this->authorize("view", Product::class);

        $products = Product::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("name", "LIKE", "%". request("q") ."%")
                    ->orWhere("description", "LIKE", "%". request("q") ."%");
            })
            ->paginate();

        return view("products.index", compact("products"));
    }

    /**
     * @return View
     * @throws AuthorizationException
     */
    public function create()
    {
        $this->authorize("create", Product::class);

        $productCategories = ProductCategory::all();

        return view("products.create", compact("productCategories"));
    }

    /**
     * @param ProductCreateRequest $request
     * @return RedirectResponse
     * @throws AuthorizationException
     */
    public function store(ProductCreateRequest $request)
    {
        $this->authorize("create", Product::class);

        $product = Product::create($request->only(["name", "description"]));

        $product->categories()->attach(request("category_id"));

        return redirect()->route("products.index");
    }

    public function edit(Product $product)
    {
        $this->authorize("edit", $product);

        $productCategories = ProductCategory::all();

        return view("products.edit", compact("productCategories", "product"));
    }

    /**
     * @param ProductCreateRequest $request
     * @return RedirectResponse
     * @throws AuthorizationException
     */
    public function update(ProductCreateRequest $request, Product $product)
    {
        $this->authorize("edit", $product);

        $product->update($request->only(["name", "description"]));

        $product->categories()->sync(request("category_id"));

        return redirect()->route("products.index");
    }

    /**
     * @param ProductCreateRequest $request
     * @return RedirectResponse
     * @throws AuthorizationException
     */
    public function destroy(Product $product)
    {
        $this->authorize("delete", $product);

        $product->categories()->detach();

        $product->delete();

        return redirect()->route("products.index");
    }

    /**
     * @param ProductCreateRequest $request
     * @return RedirectResponse
     * @throws AuthorizationException
     */
    public function export() 
    {
        return Excel::download(new ProductsExport, 'products.xlsx');
    }
}
