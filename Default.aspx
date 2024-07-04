<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyClinic_2024.Default" %>

<!DOCTYPE html>

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="description" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Style CSS -->
    <link href="Presentation_Layer/Styles/style.css" rel="stylesheet" />
    <!-- Style CSS -->


    <link rel="icon" href="Presentation_Layer/img/core-img/favicon.ico" />
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server" action="#" method="post">
    <div>
        <!-- Preloader -->
        <div id="preloader">
            <div class="medilife-load"></div>
        </div>

        <!-- ***** Header Area Start ***** -->
        <header class="header-area" id="home-section">
            <!-- Top Header Area -->
            <div class="top-header-area">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-12 h-100">
                            <div class="h-100 d-md-flex justify-content-between align-items-center">
                                <p>Welcome to <span>MyClinic</span> </p>
                                <p>Opening Hours : Monday to Friday - 9am to 5pm Contact : <span>+27 00 000 0000</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Main Header Area  style="background-color:lightgreen; opacity:0.7"-->
            <div class="main-header-area" id="stickyHeader" >
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 h-100">
                            <div class="main-menu h-100">
                                <nav class="navbar h-100 navbar-expand-lg">
                                    <!-- Logo Area  -->

                                    <a class="navbar-brand" href="index-2.html">
                                        <img src="Presentation_Layer/img/core-img/logo3.png" width="150" height="50" alt="Logo" /></a>

                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#medilifeMenu" aria-controls="medilifeMenu" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

                                    <div class="collapse navbar-collapse" id="medilifeMenu">
                                        <!-- Menu Area -->
                                        <ul class="navbar-nav ml-auto">
                                            <li class="nav-item active">
                                                <a class="nav-link" href="#home-section" onclick="scrollToHome()">Home <span class="sr-only">(current)</span></a>
                                            </li>

                                            <li class="nav-item">
                                                <a class="nav-link" href="#about-us-section" onclick="scrollToAboutUs()">About Us</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="services.html">Services</a>
                                            </li>

                                            <li class="nav-item">
                                                <a class="nav-link" href="#contact-section" onclick="scrollToContact()">Contact</a>
                                            </li>
                                        </ul>
                                        <!-- Appointment Button -->
                                        <a href="#" class="btn medilife-appoint-btn ml-30">For <span>emergencies</span> Click here</a>
                                        <asp:Button class="btn medilife-appoint-btn ml-30" ID="btnLogin" runat="server" Text="Sign In" OnClick="btnLogin_Click" />
                                        
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- ***** Header Area End ***** -->

        <!-- ***** Hero Area Start ***** -->
        <section class="hero-area">
            <div class="hero-slides owl-carousel">
                <!-- Single Hero Slide -->

                <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(Presentation_Layer/img/bg-img/pexels-cedric-fauntleroy-4269363.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="hero-slides-content">
                                    <h4 data-animation="fadeInUp" data-delay="100ms">DO YOU NEED A DOCTOR?</h4>
                                    <br />
                                    <h2>BOOK APPOINTMENT TODAY</h2>
                                    <h6 data-animation="fadeInUp" data-delay="400ms">No more standing in queues to see a doctor, book your appointment with us, right now!</h6>
                                    <a href="#" class="btn medilife-btn mt-50" data-animation="fadeInUp" data-delay="700ms">BOOK APPOINTMENT <span>+</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Hero Slide -->
                <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(Presentation_Layer/img/bg-img/breadcumb3.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="hero-slides-content">
                                    <h4 data-animation="fadeInUp" data-delay="100ms">DO YOU NEED A DOCTOR?</h4>
                                    <br />
                                    <h2>BOOK APPOINTMENT TODAY</h2>
                                    <h6 data-animation="fadeInUp" data-delay="400ms">No more standing in queues to see a doctor, book your appointment with us, right now!</h6>
                                    <a href="#" class="btn medilife-btn mt-50" data-animation="fadeInUp" data-delay="700ms">BOOK APPOINTMENT <span>+</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Hero Slide -->
                <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(Presentation_Layer/img/bg-img/breadcumb1.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="hero-slides-content">
                                    <h4 data-animation="fadeInUp" data-delay="100ms">DO YOU NEED A DOCTOR?</h4>
                                    <br />
                                    <h2>BOOK APPOINTMENT TODAY</h2>
                                    <h6 data-animation="fadeInUp" data-delay="400ms">No more standing in queues to see a doctor, book your appointment with us, right now!</h6>
                                    <a href="#" class="btn medilife-btn mt-50" data-animation="fadeInUp" data-delay="700ms">BOOK APPOINTMENT <span>+</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Hero Area End ***** -->

        <!-- ***** Book An Appoinment Area Start ***** -->
        <div class="medilife-book-an-appoinment-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="appointment-form-content">
                            <div class="row no-gutters align-items-center">
                                <div class="col-12 col-lg-9">
                                    <div class="medilife-appointment-form">
                                        
                                            <div class="row align-items-end">
                                                <div class="col-12 col-md-4">
                                                    <div class="form-group">
                                                        <select class="form-control" id="speciality">
                                                            <option>Speciality 1</option>
                                                            <option>Speciality 2</option>
                                                            <option>Speciality 3</option>
                                                            <option>Speciality 4</option>
                                                            <option>Speciality 5</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-4">
                                                    <div class="form-group">
                                                        <select class="form-control" id="doctors">
                                                            <option>Doctors 1</option>
                                                            <option>Doctors 2</option>
                                                            <option>Doctors 3</option>
                                                            <option>Doctors 4</option>
                                                            <option>Doctors 5</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-2">
                                                    <div class="form-group">
                                                        
                                                        <asp:TextBox class="form-control" ID="txtDate" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-2">
                                                    <div class="form-group">
                                                        <asp:TextBox class="form-control" ID="txtTime" runat="server"  TextMode="Time"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-4">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="name" id="name" placeholder="Name" />
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-4">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="number" id="number" placeholder="Phone" />
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-4">
                                                    <div class="form-group">
                                                        <input type="email" class="form-control border-top-0 border-right-0 border-left-0" name="email" id="email" placeholder="E-mail" />
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-7">
                                                    <div class="form-group mb-0">
                                                        <textarea name="message" class="form-control mb-0 border-top-0 border-right-0 border-left-0" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-5 mb-0">
                                                    <div class="form-group mb-0">
                                                        <button type="submit" class="btn medilife-btn">Book Appointment <span>+</span></button>
                                                    </div>
                                                </div>
                                            </div>
                                       
                                    </div>
                                </div>
                                <div class="col-12 col-lg-3">
                                    <div class="medilife-contact-info">
                                        <!-- Single Contact Info -->
                                        <div class="single-contact-info mb-30">
                                            <img src="Presentation_Layer/img/icons/alarm-clock.png" alt="" />
                                            <p>Mon - Fri 09:00 - 17:00
                                                <br />
                                                Saturday-Sunday CLOSED</p>
                                        </div>
                                        <!-- Single Contact Info -->
                                        <div class="single-contact-info mb-30">
                                            <img src="Presentation_Layer/img/icons/envelope.png" alt="" />
                                            <p>+27 00 000 0000
                                                <br />
                                                myclinic@gmail.com</p>
                                        </div>
                                        <!-- Single Contact Info -->
                                        <div class="single-contact-info">
                                            <img src="Presentation_Layer/img/icons/map-pin.png" alt="" />
                                            <p>St Marks Str, no 22-34
                                                <br />
                                                78214 East London</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Book An Appoinment Area End ***** -->

        <!-- ***** About Us Area Start ***** -->
        <section id="about-us-section" class="medica-about-us-area section-padding-100-20">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-4">
                        <div class="medica-about-content">
                            <h2>We always put our pacients first</h2>
                            <p>At our core, we prioritize our patients' well-being above all else. Our dedicated team is committed to providing compassionate, personalized care, ensuring that every patient feels valued and supported throughout their healthcare journey.</p>
                            <a href="#" class="btn medilife-btn mt-50">View the services <span>+</span></a>
                        </div>
                    </div>
                    <div class="col-12 col-lg-8">
                        <div class="row">
                            <!-- Single Service Area -->
                            <div class="col-12 col-sm-6">
                                <div class="single-service-area d-flex">
                                    <div class="service-icon">
                                        <i class="icon-doctor"></i>
                                    </div>
                                    <div class="service-content">
                                        <h5>Doctors</h5>
                                        <p>We prioritize our patients' well-being with exceptional, personalized care from our dedicated team of professionals.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Service Area -->
                            <div class="col-12 col-sm-6">
                                <div class="single-service-area d-flex">
                                    <div class="service-icon">
                                        <i class="icon-blood-donation-1"></i>
                                    </div>
                                    <div class="service-content">
                                        <h5>Ambulance</h5>
                                        <p>Our ambulance services prioritize emergency response with swift, professional care to ensure your safety and well-being during critical moments.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Service Area -->
                            <div class="col-12 col-sm-6">
                                <div class="single-service-area d-flex">
                                    <div class="service-icon">
                                        <i class="icon-flask-2"></i>
                                    </div>
                                    <div class="service-content">
                                        <h5>Counseling</h5>
                                        <p>a supportive environment for individuals seeking guidance and support, providing confidential sessions to promote mental well-being and emotional resilience.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Service Area -->
                            <div class="col-12 col-sm-6">
                                <div class="single-service-area d-flex">
                                    <div class="service-icon">
                                        <i class="icon-emergency-call-1"></i>
                                    </div>
                                    <div class="service-content">
                                        <h5>Emergency Ambulance</h5>
                                        <p>Our medical delivery service ensures timely, reliable delivery of essential medications and supplies right to your doorstep, prioritizing your health and convenience.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** About Us Area End ***** -->

        <!-- ***** Cool Facts Area Start ***** -->
        <section class="medilife-cool-facts-area section-padding-100-0">
            <div class="container">
                <div class="row">
                    <!-- Single Cool Fact-->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-cool-fact-area text-center mb-100">
                            <i class="icon-blood-transfusion-2"></i>
                            <h2><span class="counter">5632</span></h2>
                            <h6>Blood donations</h6>
                            <p>Dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.</p>
                        </div>
                    </div>
                    <!-- Single Cool Fact-->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-cool-fact-area text-center mb-100">
                            <i class="icon-atoms"></i>
                            <h2><span class="counter">23</span>k</h2>
                            <h6>Pacients</h6>
                            <p>Dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.</p>
                        </div>
                    </div>
                    <!-- Single Cool Fact-->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-cool-fact-area text-center mb-100">
                            <i class="icon-microscope"></i>
                            <h2><span class="counter">25</span></h2>
                            <h6>Specialities</h6>
                            <p>Dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.</p>
                        </div>
                    </div>
                    <!-- Single Cool Fact-->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-cool-fact-area text-center mb-100">
                            <i class="icon-doctor-1"></i>
                            <h2><span class="counter">723</span></h2>
                            <h6>Doctors</h6>
                            <p>Dolor sit amet, consecte tuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Cool Facts Area End ***** -->

        <!-- ***** Gallery Area Start ***** -->
        <div class="medilife-gallery-area owl-carousel">
            <!-- Single Gallery Item -->
            <div class="single-gallery-item">
                <img src="Presentation_Layer/img/bg-img/g1.jpg" alt="" />
                <div class="view-more-btn">
                    <a href="Presentation_Layer/img/bg-img/g1.jpg" class="btn gallery-img">See More +</a>
                </div>
            </div>
            <!-- Single Gallery Item -->
            <div class="single-gallery-item">
                <img src="Presentation_Layer/img/bg-img/g2.jpg" alt="" />
                <div class="view-more-btn">
                    <a href="Presentation_Layer/img/bg-img/g2.jpg" class="btn gallery-img">See More +</a>
                </div>
            </div>
            <!-- Single Gallery Item -->
            <div class="single-gallery-item">
                <img src="Presentation_Layer/img/bg-img/g3.jpg" alt="" />
                <div class="view-more-btn">
                    <a href="Presentation_Layer/img/bg-img/g3.jpg" class="btn gallery-img">See More +</a>
                </div>
            </div>

            <!-- Single Gallery Item -->
            <div class="single-gallery-item">
                <img src="../img/bg-img/g4.jpg" alt="" />
                <div class="view-more-btn">
                    <a href="Presentation_Layer/img/bg-img/g4.jpg" class="btn gallery-img">See More +</a>
                </div>
            </div>
        </div>
        <!-- ***** Gallery Area End ***** -->

        <!-- ***** Features Area Start ***** -->
        <div class="medilife-features-area section-padding-100">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12 col-lg-6">
                        <div class="features-content">
                            <h2>A new way to treat pacients in a revolutionary facility</h2>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing eli.Lorem ipsum dolor sit amet, consec tetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer.</p>
                            <a href="#" class="btn medilife-btn mt-50">View the services <span>+</span></a>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="features-thumbnail">
                            <img src="Presentation_Layer/img/bg-img/medical1.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Features Area End ***** -->

        <!-- ***** Emergency Area Start ***** -->
        <div class="medilife-emergency-area section-padding-100-50">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <div class="emergency-content">
                            <i class="icon-smartphone"></i>
                            <h2>For Emergency calls</h2>
                            <h3>+27 00 000 0000</h3>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="row">
                            <!-- Single Emergency Helpline -->
                            <div class="col-12 col-sm-6">
                                <div class="single-emergency-helpline mb-50">
                                    <h5>East London</h5>
                                    <p>+27 00 000 0000
                                        <br />
                                        myclinic@gmail.com
                                        <br />
                                        St Marks Str, no 22-34
                                        <br />
                                        23 Southernwood</p>
                                </div>
                            </div>
                            <!-- Single Emergency Helpline -->
                            <div class="col-12 col-sm-6">
                                <div class="single-emergency-helpline mb-50">
                                    <h5>Cape Town</h5>
                                    <p>+27 00 000 0000
                                        <br />
                                        myclinic@gmail.com
                                        <br />
                                        Main Road, no 132
                                        <br />
                                        44 Rondebosch</p>
                                </div>
                            </div>
                            <!-- Single Emergency Helpline -->
                            <div class="col-12 col-sm-6">
                                <div class="single-emergency-helpline mb-50">
                                    <h5>Durban</h5>
                                    <p>+27 00 000 0000
                                        <br />
                                        myclinic@gmail.com
                                        <br />
                                        Valley Str, no 414
                                        <br />
                                        37 Skyland</p>
                                </div>
                            </div>
                            <!-- Single Emergency Helpline -->
                            <div class="col-12 col-sm-6">
                                <div class="single-emergency-helpline mb-50">
                                    <h5>Johannesburg</h5>
                                    <p>+27 00 000 0000
                                        <br />
                                        myclinic@gmail.com
                                        <br />
                                        Parkdeen Road, no 123
                                        <br />
                                        78 Parkdeen</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Emergency Area End ***** -->

        <!-- ***** Footer Area Start ***** -->
        <footer id="contact-section" class="footer-area section-padding-100">
            <!-- Main Footer Area -->
            <div class="main-footer-area">
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area">
                                <div class="footer-logo">
                                    <img src="Presentation_Layer/img/core-img/logo3.png" width="150" height="50" alt="Logo" />
                                    
                                </div>
                                <p>Feel free to reach out to us with any questions or inquiries. Your well-being is our priority, and we look forward to assisting you on your journey to health and wellness.</p>
                                <div class="footer-social-info">
                                    <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area">
                                <div class="widget-title">
                                    <h6>Latest News</h6>
                                </div>
                                <div class="widget-blog-post">
                                    <!-- Single Blog Post -->
                                    <div class="widget-single-blog-post d-flex">
                                        <div class="widget-post-thumbnail">
                                            <img src="Presentation_Layer/img/blog-img/ln1.jpg" alt="" />
                                        </div>
                                        <div class="widget-post-content">
                                            <a href="#">Better Health Care</a>
                                            <p>Dec 02, 2017</p>
                                        </div>
                                    </div>
                                    <!-- Single Blog Post -->
                                    <div class="widget-single-blog-post d-flex">
                                        <div class="widget-post-thumbnail">
                                            <img src="Presentation_Layer/img/blog-img/ln2.jpg" alt="" />
                                        </div>
                                        <div class="widget-post-content">
                                            <a href="#">A new drug is tested</a>
                                            <p>Dec 02, 2017</p>
                                        </div>
                                    </div>
                                    <!-- Single Blog Post -->
                                    <div class="widget-single-blog-post d-flex">
                                        <div class="widget-post-thumbnail">
                                            <img src="Presentation_Layer/img/blog-img/ln3.jpg" alt="" />
                                        </div>
                                        <div class="widget-post-content">
                                            <a href="#">Health department advice</a>
                                            <p>Dec 02, 2017</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area">
                                <div class="widget-title">
                                    <h6>Contact Form</h6>
                                </div>
                                <div class="footer-contact-form">
                                    
                                        <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="footer-name" id="footer-name" placeholder="Name" />
                                        <input type="email" class="form-control border-top-0 border-right-0 border-left-0" name="footer-email" id="footer-email" placeholder="Email" />
                                        <textarea name="message" class="form-control border-top-0 border-right-0 border-left-0" id="footerMessage" placeholder="Message"></textarea>
                                        <button type="submit" class="btn medilife-btn">Submit <span>+</span></button>
                                   
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area">
                                <div class="widget-title">
                                    <h6>News Letter</h6>
                                </div>

                                <div class="footer-newsletter-area">
                                    
                                        <input type="email" class="form-control border-0 mb-0" name="newsletterEmail" id="newsletterEmail" placeholder="Your Email Here" />
                                        <button type="submit">Subscribe</button>
                                   
                                    <p>Stay in the loop with the latest news, offers, and updates. Subscribe now for exclusive content delivered directly to your inbox. Join our community today!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Bottom Footer Area -->
            <div class="bottom-footer-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- ***** Footer Area End ***** -->

        <!-- jQuery (Necessary for All JavaScript Plugins) -->
        <script src="Presentation_Layer/Styles/js/jquery/jquery-2.2.4.min.js"></script>
        <!-- Popper js -->
        <script src="Presentation_Layer/Styles/js/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="Presentation_Layer/Styles/js/bootstrap.min.js"></script>
        <!-- Plugins js -->
        <script src="Presentation_Layer/Styles/js/plugins.js"></script>
        <!-- Active js -->
        <script src="Presentation_Layer/Styles/js/active.js"></script>

    </div>
    <!--JavaScript For handling scrolling-->
    <script>
        function scrollToAboutUs() {
            $('html, body').animate({
                scrollTop: $('#about-us-section').offset().top
            }, 'slow');
        }
    </script>

     <script>
         function scrollToHome() {
             $('html, body').animate({
                 scrollTop: $('#home-section').offset().top
             }, 'slow');
         }
    </script>

    <script>
        function scrollToContact() {
            $('html, body').animate({
                scrollTop: $('#contact-section').offset().top
            }, 'slow');
        }
    </script>
     </form>
</body>
</html>

