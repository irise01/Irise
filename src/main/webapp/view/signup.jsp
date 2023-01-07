<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp Form</title>
    <link rel="stylesheet" href="/css/signup.css">
    <script src="https://code.jquery.com/jquery-3.6.2.js" integrity="sha256-pkn2CUZmheSeyssYw3vMp1+xyub4m+e+QK4sQskvuo4=" crossorigin="anonymous"></script>
<script src="/js/student.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<%@include file="header.jsp" %>
   <br><br><br><br><br><br><br><br><br><br><br>
    <div class="container-fluid ">
         <div class="container ">
            <div class="row">
                <div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-md-10 offset-md-1">
                    <div class="section-title mb-50 text-center">
                        <div class="section-title-heading mb-20">
                            <h1>SignUp</h1>
								<form action="newsignup" method="post">
									<div class="txt_field">
										<input type="text" id="firstNameId" required onchange="validate();"> <span></span> <label>First Name</label>
									</div>
									<span class="validatesErrorMsg" id="firstNameValidId" style="display: none;">Please Enter the First name</span>
									<div class="txt_field">
										<input type="text" id="lastNameId" required onchange="validate();"> <span></span> <label>Last Name</label>
									</div>
									<span class="validatesErrorMsg" id="lastNameValidId" style="display: none;">Please Enter the Last name</span>
									<div class="txt_field">
										<input type="email" id="emailId" required onchange="validate();"> <span></span> <label>Email</label>
									</div>
									<span class="validatesErrorMsg" id="emailValidId" style="display: none;">Please Enter the Email</span>
                					<div class="txt_field">
										<input type="text" id="mobileNoId" required onchange="validate();"> <span></span> <label>Mobile No</label>
									</div>
									<span class="validatesErrorMsg" id="mobileNoValidId" style="display: none;">Please Enter the Mobile No</span>
									<div class="txt_field">
										<input type="password" id="passwordId" required onchange="validate();"> <span></span> <label>Password</label>
									</div>
									<span class="validatesErrorMsg" id="passwordValidId" style="display: none;">Please Enter the Password</span>
										<input type="submit" value="Signup" onclick="savestudent();">
                					<div class="signup_link">
                    					Already have an account..! <a href="/login">Login</a>
                					</div>
                				</form>
							</div>                        
                        </div>                      
                    </div>
                </div>
            </div>
			
		</div>
	<br><br><br><br><br><br><br><br><br><br><br>
	<%@include file="footer.jsp" %>
</body>
</html>