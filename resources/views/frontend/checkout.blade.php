@extends('layouts.frontend')

@section('title')
Moyurakkhi | Checkout
@endsection


@section('content')

    <div class="py-3 mb-4 shadow-sm border-top viewbarcrumb">
        <div class="container">
            <h6 class="mb-0">
                <a class="anchor" href="{{ url('/') }}">
                    Home
                </a> /
                <a class="anchor" href="{{ url('cart') }}">
                    Cart /
                </a>
                <a class="anchor" href="">
                    Checkout
                </a>
            </h6>
        </div>
    </div>

    <div class="container my-5">
        <form action="{{ url('place-order') }}" method="POST">
            @csrf
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h6>Basic Details</h6>
                            <hr>
                            <div class="row checkout-form">
                                <div class="col-md-6">
                                    <label for="firstName">First Name</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->name }}" name="fname" placeholder="Enter Your Fast Name">
                                </div>
                                <div class="col-md-6">
                                    <label for="lastName">Last Name</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->lname }}" name="lname" placeholder="Enter Your Last Name">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" value="{{ Auth::user()->email }}" name="email" placeholder="Enter Your Email">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Phone Number</label>
                                    <input type="number" class="form-control" value="{{ Auth::user()->phone }}" name="phone" placeholder="Enter Your Phone Number">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Address 1</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->address1 }}" name="address1" placeholder="Enter Your Address 1">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Address 2</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->address2 }}" name="address2" placeholder="Enter Your Address 2">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">City</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->city }}" name="city" placeholder="Enter Your City">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">State</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->state }}" name="state" placeholder="Enter Your State">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Country</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->country }}" name="country" placeholder="Enter Your Country">
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Zip Code</label>
                                    <input type="text" class="form-control" value="{{ Auth::user()->zip }}" name="zip" placeholder="Enter Your Zip Code">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <h6>Order Details</h6>
                            <hr>
                            <table class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>Product Name</th>
                                        <th class="text-center">Qty</th>
                                        <th class="text-center">Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($cartitems as $item)
                                        <tr>
                                            <td>{{ $item->products->name }}</td>
                                            <td class="text-center">{{ $item->product_qty }}</td>
                                            <td class="text-center">{{ $item->products->selling_price }} Tk</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <hr>
                            <button type="submit" class="btn btn-primary w-100">Place Order</button>

                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

@endsection
