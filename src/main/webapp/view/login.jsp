<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form </title>
    <link rel="stylesheet" href="/css/login.css">
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
                            <h1>Login</h1>
     							 <form method="post">
        							<div class="txt_field">
         								 <input type="email" id="stdemailId" required><span></span><label>Email</label>
									 </div>
									 <span class="validatesErrorMsg" id="emailValidId" style="display: none;">Please Enter the Email</span>
        							<div class="txt_field">
          								<input type="password" id="stdpasswordId" required><span></span><label>Password</label>
         							 </div>
         							 <span class="validatesErrorMsg" id="passwordValidId" style="display: none;">Please Enter the Password</span>
        							<div class="pass">Forgot Password?</div>
       									 <input type="button" value="Login" onclick="login();">
        							<div class="signup_link">
          								Not a member? <a href="/signup">SignUp</a>
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