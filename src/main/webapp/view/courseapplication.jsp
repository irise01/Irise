<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Course</title>
<link rel="stylesheet" href="/css/courseapplication.css">
</head>
<body>
	<%@include file="header.jsp" %>
   <div class="container">
        <form action="" method="post">
            <h2>Registration</h2>
            <div class="content">
                <div class="input-box">
                    <label for="name">First Name</label>
                    <input type="text" placeholder="Enter First Name" id="firstName" required>
                </div>
                <div class="input-box">
                    <label for="lastName">Last Name</label>
                    <input type="text" placeholder="Enter Last Name" id="lastName" required>
                </div>
                <div class="input-box">
                    <label for="email">Email</label>
                    <input type="email" placeholder="Enter Email" id="email" required>
                </div>
                <div class="input-box">
                    <label for="phonenumber">Contact No</label>
                    <input type="tel" placeholder="Enter Contact No" id="phonenumber" required>
                </div>
                <div class="input-box">
                    <label for="name">Address</label>
                    <input type="text" placeholder="Enter Address" id="address" required>
                </div>
                <div class="input-box">
                    <label for="name" >Education</label>
                    <select name="education" id="education">
                        <option value="" disabled >Select Education</option>
                        <option value="">BE</option>
                        <option value="">BCA</option>
                        <option value="">MCA</option>
                        <option value="">BSc</option>
                        <option value="">Other</option>
                    </select>
                </div>
                
                <span class="gender-title">Gender</span>
                <div class="gender-category">
                    <input type="radio" name="gender" id="male">
                    <label for="gender">Male</label>
                    <input type="radio" name="gender" id="female">
                    <label for="gender">Female</label>
                    <input type="radio" name="gender" id="other">
                    <label for="gender">Other</label>
                </div>
            </div>
            <div class="alert">
                <p>By clicking Register, you agree to our <a href="#">Term,</a><a href="#"> Privacy Policy,</a> and Cookies Policy. You may receive SMS
                    notifications from us and can otp out at any time</p>
            </div>
            <div class="button-container">
                <button type="submit">Register</button>
            </div>
        </form>
    </div>
	<%@include file="footer.jsp" %>
</body>
</html>