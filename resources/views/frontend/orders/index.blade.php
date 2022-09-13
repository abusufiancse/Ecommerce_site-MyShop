@extends('layouts.frontend')

@section('title')
Moyurakkhi | My-Order
@endsection


@section('content')
    <div class="wrapper container mt-5 mb-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header bg-info text-white">
                        <h4 class="my-2">My Orders</h4>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered table-hover text-center">
                            <thead>
                                <tr>
                                    <th>Tracking Number</th>
                                    <th>Total Price</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($orders as $item)
                                    <tr>
                                        <td>{{ $item->tracking_no }}</td>
                                        <td>{{ $item->total_price }} Tk</td>
                                        <td>{{ $item->status == '0' ? 'panding' : 'completed' }}</td>
                                        <td>
                                            <a href="{{ url('view-order/'.$item->id) }}" class="btn btn-primary"> <i class="fa fa-eye"></i> View</a>
                                            <a href="" class="btn btn-danger"><i class="fa fa-remove "></i> Cancel</a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
@endsection
