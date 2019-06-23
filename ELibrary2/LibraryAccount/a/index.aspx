﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ELibrary2.LibraryAccount._index" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ****** About Us Area Start ******* -->
    <section class="dento-about-us-area section-padding-100-0">
    <div class="container">
        <div class="row align-items-center">
        <!-- About Us Thumbnail -->
        <div class="col-12 col-md-6">
            <div class="about-us-thumbnail mb-50">
            <img src="./img/bg-img/15.jpg" alt="">
            </div>
        </div>
        <!-- About Content -->
        <div class="col-12 col-md-6">
            <div class="about-us-content mb-50">
            <!-- Section Heading -->
            <div class="section-heading">
                <h2>About Us</h2>
                <div class="line"></div>
            </div>
            <p>Vestibulum condimentum, risus sedones honcus rutrum, salah lacus mollis zurna, nec finibusmi velit advertisis. Proin vitae odin quis magna aliquet laciniae. Etiam auctor, nisi vel. Pellentesque ultrices nisl quam iaculis, nec pulvinar
                augue.</p>

            <!-- Single Skills Area -->
            <div class="single-skills-area mt-30">
                <h6>Experience Dentist</h6>
                <div id="bar1" class="barfiller">
                <span class="tip"></span>
                <span class="fill" data-percentage="80"></span>
                </div>
            </div>

            <!-- Single Skills Area -->
            <div class="single-skills-area mt-30">
                <h6>Modern Equipment</h6>
                <div id="bar2" class="barfiller">
                <span class="tip"></span>
                <span class="fill" data-percentage="65"></span>
                </div>
            </div>

            <!-- Single Skills Area -->
            <div class="single-skills-area mt-30">
                <h6>Friendly Staff</h6>
                <div id="bar3" class="barfiller">
                <span class="tip"></span>
                <span class="fill" data-percentage="85"></span>
                </div>
            </div>
            </div>
        </div>
        </div>
    </div>
    </section>
    <!-- ****** About Us Area End ****** -->

    <div class="container">
    <div class="dento-border clearfix"></div>
    </div>

    <!-- Cool Facts Area Start -->
    <section class="dento-cta-area">
    <div class="container">
        <div class="row">
        <!-- Cool Facts Area -->
        <div class="col-12 col-sm-6 col-lg-3">
            <div class="single-cta text-center mt-50 mb-100">
            <i class="icon_genius"></i>
            <h2><span class="counter">20</span></h2>
            <h5>Years Of Experience</h5>
            </div>
        </div>

        <!-- Cool Facts Area -->
        <div class="col-12 col-sm-6 col-lg-3">
            <div class="single-cta text-center mt-50 mb-100">
            <i class="icon_heart_alt"></i>
            <h2><span class="counter">700</span>+</h2>
            <h5>Happy Patients</h5>
            </div>
        </div>

        <!-- Cool Facts Area -->
        <div class="col-12 col-sm-6 col-lg-3">
            <div class="single-cta text-center mt-50 mb-100">
            <i class="icon_book_alt"></i>
            <h2><span class="counter">120</span></h2>
            <h5>Certificate</h5>
            </div>
        </div>

        <!-- Cool Facts Area -->
        <div class="col-12 col-sm-6 col-lg-3">
            <div class="single-cta text-center mt-50 mb-100">
            <i class="icon_id"></i>
            <h2><span class="counter">40</span>+</h2>
            <h5>Dentist</h5>
            </div>
        </div>
        </div>
    </div>
    </section>
    <!-- Cool Facts Area End -->

    <!-- Dento Service Area Start -->
    <section class="dento-service-area section-padding-100-0 bg-img bg-gradient-overlay jarallax clearfix" style="background-image: url('img/bg-img/13.jpg');">
    <div class="container">
        <div class="row align-items-center">
        <!-- Service Content -->
        <div class="col-12 col-lg-6">
            <div class="service-content mb-30">
            <!-- Section Heading -->
            <div class="section-heading white">
                <h2>Our Services</h2>
                <div class="line"></div>
            </div>

            <div class="row">
                <!-- Single Service -->
                <div class="col-6 col-md-4">
                <div class="single-service mb-70">
                    <img src="./img/core-img/s1.png" alt="">
                    <h6>Teeth Whitening</h6>
                </div>
                </div>

                <!-- Single Service -->
                <div class="col-6 col-md-4">
                <div class="single-service mb-70">
                    <img src="./img/core-img/s2.png" alt="">
                    <h6>Missing Teeth</h6>
                </div>
                </div>

                <!-- Single Service -->
                <div class="col-6 col-md-4">
                <div class="single-service mb-70">
                    <img src="./img/core-img/s3.png" alt="">
                    <h6>Teeth Whitening</h6>
                </div>
                </div>

                <!-- Single Service -->
                <div class="col-6 col-md-4">
                <div class="single-service mb-70">
                    <img src="./img/core-img/s4.png" alt="">
                    <h6>Cosmetic Dentistry</h6>
                </div>
                </div>

                <!-- Single Service -->
                <div class="col-6 col-md-4">
                <div class="single-service mb-70">
                    <img src="./img/core-img/s5.png" alt="">
                    <h6>Examination</h6>
                </div>
                </div>

                <!-- Single Service -->
                <div class="col-6 col-md-4">
                <div class="single-service mb-70">
                    <img src="./img/core-img/s1.png" alt="">
                    <h6>Teeth Pain</h6>
                </div>
                </div>
            </div>
            </div>
        </div>

        <!-- Video Area -->
        <div class="col-12 col-lg-6">
            <div class="dento-video-area mb-100">
            <img src="./img/bg-img/14.jpg" alt="">
            <!-- Play Button -->
            <a href="#" class="video-play-button"><i class="fa fa-play" aria-hidden="true"></i></a>
            </div>
        </div>
        </div>
    </div>
    </section>
    <!-- Dento Service Area End -->

    <!-- Dento Pricing Table Area Start -->
    <section class="dento-pricing-table-area section-padding-100">
    <div class="container">
        <div class="row">
        <!-- Section Heading -->
        <div class="col-12">
            <div class="section-heading text-center">
            <h2>Pricing</h2>
            <div class="line"></div>
            </div>
        </div>
        </div>

        <div class="row">
        <div class="col-12">
            <div class="dento-price-table table-responsive">
            <table class="table table-borderless mb-0">
                <thead>
                <tr>
                    <th scope="col">Service Names</th>
                    <th scope="col">Stage</th>
                    <th scope="col">Price</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">Teeth Whitening Service at home</th>
                    <td>1 times</td>
                    <td>$115.00</td>
                </tr>
                <tr>
                    <th scope="row">Teeth Whitening Service at Dental Clinic</th>
                    <td>1 times</td>
                    <td>$100.00</td>
                </tr>
                <tr>
                    <th scope="row">Ceramic crowns and fillings Dental porcelain</th>
                    <td>1 times</td>
                    <td>$99.00</td>
                </tr>
                <tr>
                    <th scope="row">Remove crowns, bridges Service</th>
                    <td>1 tooth</td>
                    <td>$50.00</td>
                </tr>
                <tr>
                    <th scope="row">Covering the recession of the gums</th>
                    <td>1 times</td>
                    <td>$400.00</td>
                </tr>
                <tr>
                    <th scope="row">Consultation, impressions and preparation of models</th>
                    <td>1 times</td>
                    <td>$35.00</td>
                </tr>
                <tr>
                    <th scope="row">Removal of an old inlay, old crown</th>
                    <td>1 times</td>
                    <td>$99.00</td>
                </tr>
                <tr>
                    <th scope="row">Overlay teeth whitening ( 2 arches)</th>
                    <td>1 times</td>
                    <td>$170.00</td>
                </tr>
                <tr>
                    <th scope="row">Standard porcelain and zirconium crown on implant</th>
                    <td>1 tooth</td>
                    <td>$499.00</td>
                </tr>
                <tr>
                    <th scope="row">Implantation of an implant (price depends on system used)</th>
                    <td>1 tooth</td>
                    <td>$600.00</td>
                </tr>
                </tbody>
            </table>
            </div>
        </div>

        <div class="col-12">
            <div class="more-btn text-center mt-50">
            <a href="#" class="btn dento-btn">Read More <i class="fa fa-angle-double-right"></i></a>
            </div>
        </div>
        </div>
    </div>
    </section>
    <!-- Dento Pricing Table Area End -->

    <!-- Book An Oppointment Area Start -->
    <section class="book-an-oppointment-area section-padding-100 bg-img bg-gradient-overlay jarallax clearfix" style="background-image: url('img/bg-img/12.jpg');">
    <div class="container">
        <div class="row">
        <!-- Section Heading -->
        <div class="col-12">
            <div class="section-heading text-center white">
            <h2>Book An Apointment</h2>
            <div class="line"></div>
            </div>
        </div>
        </div>

        <div class="row">
        <div class="col-12">
            <!-- Appointment Form -->
            <div class="appointment-form">
               <!-- <div class="row">
                <div class="col-md-6">
                    <div class="form-group mb-30">
                    <input type="text" name="your-name" class="form-control" placeholder="Your Name" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group mb-30">
                    <input type="text" name="your-phone" class="form-control" placeholder="Your Phone" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group mb-30">
                    <input type="email" name="your-email" class="form-control" placeholder="Your Email" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group mb-30">
                    <input type="text" name="your-address" class="form-control" placeholder="Your Address">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group mb-30">
                    <select name="your-scheldule" class="form-control">
                        <option value="Choose Your Scheldule">Choose Your Scheldule</option>
                        <option value="9 AM to 10 AM">9 AM to 10 AM</option>
                        <option value="11 AM to 12 PM">11 AM to 12 PM</option>
                        <option value="2 PM to 4 PM">2 PM to 4 PM</option>
                        <option value="8 PM to 10 PM">8 PM to 10 PM</option>
                    </select>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group mb-30">
                    <select name="your-time" class="form-control">
                        <option value="Choose Your Time">Choose Your Scheldule</option>
                        <option value="9 AM to 10 AM">9 AM to 10 AM</option>
                        <option value="11 AM to 12 PM">11 AM to 12 PM</option>
                        <option value="2 PM to 4 PM">2 PM to 4 PM</option>
                        <option value="8 PM to 10 PM">8 PM to 10 PM</option>
                    </select>
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group mb-30">
                    <textarea name="your-message" class="form-control" placeholder="Your Message"></textarea>
                    </div>
                </div>
                <div class="col-12 text-center">
                    <button type="submit" class="btn dento-btn">Booking Now</button>
                </div>
                </div>-->
            </div>
        </div>
        </div>
    </div>
    </section>
    <!-- Book An Oppointment Area End -->

    <!-- ***** Dento Dentist Area Start ***** -->
    <section class="dentist-area section-padding-100-0">
    <div class="container">
        <div class="row">
        <!-- Section Heading -->
        <div class="col-12">
            <div class="section-heading text-center">
            <h2>Our Dentist</h2>
            <div class="line"></div>
            </div>
        </div>
        </div>

        <div class="row">
        <!-- Single Dentist Area -->
        <div class="col-12 col-sm-6 col-md-4">
            <div class="single-dentist-area mb-100">
            <img src="./img/bg-img/9.png" alt="">
            <!-- Dentist Content -->
            <div class="dentist-content">
                <!-- Social Info -->
                <div class="dentist-social-info">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-google-plus"></i></a>
                </div>
                <!-- Dentist Info -->
                <div class="dentist-info bg-gradient-overlay">
                <h5>Michael Barley</h5>
                <p>Implant Expert</p>
                </div>
            </div>
            </div>
        </div>

        <!-- Single Dentist Area -->
        <div class="col-12 col-sm-6 col-md-4">
            <div class="single-dentist-area mb-100">
            <img src="./img/bg-img/10.png" alt="">
            <!-- Dentist Content -->
            <div class="dentist-content">
                <!-- Social Info -->
                <div class="dentist-social-info">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-google-plus"></i></a>
                </div>
                <!-- Dentist Info -->
                <div class="dentist-info bg-gradient-overlay">
                <h5>Michael Barley</h5>
                <p>Implant Expert</p>
                </div>
            </div>
            </div>
        </div>

        <!-- Single Dentist Area -->
        <div class="col-12 col-sm-6 col-md-4">
            <div class="single-dentist-area mb-100">
            <img src="./img/bg-img/11.png" alt="">
            <!-- Dentist Content -->
            <div class="dentist-content">
                <!-- Social Info -->
                <div class="dentist-social-info">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-google-plus"></i></a>
                </div>
                <!-- Dentist Info -->
                <div class="dentist-info bg-gradient-overlay">
                <h5>Michael Barley</h5>
                <p>Implant Expert</p>
                </div>
            </div>
            </div>
        </div>
        </div>
    </div>
    </section>
    <!-- ***** Dento Dentist Area End ***** -->

    <!-- ***** Testimonials Area Start ***** -->
    <section class="testimonials-area section-padding-100 bg-img bg-gradient-overlay jarallax clearfix" style="background-image: url('img/bg-img/7.jpg');">
    <div class="container">
        <div class="row">
        <div class="col-12">
            <!-- Testimonials Slides -->
            <div class="testimonials-slides owl-carousel">
            <!-- Single Testimonials Slide -->
            <div class="single-testimonial-slide d-flex align-items-center">
                <!-- Thumbnail -->
                <div class="testimonial-thumb">
                <img src="./img/bg-img/8.jpg" alt="">
                </div>
                <!-- Content -->
                <div class="testimonial-content">
                <h5>“I'd been avoiding the dentist for years due to bad experiences. A reminder SMS is sent the working day beforehand. I also had a call confirming appointment. I have been a patient ever since. My dentist is very reassuring and
                    very helpful. Excellent treatment and advice.”</h5>
                <h6>Arron Ramsey</h6>
                <p>Dental Patient</p>
                </div>
            </div>

            <!-- Single Testimonials Slide -->
            <div class="single-testimonial-slide d-flex align-items-center">
                <!-- Thumbnail -->
                <div class="testimonial-thumb">
                <img src="./img/bg-img/8.jpg" alt="">
                </div>
                <!-- Content -->
                <div class="testimonial-content">
                <h5>“I'd been avoiding the dentist for years due to bad experiences. A reminder SMS is sent the working day beforehand. I also had a call confirming appointment. I have been a patient ever since. My dentist is very reassuring and
                    very helpful. Excellent treatment and advice.”</h5>
                <h6>Arron Ramsey</h6>
                <p>Dental Patient</p>
                </div>
            </div>

            <!-- Single Testimonials Slide -->
            <div class="single-testimonial-slide d-flex align-items-center">
                <!-- Thumbnail -->
                <div class="testimonial-thumb">
                <img src="./img/bg-img/8.jpg" alt="">
                </div>
                <!-- Content -->
                <div class="testimonial-content">
                <h5>“I'd been avoiding the dentist for years due to bad experiences. A reminder SMS is sent the working day beforehand. I also had a call confirming appointment. I have been a patient ever since. My dentist is very reassuring and
                    very helpful. Excellent treatment and advice.”</h5>
                <h6>Arron Ramsey</h6>
                <p>Dental Patient</p>
                </div>
            </div>
            </div>
        </div>
        </div>
    </div>
    </section>
    <!-- ***** Testimonials Area End ***** -->

    <!-- ***** Blog Area Start ***** -->
    <section class="dento-blog-area section-padding-100-0 clearfix">
    <div class="container">
        <div class="row">
        <!-- Section Heading -->
        <div class="col-12">
            <div class="section-heading text-center">
            <h2>The Latest News</h2>
            <div class="line"></div>
            </div>
        </div>
        </div>

        <div class="row">
        <!-- Single Blog Item -->
        <div class="col-12 col-md-6 col-lg-4">
            <div class="single-blog-item mb-100">
            <a href="./blog-details.html">
                <img src="./img/bg-img/4.jpg" alt="">
            </a>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="./blog-details.html" class="post-title">How your mouth bacteria can harm your lungs</a>
                <p>Donec tempor, lorem et euismod eleifend, est lectus laoreet ante, sed accusan justo diam ...</p>
                <div class="post-meta">
                <a href="#"><i class="icon_clock_alt"></i> 28 Sep 2018</a>
                <a href="#"><i class="icon_chat_alt"></i> 3 Comments</a>
                </div>
            </div>
            </div>
        </div>

        <!-- Single Blog Item -->
        <div class="col-12 col-md-6 col-lg-4">
            <div class="single-blog-item mb-100">
            <a href="./blog-details.html">
                <img src="./img/bg-img/5.jpg" alt="">
            </a>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="./blog-details.html" class="post-title">What is the best kind of toothpaste to use?</a>
                <p>Donec tempor, lorem et euismod eleifend, est lectus laoreet ante, sed accusan justo diam ...</p>
                <div class="post-meta">
                <a href="#"><i class="icon_clock_alt"></i> 28 Sep 2018</a>
                <a href="#"><i class="icon_chat_alt"></i> 3 Comments</a>
                </div>
            </div>
            </div>
        </div>

        <!-- Single Blog Item -->
        <div class="col-12 col-md-6 col-lg-4">
            <div class="single-blog-item mb-100">
            <a href="./blog-details.html">
                <img src="./img/bg-img/6.jpg" alt="">
            </a>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="./blog-details.html" class="post-title">Why you should avoid sipping your drinks</a>
                <p>Donec tempor, lorem et euismod eleifend, est lectus laoreet ante, sed accusan justo diam ...</p>
                <div class="post-meta">
                <a href="#"><i class="icon_clock_alt"></i> 28 Sep 2018</a>
                <a href="#"><i class="icon_chat_alt"></i> 3 Comments</a>
                </div>
            </div>
            </div>
        </div>
        </div>
    </div>
    </section>
    <!-- ***** Blog Area End ***** -->

    <!-- ***** Blog Message Start ***** -->

    <!-- ***** Blog Message End ***** -->


</asp:Content>
