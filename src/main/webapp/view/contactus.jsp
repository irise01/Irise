<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us|I-Rise</title>
</head>
<body>
<%@include file="header.jsp" %>
<div id="carouselExampleControls" class="carousel banner-slide1" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100 lazyload" src="/images/contactus2.jpg" alt="First slide" loading="lazy">
            <div class="carousel-caption sub-banner-caption d-md-block">
              <h2 class="wow fadeInUp animated" style="visibility: visible;"><b class="text-white">Contact Us</b></h2>
            </div>
          </div>
        </div>
      </div>
    <section class="contact_us" style="overflow:hidden;">
    
    <div class="container">
    <div class="row">
        <div class="col-12">
            <div class="contact_information">
                <div class="row">
                    <div class="col-xl-6 offset-xl-3 col-lg-8 offset-lg-2 col-md-10 offset-md-1 wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                        <div class="section-title mb-50 text-center">
                            <div class="section-title-heading mb-20">
                                <h1>Get In Touch</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4 mx-auto wow fadeInLeft" style="visibility: visible; animation-name: fadeInLeft;">
                      
                      <a href="mailto:info@ashokitech.com">
                        <div class="contact_box text-center">
                        <div class="contact_icon">
                            <i class="far fa-envelope fa-3x"></i>
                        </div>
                        <div class="contact_text">
                         
        
                            <a href="mailto:info@ashokitech.com" class="text-dark mt-lg-2">Email: info@irise.com</a>
                        </div>
                    </div>
                      </a>
                    </div>
                    <div class="col-md-6 col-lg-4 mx-auto wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
                      <a target="_balnk" href="#">
                        <div class="contact_box text-center">
                            <div class="contact_icon">
                                <i class="fas fa-map-marker-alt fa-3x"></i>
                            </div>
                            <div class="contact_text">
                                <a target="_balnk" href="#" class="text-dark mt-lg-2">Location: H.No - 7-1-413/2, Beside Shri Ram Temple, Raigad Colony, Khamgaon - 444303</a>
                            </div>
                        </div>
                      </a>
                    </div>
                    <div class="col-md-6 col-lg-4 mx-auto wow fadeInRight" style="visibility: visible; animation-name: fadeInRight;">
                      <a href="tel:+91 77989 71308">
                        <div class="contact_box text-center">
                            <div class="contact_icon">
                               <i class="fas fa-phone-volume fa-3x"></i>
        
                            </div>
                            <div class="contact_text">
                                <a href="tel:+91 77989 71308" class="text-dark mt-lg-2">Phone: +91 77989 71308</a>
                            </div>
                        </div>
                      </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
            <div class="row">
                <div class="col-md-10 col-lg-6 mx-auto wow fadeInLeft" style="visibility: visible; animation-name: fadeInLeft;">
                    <div class="contact_img mt-5">
                    <img src="/images/contact-usbai.png" alt="contact22" class="img-fluid lazyload" style="width:80%;" loading="lazy">
                    </div>
                </div>
                <div class="col-md-10 col-lg-6 mx-auto wow fadeInRight" style="visibility: visible; animation-name: fadeInRight;">
                    <div class="contactus">
                        <div class="row">
                            <div class="col-md-4 col-lg-4">
                                <div class="box text-center">
                                    <h4>Contact Us</h4>
                                </div>
                            </div>
                        
                       
                    <div class="col-12">
                             <div id="the-message"></div>
    
            <form action="" id="form-contact" class="form-horizontal" method="post" accept-charset="utf-8">
    
    
                            <div class="form-group">
                                
                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name">
             <span class="text-danger" id="name"></span>
                              </div>
        
                              <div class="form-group">
                                
                                <input type="email" class="form-control" id="email_id" name="email_id" placeholder="Enter Email Address">
                                     <span class="text-danger" id="email_id"></span>
                              </div>
        
                              <div class="form-group">
                                
                                <input type="text" class="form-control" id="phone_no" name="phone_no" placeholder="Enter Mobile Number">
                                     <span class="text-danger" id="phone_no"></span>
                              </div>
        
                                  
                              <div class="comment-box form-group">
                                
                                <textarea name="message" class="form-control" id="message" placeholder="Type Your Message Here . . ."></textarea>
                                  <span class="text-danger" id="message"></span>
                              </div>
        
                              <div class="row">
                                  <div class="col-12">
                                       <input type="submit" value="Send Message" class="btn btn-primary top-button">
                                     
                                  </div><br><br>
                                
                                  <div class="success1" id='mail_success1'>Thankyou for contacting us, our team will get in touch with you shortly</div>
                              </div>
         
    
        
                        </form>
                    </div>
                </div>
                </div>
                </div>
            </div>
        </div>
    </section>
<%@include file="footer.jsp" %>
</body>
</html>