<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WishlistController extends Controller
{
    public function index()
    {
        $wishlist = Wishlist::where('user_id', Auth::id())->get();
        return view('frontend.wishlist', compact('wishlist'));
    }

    // public function add(Request $request)
    // {
    //     if(Auth::check())
    //     {
    //         $product_id = $request->input('product_id');
    //         if(Product::find($product_id))
    //         {
    //             $wish = new Wishlist();
    //             $wish->product_id = $product_id;
    //             $wish->user_id = Auth::id();
    //             $wish->save();
    //             return response()->json(['status' => "Product Added to Wishlist"]);
    //         }
    //         else{
    //             return response()->json(['status' => "Product dosen't exist"]);
    //         }
    //     }
    //     else
    //     {
    //         return response()->json(['status'=>"Login to Continue"]);
    //     }
    // }


    public function add(Request $request)
    {
        $product_id = $request->input('product_id');

        if(Auth::check())
        {
            $product_check = Product::where('id', $product_id)->first();

            if($product_check)
            {
                if(Wishlist::where('product_id', $product_id)->where('user_id', Auth::id())->exists())
                {
                    return response()->json(['status' => $product_check->name." Already Added to Wishlist"]);
                }
                else
                {
                    $wish = new Wishlist();
                    $wish->product_id = $product_id;
                    $wish->user_id = Auth::id();
                    $wish->save();
                    return response()->json(['status' => "Product Added to Wishlist"]);
                }
            }
        }
        else
        {
            return response()->json(['status'=>"Login to Continue"]);
        }
    }




    public function deleteItem(Request $request)
    {
        if(Auth::check())
        {
            $product_id = $request->input('product_id');
            if(Wishlist::where('product_id', $product_id)->where('user_id', Auth::id())->exists())
            {
                $wish = Wishlist::where('product_id', $product_id)->where('user_id', Auth::id())->first();
                $wish->delete();
                return response()->json(['status' => "Wishlist Item Remove Successfully"]);
            }
        }
        else{
            return response()->json(['status' => "Login to Continue"]);
        }
    }

    public function wishlistCount()
    {
        $whislistCount = Wishlist::where('user_id', Auth::id())->count();
        return response()->json(['count' => $whislistCount]);
    }





}

