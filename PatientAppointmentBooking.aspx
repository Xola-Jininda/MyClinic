﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientAppointmentBooking.aspx.cs" Inherits="AppointmentBookingFeature.PatientAppointmentBooking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
    <title>Doccure</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
    <![endif]-->

    <!-- Favicons -->
    <link rel="icon" href="Images/favicon.png" />
    
    <!-- Bootstrap CSS -->
    <link href="Styles/bootstrap.min.css" rel="stylesheet" />
    
    <!-- Fontawesome CSS -->
    <link href="Styles/fontawesome.min.css" rel="stylesheet" />
    <link href="Styles/all.min.css" rel="stylesheet" />
    
    <!-- Main CSS -->
    <link href="Styles/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            left: -5px;
            top: 27px;
        }
    </style>
</head>
<body>

    <!-- Main Wrapper -->
    <div class="main-wrapper">
    
        <!-- Header -->
        <header style="background-color:lightgreen">
            <nav class="navbar navbar-expand-lg header-nav">
                <div class="navbar-header">
                    <a id="mobile_btn" href="javascript:void(0);">
                        <span class="bar-icon">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                    </a>
                    <a href="index-2.html" class="navbar-brand logo">
                        <img src="logo.png" class="img-fluid" alt="Logo" />
                    </a>
                </div>
                <div class="main-menu-wrapper">
                    <div class="menu-header">
                        <a href="index-2.html" class="menu-logo">
                            <img src="assets/img/logo.png" class="img-fluid" alt="Logo"/>
                        </a>
                        <a id="menu_close" class="menu-close" href="javascript:void(0);">
                            <i class="fas fa-times"></i>
                        </a>
                    </div>
                    <ul class="main-nav">
                        <li class="active">
                            <a href="index-2.html">Home</a>
                        </li>
                        <li class="has-submenu">
                            <a href="#">Doctors <i class="fas fa-chevron-down"></i></a>
                            <ul class="submenu">
                                <li><a href="doctor-dashboard.html">Doctor Dashboard</a></li>
                                <li><a href="appointments.html">Appointments</a></li>
                                <li><a href="schedule-timings.html">Schedule Timing</a></li>
                                <li><a href="my-patients.html">Patients List</a></li>
                                <li><a href="patient-profile.html">Patients Profile</a></li>
                                <li><a href="chat-doctor.html">Chat</a></li>
                                <li><a href="invoices.html">Invoices</a></li>
                                <li><a href="doctor-profile-settings.html">Profile Settings</a></li>
                                <li><a href="reviews.html">Reviews</a></li>
                                <li><a href="doctor-register.html">Doctor Register</a></li>
                            </ul>
                        </li>    
                        <li class="has-submenu">
                            <a href="#">Patients <i class="fas fa-chevron-down"></i></a>
                            <ul class="submenu">
                                <li><a href="search.html">Search Doctor</a></li>
                                <li><a href="doctor-profile.html">Doctor Profile</a></li>
                                <li><a href="booking.html">Booking</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                                <li><a href="booking-success.html">Booking Success</a></li>
                                <li><a href="patient-dashboard.html">Patient Dashboard</a></li>
                                <li><a href="favourites.html">Favourites</a></li>
                                <li><a href="chat.html">Chat</a></li>
                                <li><a href="profile-settings.html">Profile Settings</a></li>
                                <li><a href="change-password.html">Change Password</a></li>
                            </ul>
                        </li>    
                        <li class="has-submenu">
                            <a href="#">Pages <i class="fas fa-chevron-down"></i></a>
                            <ul class="submenu">
                                <li><a href="voice-call.html">Voice Call</a></li>
                                <li><a href="video-call.html">Video Call</a></li>
                                <li><a href="search.html">Search Doctors</a></li>
                                <li><a href="calendar.html">Calendar</a></li>
                                <li><a href="components.html">Components</a></li>
                                <li class="has-submenu">
                                    <a href="invoices.html">Invoices</a>
                                    <ul class="submenu">
                                        <li><a href="invoices.html">Invoices</a></li>
                                        <li><a href="invoice-view.html">Invoice View</a></li>
                                    </ul>
                                </li>
                                <li><a href="blank-page.html">Starter Page</a></li>
                                <li><a href="login.html">Login</a></li>
                                <li><a href="register.html">Register</a></li>
                                <li><a href="forgot-password.html">Forgot Password</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="admin/index.html" target="_blank">Admin</a>
                        </li>
                        <li class="login-link">
                            <a href="login.html">Login / Signup</a>
                        </li>
                    </ul>         
                </div>         
                <ul class="nav header-navbar-rht">
                    <li class="nav-item contact-item">
                        <div class="header-contact-img">
                            <i class="far fa-hospital"></i>                            
                        </div>
                        <div class="header-contact-detail">
                            <p class="contact-header">Contact</p>
                            <p class="contact-info-header"> +1 315 369 5943</p>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link header-login" href="login.html">login / Signup </a>
                    </li>
                </ul>
            </nav>
        </header>
        <!-- /Header -->
        
        <!-- Home Banner -->
        <section class="auto-style1">
            <div class="container-fluid">
                <div class="banner-wrapper">
                    <div class="banner-header text-center">
                        <h1>Search Doctor, Make an Appointment</h1>
                        <p>Discover the best doctors, clinic & hospital the city nearest to you.</p>
                    </div>
                     
                    <!-- Search -->
                    <div class="search-box">
                        <form action="templateshub.net">
                            <div class="form-group search-location">
                                <input type="text" class="form-control" placeholder="Search Location"/>
                                <span class="form-text">Based on your Location</span>
                            </div>
                            <div class="form-group search-info">
                                <input type="text" class="form-control" placeholder="Search Doctors, Clinics, Hospitals, Diseases Etc"/>
                                <span class="form-text">Ex : Dental or Sugar Check up etc</span>
                            </div>
                            <button type="submit" class="btn btn-primary search-btn"><i class="fas fa-search"></i> <span>Search</span></button>
                        </form>
                    </div>
                    <!-- /Search -->

                    <!-- Book Appointment Button -->
                    <div class="text-center mt-4">
                        <a href="Booking.aspx" class="btn btn-success btn-lg">Book Appointment</a>
                    </div>
                    <!-- /Book Appointment Button -->
                    
                </div>
            </div>
        </section>
        <!-- /Home Banner -->
          
       
        <!-- Footer -->
        <footer class="footer">
            
            <!-- Footer Top -->
            <div class="footer-top">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                        
                            <!-- Footer Widget -->
                            <div class="footer-widget footer-about">
                                <div class="footer-logo">
                                    <img src="assets/img/footer-logo.png" alt="logo">
                                </div>
                                <div class="footer-about-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                    <div class="social-icon">
                                        <ul>
                                            <li>
                                                <a href="#" target="_blank"><i class="fab fa-facebook-f"></i> </a>
                                            </li>
                                            <li>
                                                <a href="#" target="_blank"><i class="fab fa-twitter"></i> </a>
                                            </li>
                                            <li>
                                                <a href="#" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                                            </li>
                                            <li>
                                                <a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
                                            </li>
                                            <li>
                                                <a href="#" target="_blank"><i class="fab fa-dribbble"></i> </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- /Footer Widget -->
                            
                        </div>
                        
                        <div class="col-lg-3 col-md=6">
                        
                            <!-- Footer Widget -->
                            <div class="footer-widget footer-menu">
                                <h2 class="footer-title">For Patients</h2>
                                <ul>
                                    <li><a href="search.html"><i class="fas fa-angle-double-right"></i> Search for Doctors</a></li>
                                    <li><a href="login.html"><i class="fas fa-angle-double-right"></i> Login</a></li>
                                    <li><a href="register.html"><i class="fas fa-angle-double-right"></i> Register</a></li>
                                    <li><a href="booking.html"><i class="fas fa-angle-double-right"></i> Booking</a></li>
                                    <li><a href="patient-dashboard.html"><i class="fas fa-angle-double-right"></i> Patient Dashboard</a></li>
                                </ul>
                            </div>
                            <!-- /Footer Widget -->
                            
                        </div>
                        
                        <div class="col-lg=3 col-md=6">
                        
                            <!-- Footer Widget -->
                            <div class="footer-widget footer-menu">
                                <h2 class="footer-title">For Doctors</h2>
                                <ul>
                                    <li><a href="appointments.html"><i class="fas fa-angle-double-right"></i> Appointments</a></li>
                                    <li><a href="chat.html"><i class="fas fa-angle-double-right"></i> Chat</a></li>
                                    <li><a href="login.html"><i class="fas fa-angle-double-right"></i> Login</a></li>
                                    <li><a href="doctor-register.html"><i class="fas fa-angle-double-right"></i> Register</a></li>
                                    <li><a href="doctor-dashboard.html"><i class="fas fa-angle-double-right"></i> Doctor Dashboard</a></li>
                                </ul>
                            </div>
                            <!-- /Footer Widget -->
                            
                        </div>
                        
                        <div class="col-lg-3 col-md-6">
                        
                            <!-- Footer Widget -->
                            <div class="footer-widget footer-contact">
                                <h2 class="footer-title">Contact Us</h2>
                                <div class="footer-contact-info">
                                    <div class="footer-address">
                                        <span><i class="fas fa-map-marker-alt"></i></span>
                                        <p> 3556  Beech Street, San Francisco,<br> California, CA 94108 </p>
                                    </div>
                                    <p>
                                        <i class="fas fa-phone-alt"></i>
                                        +1 315 369 5943
                                    </p>
                                    <p class="mb-0">
                                        <i class="fas fa-envelope"></i>
                                        doccure@example.com
                                    </p>
                                </div>
                            </div>
                            <!-- /Footer Widget -->
                            
                        </div>
                        
                    </div>
                </div>
            </div>
            <!-- /Footer Top -->
            
            <!-- Footer Bottom -->
            <div class="footer-bottom">
                <div class="container-fluid">
                
                    <!-- Copyright -->
                    <div class="copyright">
                        <div class="row">
                            <div class="col-md-6 col-lg-6">
                                <div class="copyright-text">
                                    <p class="mb-0"><a href="templateshub.net">Templates Hub</a></p>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6">
                            
                                <!-- Copyright Menu -->
                                <div class="copyright-menu">
                                    <ul class="policy-menu">
                                        <li><a href="term-condition.html">Terms and Conditions</a></li>
                                        <li><a href="privacy-policy.html">Policy</a></li>
                                    </ul>
                                </div>
                                <!-- /Copyright Menu -->
                                
                            </div>
                        </div>
                    </div>
                    <!-- /Copyright -->
                    
                </div>
            </div>
            <!-- /Footer Bottom -->
            
        </footer>
        <!-- /Footer -->
       
   </div>
   <!-- /Main Wrapper -->
  
    <!-- jQuery -->
    <script src="Js/jquery.min.js"></script>
    
    <!-- Bootstrap Core JS -->
    <script src="Js/popper.min.js"></script>
    <script src="Js/bootstrap.min.js"></script>
    
    <!-- Slick JS -->
    <script src="Js/slick.js"></script>
    
    <!-- Custom JS -->
    <script src="Js/script.js"></script>
    
</body>

</html>