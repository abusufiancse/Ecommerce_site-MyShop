<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index()
    {
        $featured_products = Product::where('trending', '1')->take(15)->get();
        $tranding_category = Category::where('popular', '1')->take(15)->get();
        return view('Frontend.index', compact('featured_products', 'tranding_category'));
    }
    public function category()
    {
        $category = Category::where('status', '0')->get();
        return view('Frontend.category', compact('category'));
    }
    public function viewcategory($slug)
    {
        if(Category::where('slug', $slug)->exists())
        {
            $category = Category::where('slug', $slug)->first();
            $products = Product::where('cate_id', $category->id)->where('status', '0')->get();
            return view('frontend.products.index', compact('category', 'products'));
        }
        else{
            return redirect('/')->with('status', "slug doesnot exists");
        }
    }

    public function productview($cate_slug, $product_slug)
    {
        if(Category::where('slug', $cate_slug)->exists())
        {
            if(Product::where('slug', $product_slug)->exists())
            {
                $products = Product::where('slug', $product_slug)->first();
                return view('frontend.products.view', compact('products'));
            }
            else{
                return redirect('/')->with('status', "The link was broken");
            }
        }
        else{
            return redirect('/')->with('status', "No such category found");
        }
    }


    public function productListAjex()
    {
        $products = Product::select('name')->where('status', '0')->get();
        $data = [];

        foreach($products as $item) {
            $data[] = $item['name'];
        }
        return $data;
    }

    public function SearchProduct(Request $request)
    {
        $search_product = $request->product_name;
        if($search_product != "")
        {
            $product = Product::where("name", "LIKE", "%$search_product%")->first();
            if($product)
            {
                return redirect('category/'.$product->category->slug.'/'.$product->slug);
            }
            else{
                return redirect()->back()->with("status","No Product Matched your Search");
            }
        }
        else{
            return redirect()->back();
        }
    }


    public function contactUs()
    {
        return view('frontend.contact');
    }



}
