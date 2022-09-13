<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\CheckoutController;
use App\Http\Controllers\Frontend\UserController;
use App\Http\Controllers\Frontend\WishlistController;



// Route::get('/', function () {
//     return view('welcome');
// });


//Frontend Route start

Route::get('/', [App\Http\Controllers\Frontend\FrontendController::class, 'index']);
Route::get('category', [App\Http\Controllers\Frontend\FrontendController::class, 'category']);
Route::get('view-category/{slug}', [App\Http\Controllers\Frontend\FrontendController::class, 'viewcategory']);
Route::get('category/{cate_slug}/{product_slug}', [App\Http\Controllers\Frontend\FrontendController::class, 'productview']);


Route::get('product-list', [App\Http\Controllers\Frontend\FrontendController::class, 'productListAjex']);
Route::post('searchProduct', [App\Http\Controllers\Frontend\FrontendController::class, 'SearchProduct']);
Route::get('contact-us', [App\Http\Controllers\Frontend\FrontendController::class, 'contactUs']);


Auth::routes();

//cart & wishlist count route
Route::get('load-cart-count', [App\Http\Controllers\Frontend\CartController::class, 'cartCount']);
Route::get('load-wishlist-count', [App\Http\Controllers\Frontend\WishlistController::class, 'wishlistCount']);


//  Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::post('add-to-cart', [App\Http\Controllers\Frontend\CartController::class, 'addCart']);
Route::post('delete-cart-item', [App\Http\Controllers\Frontend\CartController::class, 'deleteCart']);
Route::post('update-cart-item', [App\Http\Controllers\Frontend\CartController::class, 'updateCart']);

//wishlist
Route::post('add-to-wishlist', [App\Http\Controllers\Frontend\WishlistController::class, 'add']);
Route::post('delete-wishlist-item', [App\Http\Controllers\Frontend\WishlistController::class, 'deleteItem']);

Route::middleware(['auth'])->group(function () {
    Route::get('cart', [App\Http\Controllers\Frontend\CartController::class, 'viewCart']);
    Route::get('checkout', [App\Http\Controllers\Frontend\CheckoutController::class, 'index']);
    Route::post('place-order', [App\Http\Controllers\Frontend\CheckoutController::class, 'placeOrder']);

    Route::get('my-orders', [App\Http\Controllers\Frontend\UserController::class, 'index']);
    Route::get('view-order/{id}', [App\Http\Controllers\Frontend\UserController::class, 'view']);

    //wishlist
    Route::get('wishlist', [App\Http\Controllers\Frontend\WishlistController::class, 'index']);



});
//Frontend Route end


//new added bellow
//Backend Route

 Route::middleware(['auth', 'isAdmin'])->group(function () {

    Route::get('/dashboard', [App\Http\Controllers\Admin\AdminController::class, 'index']);


    Route::get('categories', [App\Http\Controllers\Admin\CategoryController::class, 'index']);
    Route::get('add-category', [App\Http\Controllers\Admin\CategoryController::class, 'add']);
    Route::post('insert-category', [App\Http\Controllers\Admin\CategoryController::class, 'insert']);
    Route::get('edit-category/{id}', [App\Http\Controllers\Admin\CategoryController::class, 'edit']);
    Route::post('update-category/{id}', [App\Http\Controllers\Admin\CategoryController::class, 'update']);
    Route::get('delete-category/{id}', [App\Http\Controllers\Admin\CategoryController::class, 'destroy']);


    Route::get('products', [App\Http\Controllers\Admin\ProductController::class, 'index']);
    Route::get('add-products', [App\Http\Controllers\Admin\ProductController::class, 'add']);
    Route::post('insert-product', [App\Http\Controllers\Admin\ProductController::class, 'insert']);
    Route::get('edit-product/{id}', [App\Http\Controllers\Admin\ProductController::class, 'edit']);
    Route::post('update-product/{id}', [App\Http\Controllers\Admin\ProductController::class, 'update']);
    Route::get('delete-product/{id}', [App\Http\Controllers\Admin\ProductController::class, 'destroy']);



    Route::get('orders', [App\Http\Controllers\Admin\OrderController::class, 'index']);
    Route::get('admin/view-order/{id}', [App\Http\Controllers\Admin\OrderController::class, 'view']);
    Route::post('update-order/{id}', [App\Http\Controllers\Admin\OrderController::class, 'updateOrder']);
    Route::get('order-history', [App\Http\Controllers\Admin\OrderController::class, 'orderHistory']);


    Route::get('users', [App\Http\Controllers\Admin\AdminController::class, 'users']);
    Route::get('view-users/{id}', [App\Http\Controllers\Admin\AdminController::class, 'viewUser']);




 });
