<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Training Schedule</title>
<script src="https://code.jquery.com/jquery-3.6.2.js" integrity="sha256-pkn2CUZmheSeyssYw3vMp1+xyub4m+e+QK4sQskvuo4=" crossorigin="anonymous"></script>
<script src="/js/trainingschedule.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<%@include file="header.jsp" %>
	<!-- Page Title Start-->
<title>Training Institute in Hyderabad | Online Training - I-Rise IT</title>
<div class="container pt-30">
    <div class="row">
    <a href=" https://t.me/ashokitofficial" target="_blank"><img class="img-fluid mb-3 lazyload" src="/images/training-schedule-banner.jpg" loading="lazy" alt="banner promotion"></a>
  </div>
  </div>


<div class="container px-md-0 px-auto pt-40 pb-70">
  <div class="">
<table id="mytable" class="table-bordered">
  <thead class="primary-bg">
    <tr>
      <th scope="col">S.No</th>
      <th scope="col">Course</th>
      <th scope="col">Trainer</th>
      <th scope="col">Date</th>
      <th scope="col">Time (IST)</th>
      <th scope="col">Google Meet Link</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody id="trainingschesuleID">

</tbody>
</table>
</div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>












<!--  Course Application.jsp
	Application Id= auto generated, primary key
	Course Id, 
	First Name, UI
	Last Name, UI
	Email,UI
	Education,(drop down -BE,BCA,MCA,BSc, Others)UI
	Gender(Radio button)UI
	Date of Application(Calender)UI
	Address,(Text area)UI
	Contact No  UI
	IsPayment(false)
	IsDeleted(false) -->
	
	 











