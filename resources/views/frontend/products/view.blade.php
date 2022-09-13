@extends('layouts.frontend')

@section('title')
Moyurakkhi | {{ $products->name }}
@endsection

@section('content')

    <div class="py-3 mb-4 shadow-sm border-top viewbarcrumb">
        <div class="container">
            <h6 class="mb-0">
                <a class="anchor" href="{{ url('category') }}">
                    Collections
                </a> /
                <a class="anchor" href="{{ url('view-category/'.$products->category->slug) }}">
                    {{ $products->category->name }}
                </a> /
                {{ $products->name }}
            </h6>
        </div>
    </div>

    <div class="container">
        <div class="card shadow product_data mb-5">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4 border-right">
                        <img style="height: 300px" src="{{ asset('assets/uploads/products/'.$products->image) }}" class="w-100" alt="">
                    </div>
                    <div class="col-md-8">
                        <h2 class="mb-0">
                            {{ $products->name }}
                            <label style="font-size: 16px;" class="float-end badge bg-danger trending_tag" for="">{{ $products->trending == '1'? 'Trending':'' }}</label>
                        </h2>
                        <hr>
                        <label class="me-3" for="">Original Price : <s>TK {{ $products->original_price }}</s></label>
                        <label class="fw-bold" for="">Selling Price : TK {{ $products->selling_price }}</label>
                        <p class="mt-3">
                            {!! $products->small_description !!}
                        </p>
                        <hr>
                        @if($products->qty > 0)
                            <label class="badge bg-success" for="">In Stock</label>
                        @else
                            <label class="badge bg-danger" for="">Out of Stock</label>
                        @endif
                        <div class="row mt-2">
                            <div class="col-md-2">
                                <input type="hidden" value="{{ $products->id }}" class="product_id mb-2">
                                <label for="Quantity">Quantity</label>
                                <div class="input-group text-center mt-2">
                                    <button class="input-group-text decrement-btn">-</button>
                                    <input type="text" name="Quantity" value="1" class="form-control qty-input">
                                    <button class="input-group-text increment-btn">+</button>
                                </div>
                            </div>
                            <div class="col-md-10 mt-2">
                                <br/>

                                @if($products->qty > 0)
                                    <button type="submit" class="btn btn-primary me-3 addToCartBtn float-start">Add to Cart  <i class="fa fa-shopping-cart"></i></button>
                                @endif
                                <button type="button" class="btn btn-success me-3 addToWishlistBtn float-start">Add to Wishlist  <i class="fa fa-heart"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <h3 class="p-3">Product Description</h3>
                <p class="ps-3">
                    {!! $products->description !!}
                </p>
            </div>
        </div>
    </div>
@endsection



