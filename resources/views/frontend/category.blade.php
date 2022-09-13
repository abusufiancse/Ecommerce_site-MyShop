@extends('layouts.frontend')

@section('title')
Moyurakkhi | Category
@endsection

@section('content')

    <div class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="pb-3">All Category</h2>
                    <div class="row">
                        @foreach ($category as $cate )
                            <div class="col-md-3 mb-3">
                                <a class="catList" href="{{ url('view-category/'.$cate->slug) }}">
                                    <div class="card py-3">
                                        <img style="height: 300px" src="{{ asset('assets/uploads/category/'.$cate->image) }}" alt="Category Image">
                                        <div class="card-body text-center">
                                            <h5>{{ $cate->name }}</h5>
                                            {{-- <p>
                                                {{ $cate->description }}
                                            </p> --}}
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
