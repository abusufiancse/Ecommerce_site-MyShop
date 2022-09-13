@extends('layouts.frontend')

@section('title')
Moyurakkhi | Checkout
@endsection


@section('content')
    <section class="page-header py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="content p-2" style="background-color: #eaf3ef87;">
                        <h1 class="page-name">Contact Us</h1>
                        <ol class="breadcrumb">
                            <li><a href="{{ ('/') }}">Home</a> / </li>
                            <li class="active"> contact</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="page-wrapper">
        <div class="contact-section">
            <div class="container">
                <div class="row">
                    <!-- Contact Form -->
                    <div class="contact-form col-md-6 ">
                        <form id="contact-form" method="post" action="" role="form">

                            <div class="form-group">
                                <input type="text" placeholder="Your Name" class="form-control" name="name" id="name">
                            </div>

                            <div class="form-group">
                                <input type="email" placeholder="Your Email" class="form-control" name="email" id="email">
                            </div>

                            <div class="form-group">
                                <input type="text" placeholder="Subject" class="form-control" name="subject" id="subject">
                            </div>

                            <div class="form-group">
                                <textarea rows="6" placeholder="Message" class="form-control" name="message" id="message"></textarea>
                            </div>


                            <div id="cf-submit">
                                <input type="submit" id="contact-submit" class="btn btn-transparent" value="Submit">
                            </div>

                        </form>
                    </div>
                    <!-- ./End Contact Form -->

                    <!-- Contact Details -->
                    <div class="contact-details col-md-6 ">
                        <div class="google-map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3068.101573545651!2d90.3987703244857!3d23.86804192882418!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c424e57431ab%3A0x8f68ee5d61cd9c5!2sAzampur%20Bus%20Stop!5e0!3m2!1sen!2sbd!4v1659460845985!5m2!1sen!2sbd" width="545" height="385" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        <ul class="contact-short-info">
                            <li>
                                <i class="fa fa-home"></i>
                                <span>Azompur, Uttara, Dhaka, Bangladesh</span>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>
                                <span>Phone: +880 1793-865052</span>
                            </li>
                            <li>
                                <i class="fa fa-globe"></i>
                                <span>Fax: +880-31-000-000</span>
                            </li>
                            <li>
                                <i class="fa fa-envelope"></i>
                                <span>Email: learners-team@gmail.com</span>
                            </li>
                        </ul>
                    </div>
                    <!-- / End Contact Details -->



                </div> <!-- end row -->
            </div> <!-- end container -->
        </div>
    </section>
@endsection
