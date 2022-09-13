
$(document).ready(function(){


    loadcart();
    loadwishlist()

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    //cart count code
    function loadcart()
    {
        $.ajax({
            method: "GET",
            url: "/load-cart-count",
            success: function (response) {
                $('.cart-count').html('');
                $('.cart-count').html(response.count);
            }
        });
    }

    //wishlist count code
    function loadwishlist()
    {
        $.ajax({
            method: "GET",
            url: "/load-wishlist-count",
            success: function (response) {
                $('.wishlist-count').html('');
                $('.wishlist-count').html(response.count);
            }
        });
    }


    // add To Cart Btn code
    $('.addToCartBtn').click(function (e) {
        e.preventDefault();

        var product_id = $(this).closest('.product_data').find('.product_id').val();
        var product_qty = $(this).closest('.product_data').find('.qty-input').val();

        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $.ajax({
            method: "POST",
            url: "/add-to-cart",
            data: {
                'product_id' : product_id,
                'product_qty' : product_qty,
            },
            success: function (response) {
                swal(response.status);
                loadcart();
            }
        });

    });

    //add To Wishlist Btn
    $('.addToWishlistBtn').click(function (e) {

        var product_id = $(this).closest('.product_data').find('.product_id').val();

        $.ajax({
            method: "POST",
            url: "/add-to-wishlist",
            data: {
                'product_id' : product_id,
            },
            success: function (response) {
                swal(response.status);
                loadwishlist()
            }
        });
    });
    //remove Wishlist Btn
    $('.remove-wish-list').click(function (e) {

        var product_id = $(this).closest('.product_data').find('.product_id').val();

        $.ajax({
            method: "POST",
            url: "/delete-wishlist-item",
            data: {
                'product_id' : product_id,
            },
            success: function (response) {
                window.location.reload();
                swal("", response.status, "success");
            }
        });
    });

    // increment btn code
    $('.increment-btn').click(function (e) {
        e.preventDefault();

        var inc_value = $(this).closest('.product_data').find('.qty-input').val();
        var value = parseInt(inc_value, 10);
        value = isNaN(value) ? 0 : value;
        if(value < 10)
        {
            value++;
            $(this).closest('.product_data').find('.qty-input').val(value);
        }
    });

    // decrement btn code

    $('.decrement-btn').click(function(e){
        e.preventDefault();

        var dec_value = $(this).closest('.product_data').find('.qty-input').val();
        var value = parseInt(dec_value, 10);
        value = isNaN(value) ? 0 : value;
        if(value > 1)
        {
            value--;
            $(this).closest('.product_data').find('.qty-input').val(value);
        }
    });


    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    // delete btn code
    $('.delete-cart-item').click(function (e){
        e.preventDefault();

        var product_id = $(this).closest('.product_data').find('.product_id').val();

        $.ajax({
            method: "POST",
            url: "delete-cart-item",
            data: {
                'product_id' : product_id,
            },
            success: function (response) {
                window.location.reload();
                swal("", response.status, "success");
            }
        });
    });


    // update btn code
    $('.chengeQuantity').click(function (e) {
        e.preventDefault();

        var product_id = $(this).closest('.product_data').find('.product_id').val();
        var qty = $(this).closest('.product_data').find('.qty-input').val();
        data = {
            'product_id' : product_id,
            'product_qty' : qty,
        }

        $.ajax({
            method: "POST",
            url: "update-cart-item",
            data: data,
            success: function (response) {
                window.location.reload();
            }
        });

    });







});
