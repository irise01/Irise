<%@page import="com.irise.model.StudentModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>I-Rise Training Institute.com|HomePage</title>
     
  <!-- CSS here -->
  <link rel="stylesheet" href="https://ashokitech.com/assets/frontend/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://ashokitech.com/assets/frontend/css/owl.carousel.min.css">
  <link rel="stylesheet" href="https://ashokitech.com/assets/frontend/css/animate.min.css">
  <link rel="stylesheet" href="https://ashokitech.com/assets/frontend/css/magnific-popup.css">
  <link rel="stylesheet" href="https://ashokitech.com/assets/frontend/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="https://ashokitech.com/assets/frontend/css/themify-icons.css">
  <link rel="stylesheet" href="https://ashokitech.com/assets/frontend/css/slick.css">
  <link rel="stylesheet" href="https://ashokitech.com/assets/frontend/css/meanmenu.css">
  <link rel="stylesheet" href="https://ashokitech.com/assets/frontend/css/default.css">
  <link rel="stylesheet" href="https://ashokitech.com/assets/frontend/css/style.css">
  <link rel="stylesheet" href="https://ashokitech.com/assets/frontend/css/responsive.css">
  <link rel="icon" type="image/x-icon" href="/images/fevicon(1).png">
  <script type="text/javascript" async="" src="https://wati-integration-service.clare.ai/ShopifyWidget/shopifyWidget.js?54096"></script><script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script> 
  <script src="https://ashokitech.com/assets/frontend/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="https://ashokitech.com/assets/frontend/js/carausol_slider.js"></script>
  <script src="https://kit.fontawesome.com/321101edf2.js" crossorigin="anonymous"></script>
<style>
    span{
        font-size: 16px;
        font-family: sans-serif;
    }

    .ph{
        font-family: courier;
    }

</style>
</head>
<body>
    <header id="home">
        <div style="background-color: lightgray; padding: 15px 0px; text-align:center;">
            <marquee behavior="" direction="">
              <span class="text-black">For Course Enquiry : - </span>
              <span class="ph" style="max-width: 50px; height:10px">(<i class="fa-sharp fa-solid fa-phone"></i>)+91-9403319401</span>
            </marquee>
        </div>

    <div class="header-area"> 
    <div class="header-icons">
    <div class="container">
        <div class="row">
                    <div class="col-xl-8 col-lg-8 col-md-8 col-12">
                        <div class="logo">
                          <a href="">
                           <img src="/images/Black logo - no background.png" alt="settings-logo" width="120px" class="lazyload" loading="lazy">
                 
                          </a>
                        </div>
                    </div>
       <div class="col-xl-4 col-lg-4 col-md-4 col-12 d-lg-block d-md-none d-none">
            
            <div class="rounded-social-buttons" style="margin-top: 28px;">
                <a class="social-button whatsup" href="" ><i class="fab fa-whatsapp"></i></a>
                <a class="social-button twitter" href="" ><i class="fab fa-twitter"></i></a>
                <a class="social-button youtube" href="" ><i class="fab fa-youtube"></i></a>
                <a class="social-button instagram"href=""><i class="fa-brands fa-instagram"></i></a>
               <a class="social-button telegram" href="" ><i class="fab fa-telegram"></i></a>
               <a class="social-button facebook" href="" ><i class="fab fa-facebook"></i></a>
            </div>
      </div>
        
        </div>
    </div>
    </div>
    </div>

    <div class="header-bottom-area primary-bg " style="transition: .6s;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-12 col-lg-12 col-md-12 col-12 cart-login-btn">     
                    <div class="main-menu justify-content-between align-items-center w-100">
                        <nav id="mobile-menu" style="display: block;">
                        <ul class="mx-auto text-center">
                            <li> <a href="/"> Home</a> </li>
                            <li> <a href="/services"> Services <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                        <ul class="submenu">
                            <li> <a href="">Online Training</a> </li>
                            <li> <a href="">Corporate Training</a> </li>    
                            <li> <a href="">Placements</a> </li>   
                            <li> <a href="">Internship Programs</a> </li>                                      
                            <li> <a href="">Mock Interviews</a> </li>                                                
                            <li> <a href="">Academic Projects</a> </li>
                            <li> <a href="">Software Development</a> </li>                                              
                        </ul> </li>

                    <li><a href="/online-training-schedule" >Training Schedules <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                        <ul class="submenu">

                            <li><a href="/online-training-schedule" ">Online Training</a></li>
                            <li><a href="#">Classroom Training</a></li>
                            <li><a href="#">Weekend Workshops</a></li>
                            <li><a href="#">Free Training</a></li>
                        </ul> </li>

                     <li><a href="/about-us">About Us</a></li>
                            <li><a href="/contact-us">Contact Us</a></li>
                            <li>
                            <%if (request.getSession(false).getAttribute("studentDetails") != null) {
                            	
                            	StudentModel studentModel=(StudentModel)request.getSession(false).getAttribute("studentDetails");
                            	
                            	long studentId=studentModel.getStudId();
                            	String studentName=studentModel.getStudFirstName();
                            	if(studentId==0){%>
                            		
                                    <div class="col-12">
                                      <div>
                                          <button class="btn btn-primary top-button" ><i
                                                    class="fa fa-unlock"></i><a href="/login"> Login</a></button>
                                      </div>
                                    </div>
                                 
                            	<% }else{%>
                            		<div class="col-12">
                           <div>
                             <button class="btn btn-primary top-button">
                            <img src="/images/profile.png" alt="userProfile" style="width:30px; height: 25px; padding-right: 5px;">
                            <a href="/dashboard"><%=studentName %></a></button>
                            </div>
                              </div>
                            	
                            	<%} %>
                            	
                            <%}else{ %>
                            
                             <div class="col-12">
                                      <div>
                                          <button class="btn btn-primary top-button" ><i
                                                    class="fa fa-unlock"></i><a href="/login"> Login</a></button>
                                      </div>
                                    </div>
                            <%} %>
                            </li>
                           </nav>
                    </div>
                </div>
                    
                </div>
            </div>
        </div>

</header>
</body>
</html>