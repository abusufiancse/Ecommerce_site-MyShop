@extends('layouts.frontend')

@section('title')
Moyurakkhi | Biggest Online Shop
@endsection


@section('content')

    @include('layouts.partials.slider')

    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>Featured Products</h2>
                <div class="owl-carousel featured-carousel owl-theme">
                    @foreach ( $featured_products as $product )

                        <div class="item card">
                            <a class="catList" href="{{ url('category/'.$product->category->slug.'/'.$product->slug) }}">
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

    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>Trending Category</h2>
                <div class="owl-carousel featured-carousel owl-theme">
                    @foreach ( $tranding_category as $tcategory )
                        <div class="item card">
                            <a class="catList" href="{{ url('view-category/'.$tcategory->slug) }}">
                                <div class="card py-3">
                                    <img style="height: 300px" src="{{ asset('assets/uploads/category/'.$tcategory->image) }}" alt="Product Image">
                                    <div class="card-body text-center">
                                        <h5>{{ $tcategory->name }}</h5>
                                        <p>
                                            {{ $tcategory->description }}
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        $('.featured-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    dots:false,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:4
        }
    }
})
    </script>
@endsection
