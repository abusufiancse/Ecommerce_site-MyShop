<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartController extends Controller
{
    public function addCart(Request $request)
    {
        $product_id = $request->input('product_id');
        $prod_qty = $request->input('product_qty');

        if(Auth::check())
        {
            $product_check = Product::where('id', $product_id)->first();

            if($product_check)
            {
                if(Cart::where('product_id', $product_id)->where('user_id', Auth::id())->exists())
                {
                    return response()->json(['status' => $product_check->name." Already Added to Cart"]);
                }
                else{
                    $cartItem = new Cart();
                    $cartItem->product_id = $product_id;
                    $cartItem->user_id = Auth::id();
                    $cartItem->product_qty = $prod_qty;
                    $cartItem->save();
                    return response()->json(['status' => $product_check->name." Added to Cart"]);
                }
            }
        }
        else{
            return response()->json(['status' => "Login to Continue"]);
        }
    }

    public function viewCart()
    {
        $cartItems = Cart::where('user_id', Auth::id())->get();
        return view('frontend.cart', compact('cartItems'));
    }

    public function deleteCart(Request $request)
    {
        if(Auth::check())
        {
            $product_id = $request->input('product_id');
            if(Cart::where('product_id', $product_id)->where('user_id', Auth::id())->exists())
            {
                $cartItem = Cart::where('product_id', $product_id)->where('user_id', Auth::id())->first();
                $cartItem->delete();
                return response()->json(['status' => "Cart Product Deleted Successfully"]);
            }
        }
        else{
            return response()->json(['status' => "Login to Continue"]);
        }
    }

    public function updateCart(Request $request)
    {
        $product_id = $request->input('product_id');
        $prod_qty = $request->input('product_qty');
        if(Auth::check())
        {
            if(Cart::where('product_id', $product_id)->where('user_id', Auth::id())->exists())
            {
                $cart = Cart::where('product_id', $product_id)->where('user_id', Auth::id())->first();
                $cart->product_qty = $prod_qty;
                $cart->update();
                return response()->json(['status' => "Quantity Updated Successfully"]);
            }
        }
    }

    public function cartCount()
    {
    $cartCount = Cart::where('user_id', Auth::id())->count();
    return response()->json(['count' => $cartCount]);
    }







}

