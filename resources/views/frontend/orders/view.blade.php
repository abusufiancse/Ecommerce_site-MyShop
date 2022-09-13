@extends('layouts.frontend')

@section('title')
Moyurakkhi | My-Order
@endsection


@section('content')
    <div class="container my-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header bg-info text-white">
                        <h4 class="my-2">
                            Order View
                            <a class="float-end anchor" href="{{ url('my-orders') }}"><i class="fa fa-arrow-left text-white"></i>Back</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-5 orderView">
                                <h4>Shipping Details</h4>
                                <hr>
                                <label for="">First Name :</label>
                                <div class="border p-2 ">{{ $orders->fname }}</div>
                                <label for="">Last Name :</label>
                                <div class="border p-2 ">{{ $orders->lname }}</div>
                                <label for="">Email :</label>
                                <div class="border p-2 ">{{ $orders->email }}</div>
                                <label for="">Contact No :</label>
                                <div class="border p-2 ">{{ $orders->phone }}</div>
                                <label for="">Shipping Address :</label>
                                <div class="border p-2 ">
                                    {{ $orders->address1 }},
                                    {{ $orders->address2 }},
                                    {{ $orders->city }},
                                    {{ $orders->state }},
                                    {{ $orders->country }},
                                </div>
                                <label for="">Zip Code :</label>
                                <div class="border p-2 ">{{ $orders->zip }}</div>
                            </div>
                            <div class="col-md-7">
                                <h4>Order Details</h4>
                                <hr>
                                <table class="table table-bordered table-hover text-center mt-4">
                                    <thead>
                                        <tr>
                                            <th>Order Date</th>
                                            <th>Product Name</th>
                                            <th>Quantity</th>
                                            <th>Total Price</th>
                                            <th>Image</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($orders->orderitems as $item)
                                            <tr>
                                                <td>{{ date('d-m-Y', strtotime($item->created_at)) }}</td>
                                                <td>{{ $item->products->name }}</td>
                                                <td>{{ $item->qty }}</td>
                                                <td>{{ $item->price }} Tk</td>
                                                <td>
                                                    <img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" alt="Product Image" height="80px" width="80px">
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <hr>
                                <h4 class="px-2">Grand Total: <span class="float-end">{{ $orders->total_price }} Tk</span> </h4>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection
