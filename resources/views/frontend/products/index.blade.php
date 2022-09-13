@extends('layouts.frontend')

@section('title')
Moyurakkhi | {{ $category->name }}
@endsection

@section('content')

    <div class="py-3 mb-4 shadow-sm border-top viewbarcrumb">
        <div class="container">
            <h6 class="mb-0">
                <a class="anchor" href="{{ url('category') }}">
                    Collections
                </a> /
                {{ $category->name }}
            </h6>
        </div>
    </div>

    <div class="py-5">
        <div class="container">
            <div class="row">

                <div class="col-md-12">
                    <h2>{{ $category->name }}</h2>
                    <div class="row">
                        @foreach ( $products as $product )
                            <div class="col-md-3 mb-3">
                                <a class="catList" href="{{ url('category/'.$category->slug.'/'.$product->slug) }}">
                                    <div class="card py-3">
                                        <img style="height: 300px" src="{{ asset('assets/uploads/products/'.$product->image) }}" alt="Product Image">
                                        <div class="card-body text-center">
                                            <h5>{{ $product->name }}</h5>
                                            <span class="float-start">TK {{ $product->selling_price }}</span>
                                            <span class="float-end"><s>TK {{ $product->selling_price }}</s></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
