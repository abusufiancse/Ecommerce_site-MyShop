

@extends('layouts.frontend')

@section('title')
Moyurakkhi | Wishlist
@endsection


@section('content')

    <div class="py-3 mb-4 shadow-sm border-top viewbarcrumb">
        <div class="container">
            <h6 class="mb-0">
                <a class="anchor" href="{{ url('/') }}">
                    Home
                </a> /
                <a class="anchor" href="{{ url('wishlist') }}">
                    Wishlist
                </a>
            </h6>
        </div>
    </div>

    <div class="container my-5">
        <div class="card shadow ">
            <div class="card-body">
                @if ($wishlist->count() > 0)
                    <div class="card-body ">
                        @foreach ($wishlist as $item )
                            <div class="row p-2  product_data">
                                <div class="col-md-2 ">
                                    <img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" height="100px" width="100px" alt="Image Here">
                                </div>
                                <div class="col-md-2">
                                    <h5>{{ $item->products->name }}</h5>
                                </div>
                                <div class="col-md-1  mt-2">
                                    <h5>TK {{ $item->products->selling_price }}</h5>
                                </div>
                                <div class="col-md-4 d-flex">
                                    <input type="hidden" class="product_id" value="{{ $item->product_id }}">

                                    @if ( $item->products->qty >= $item->product_qty )
                                        <h6 class="col-md-3 mt-2">In Stock</h6>
                                        <div class="col-md-9">
                                            <div><label for="Quantity" class="col-md-4 float-start mt-2">Quantity :</label></div>
                                            <div class="input-group text-center col-md-8" style="width:100px;">
                                                <button class="input-group-text decrement-btn">-</button>
                                                <input type="text" name="Quantity" value="1" class="form-control qty-input text-center">
                                                <button class="input-group-text increment-btn">+</button>
                                            </div>
                                        </div>
                                        @else
                                        <h6>Out of Stock</h6>
                                    @endif

                                </div>
                                <div class="col-md-3">
                                    <button type="submit" class="btn btn-success addToCartBtn float-start me-2"> <i class="fa fa-shopping-cart"></i> Add to Cart</button>
                                    <button type="submit" class="btn btn-danger remove-wish-list"> <i class="fa fa-remove"></i> Remove</button>
                                </div>
                            </div>
                            <hr>
                        @endforeach
                    </div>
                @else
                <div class="card-body text-center py-3">
                    <h2>Your <i class="fa fa-heart"></i> Wishlist is Empty ! </h2>
                    <a href="{{ url('category') }}" class="btn btn-outline-primary float-end"> continue Shoping</a>
                </div>
                @endif
            </div>
        </div>

    </div>

@endsection
