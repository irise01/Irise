<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%String studentFirstName=null;
long studentid=0;
String studentLastName=null;
%>

<%if (request.getSession(false).getAttribute("studentDetails") != null) {
                            	
                            	StudentModel studentModel=(StudentModel)request.getSession(false).getAttribute("studentDetails");
                            	
                            	studentid=studentModel.getStudId();
                            	
                            	studentFirstName=studentModel.getStudFirstName();
                            	
                            	studentLastName=studentModel.getStudLastName();
                            	
}%>
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
    				href="#myApplications" >My Courses</a>
    			</li>
    			
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
    
    <section id="myApplications" class="my-account-section-setting">
     <div class="container-fluid ">
         <div class="container " id="courseInfoId" >
            <div class="row">
                <div class="col-xl-8 offset-xl-2 col-lg-8 offset-lg-2 col-md-10 offset-md-1">
                    <div class="section-title mb-50 text-center">
                        <div class="section-title-heading mb-20 mt-80">
                           <h1>User Course Information</h1>
			<table>
				<thead>
					<tr>
					<th>Course ID</th>
						<th>Course Name</th>
						<th>Fees</th>
						<th>Duration</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<%-- <% List<User> list =(ArrayList<User>)request.getAttribute("userlist"); %>
					<%for(User user:list){ %>
					<tr>
						<td><%=user.getUserName() %></td>
						<td><%=user.getEmail() %></td>
						<td><%=user.getPassword() %></td>
						<td><a href='updateUser?userName=<%=user.getUserName()%>'>Update</a></td>
						<td><a href='DeleteServlet?userName=<%=user.getUserName()%>'
							onclick="return confirm('Are you sure you want to delete this User?');">Delete</a></td>
					</tr>
					<%} %> --%>
				</tbody>
			</table>
                				</div>
							</div>                        
                        </div>                      
                    </div>
                </div>
            </div>
         </section> 
         
         <section id="setting" class="my-account-section-setting"
			style="display: none;">
			<div class="container" style="design:flex">
				<div class="mtb-30">
					<div>
						<h2 class="settings-header">Personal account</h2>
						<div class="settings-section">
							<div class="settings-icon">
								<img src="/images/profile.png" style="width:50px;">
								<!---->
							</div>
							<div class="settings-content">
								<div class="settings-fields">
									<header>Account Information:</header>
									<div class="input-box" id="inputfullnameId">
										<div class="input-box-top">
											<div class="input-box-label" >First name</div>
										</div>
										<div class="input-box-bottom">
											<div class="actual-input">
												<div class="text-input-single">
													<form autocapitalize="off">
														<input type="text" id="updateUserNameId"
															autocomplete="off" value="<%=studentFirstName%>">
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
															autocomplete="off" value="<%=studentLastName%>">
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
							<div class="settings-icon" >
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
																autocomplete="off" onchange="validate();"> 
																
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
																autocomplete="off" onchange="validate();">
																 
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
																autocomplete="off" onchange="validate();"> 
																
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
         
         <br><br><br><br><br><br><br><br>
           
	
    <%@include file="footer.jsp" %>
</body>
</html>