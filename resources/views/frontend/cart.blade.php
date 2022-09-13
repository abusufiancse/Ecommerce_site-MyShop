@extends('layouts.frontend')

@section('title')
Moyurakkhi | Cart
@endsection


@section('content')

    <div class="py-3 mb-4 shadow-sm border-top viewbarcrumb">
        <div class="container">
            <h6 class="mb-0">
                <a class="anchor" href="{{ url('/') }}">
                    Home
                </a> /
                <a class="anchor" href="{{ url('cart') }}">
                    Cart
                </a>
            </h6>
        </div>
    </div>

    <div class="container my-5">
        <div class="card shadow ">
            @if($cartItems->count() > 0)
                <div class="card-body ">
                    @php $total = 0; @endphp
                    @foreach ($cartItems as $item )
                        <div class="row p-2 product_data">
                            <div class="col-md-1 me-4 ">
                                <img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" height="100px" width="100px" alt="Image Here">
                            </div>
                            <div class="col-md-2 mt-3">
                                <h5>{{ $item->products->name }}</h5>
                            </div>
                            <div class="col-md-2 mt-3">
                                <h5>{{ $item->products->selling_price }} Tk</h5>
                            </div>

                            <div class="col-md-4 d-flex">
                                <input type="hidden" class="product_id" value="{{ $item->product_id }}">

                                @if ( $item->products->qty >= $item->product_qty )
                                    <h6 class="col-md-4 mt-2 me-2">In Stock</h6>
                                    <div class="col-md-8">
                                        <div><label for="Quantity" class="col-md-4 float-start mt-2">Quantity :</label></div>
                                        <div class="input-group text-center col-md-8" style="width:100px;">
                                            <button class="input-group-text chengeQuantity decrement-btn">-</button>
                                            <input type="text" name="Quantity" value="{{ $item->product_qty }}" class="form-control qty-input text-center">
                                            <button class="input-group-text chengeQuantity increment-btn">+</button>
                                        </div>
                                    </div>
                                    @else
                                    <h6>Out of Stock</h6>
                                @endif

                            </div>
                            <div class="col-md-2">
                                <button type="submit" class="btn btn-danger delete-cart-item"> <i class="fa fa-remove"></i> Remove</button>
                            </div>
                        </div>
                        <hr>
                        @php $total += $item->products->selling_price * $item->product_qty ; @endphp
                    @endforeach
                </div>
                <div class="card-footer py-3">
                    <div class="float-start">
                        <h6 class="mt-2">Total Price : {{ $total }} TK</h6>
                    </div>
                    <div class="float-end me-3">
                        <a class="btn btn-outline-success" href="{{ url('checkout') }}">Proceed to Checkout</a>
                    </div>
                </div>
            @else
                <div class="card-body text-center py-3">
                    <h2>Your <i class="fa fa-shopping-cart"></i> Cart is Empty ! </h2>
                    <a href="{{ url('category') }}" class="btn btn-outline-primary float-end"> continue Shoping</a>
                </div>
            @endif
        </div>

    </div>

@endsection
