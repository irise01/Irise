<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.irise.model.AdminCoursesModel" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User DashBorad</title>
<link rel="stylesheet" href="/css/dashboard.css">
<script src="https://code.jquery.com/jquery-3.6.2.js" integrity="sha256-pkn2CUZmheSeyssYw3vMp1+xyub4m+e+QK4sQskvuo4=" crossorigin="anonymous"></script>
<script src="/js/dashboard.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<%@include file="header.jsp" %>
    <span></span>
    
    <div class="account-menu-wrapper">
    	<div class="container" id="tabcontainer">
    		<ul class="e-visa-footer-links" style="">
    			<li>
    				<a id="myApplications-menu" 
    				class="col-xs-3 col-sm-3 col-md-3 col-lg-3 my-account-tab active"
    				href="#myApplications" >Courses</a>
    			</li>
    			
    			<li>
    				<a id="stuendDetailsId-menu" 
    				class="col-xs-3 col-sm-3 col-md-3 col-lg-3 my-account-tab "
    				href="#">Student Details</a>
    			</li>
    			<!-- <li>
    				<a id="settingId-menu" 
    				class="col-xs-3 col-sm-3 col-md-3 col-lg-3 my-account-tab "
    				href="#">Add New Course</a>
    			</li> -->
    			<li>
    				<a id="settingId-menu" 
    				class="col-xs-3 col-sm-3 col-md-3 col-lg-3 my-account-tab "
    				href="#setting">Settings</a>
    			</li>
    			<li>
    				<a id="logoutId" 
    				class="col-xs-3 col-sm-3 col-md-3 col-lg-3 my-account-tab "
    				href="/logout">Log out</a>
    			</li>
    		</ul>
    	</div>
    </div>   
    <button type="button" class="btn btn-outline-primary mt-20 " 
    			style="margin-left:80px;"><a id="logoutId" 
    				class="my-account-tab "
    				href="#addNewCourse">Add New User</a></button>
    <section id="myApplications" class="my-account-section-setting">
     <div class="center mb-20  mt-180">
			<h1>User Course Information</h1>
			<table >
				<thead>
					<tr>
						<th>Course ID</th>
						<th>Course Name</th>
						<th>Fees</th>
						<th>Duration</th>
						<th>Start Date</th>
						<th>Demo Date</th>
						<th>Google Meet Link</th>
						<th colspan="2">Actions</th>
					</tr>
				</thead>
				<tbody id="AdminCourseInfoId">
					<%-- <% List<AdminCoursesModel> list =(ArrayList<AdminCoursesModel>)request.getAttribute("admincourselist"); %>
					<%for(AdminCoursesModel admin:list){ %>
					<tr>
						<td><%=admin.getCourseId() %></td>
						<td><%=admin.getCourseName() %></td>
						<td><%=admin.getDuration() %></td>
						<td><%=admin.getStartDate() %></td>
						<td><%=admin.getDemoDate() %></td>
						<td><%=admin.getGmeetLink()%></td>						
						<td><a href='updateUser?courseId=<%=admin.getCourseId()%>'>Update</a></td>
						<td><a href='DeleteServlet?courseId=<%=admin.getCourseId()%>'
							onclick="return confirm('Are you sure you want to delete this Course?');">Delete</a></td>
					</tr>
					<%} %>  --%>
				</tbody>
			</table>
		</div>
		<br><br><br><br><br><br><br><br>
         <br><br><br><br><br><br><br><br>
         </section> 
         
         <section id="setting" class="my-account-section-setting"
			style="display: none;">
			<div class="container">
				<div class="mtb-30">
					<div>
						<h2 class="settings-header">Personal account</h2>
						<div class="settings-section">
							<div class="settings-icon">
								<img src="/images/profile.png" style="width:50px;">
								
							</div>
							<div class="settings-content">
								<div class="settings-fields">
									<header>Account Information:</header>
									<div class="input-box" id="inputfullnameId">
										<div class="input-box-top">
											<div class="input-box-label">First name</div>
										</div>
										<div class="input-box-bottom">
											<div class="actual-input">
												<div class="text-input-single">
													<form autocapitalize="off">
														<input type="text" id="updateUserNameId"
															autocomplete="off" value="">
													</form>
												</div>

											</div>

										</div>
									</div>
									
									<div class="input-box" id="inputlastnameId">
										<div class="input-box-top">
											<div class="input-box-label">Last name</div>
										</div>
										<div class="input-box-bottom">
											<div class="actual-input">
												<div class="text-input-single">
													<form autocapitalize="off">
														<input type="text" id="updateUserlastNameId"
															autocomplete="off" value="">
													</form>
												</div>

											</div>

										</div>
									</div>
									
									
									
								</div>
								<div class="settings-button-wrapper">
									<div class="input-box">
										<div
											class="input-box-bottom button-container submit-input-container"
											id="subId">
											<button class="btn btn--disabled"
												onclick="updateUserFullName();">Save Data</button>
										</div>
									</div>
								</div>
							</div>


						</div>
						<div class="dataSucess">&#10004; Data updated successfully</div>
						<!---->
						<div class="settings-section">
							<div class="settings-icon">
								<img src="/images/padlock.png" style="width:50px;">
							</div>
							<div class="settings-content">
								<div class="settings-fields">
									<div class="input-box">
										<form autocomplete="off">
											<header>Change password</header>
											<!---->
											<div class="input-box">
												<div class="input-box-top">
													<div class="input-box-label">Current password</div>
												</div>
												<div class="input-box-bottom">
													<div class="actual-input">
														<div class="text-input-single">
															<input type="password" id="currentPasswordId"
																autocomplete="off" onchange="validate();"> <span
																id="currentPassId">Please enter the correct
																password</span>
														</div>
														<!---->
													</div>
													<!---->
												</div>
											</div>
											<div class="input-box">
												<div class="input-box-top">
													<div class="input-box-label">Password</div>
													<div class="input-box-hint">At least 8 characters,
														including at least 1 uppercase letter, 1 lowercase letter
														and a number.</div>
												</div>
												<div class="input-box-bottom">
													<div class="actual-input">
														<div class="text-input-single">
															<input type="password" id="newPassWordId"
																autocomplete="off" onchange="validate();"> <span
																id=newPassId>Please enter the correct password</span>
														</div>
														<!---->
													</div>
													<!---->
												</div>
											</div>
											<div class="input-box">
												<div class="input-box-top">
													<div class="input-box-label">Confirm password</div>
													<div class="input-box-hint">The two passwords must
														match.</div>
												</div>
												<div class="input-box-bottom">
													<div class="actual-input">
														<div class="text-input-single">
															<input type="password" id="confirmPassId"
																autocomplete="off" onchange="validate();"> <span
																id="confPassId">Password not matched please enter
																correct password</span>
														</div>
														<!---->
													</div>
													<!---->
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="settings-button-wrapper">
									<div class="input-box">
										<div
											class="input-box-bottom button-container submit-input-container">
											<button class="btn btn--disabled"
												onclick="updateUserPassword();">
												<span>Change Password</span>
												<!---->
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="dataSucess" id="passwordUpdaetedmsg">&#10004;
							Password updated successfully</div>
					</div>

				</div>
			</div>
		</section>
         <section id="addNewCourse" class="my-account-section-setting "
         style="display: none; margin-top: 120px;">
         	 <div class="container-fluid ">
         <div class="container ">
            <div class="row">
                <div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-md-10 offset-md-1">
                    <div class="section-title mb-50 text-center">
                        <div class="section-title-heading mb-20 mt-120">
                            <h1>Add New Course</h1>
								<form action="#myApplications" method="post">
									<div class="txt_field">
										<input type="text" id="courseNameId" required > <span></span> <label>Course Name</label>
									</div>
									
									<div class="txt_field">
										<input type="text" id="feesId" required > <span></span> <label>Fees</label>
									</div>
									
									<div class="txt_field">
										<input type="text" id="durationId" required > <span></span> <label>Duration</label>
									</div>
									
									<div class="txt_field">
										<input type="text" id="startDateId" required > <span></span> <label>Start Date</label>
									</div>
									
									<div class="txt_field">
										<input type="text" id="demoDateId" required > <span></span> <label>Demo Date</label>
									</div>
									
									<div class="txt_field">
										<input type="text" id="gmeetLinkId" required "> <span></span> <label>Google Meet Link</label>
									</div>
									
										<input type="submit" value="ADD" onclick="savecourse();">
                					
                				</form>
							</div>                        
                        </div>                      
                    </div>
                </div>
            </div>
			
		</div>
		<br><br><br><br><br><br><br><br>
          <br><br><br><br><br><br><br><br><br><br>
          
         </section>
          
	
    <%@include file="footer.jsp" %>
</body>
</html>


<%-- <div class="container-fluid">
         <div class="container " id="courseInfoId"  >
            <div class="row" >
                <div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-md-10 offset-md-1" stlye="width:90px;">
                    <div class="section-title mb-50 text-center" >
                        <div class="section-title-heading mb-20 mt-80"  >
                           
                				</div>
							</div>                        
                        </div>                      
                    </div>
                </div>
            </div> --%>