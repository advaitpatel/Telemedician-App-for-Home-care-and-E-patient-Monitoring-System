<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>
<!DOCTYPE html>
<!--[if IE 8]><html class="ie8" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en">	
	<!--<![endif]-->
	<!-- start: HEAD -->
	<head>
		<title>Vision Medicare</title>
		<!-- start: META -->
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<!-- end: META -->
		<!-- start: MAIN CSS -->
		<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/fonts/style.css">
		<link rel="stylesheet" href="assets/plugins/animate.css/animate.min.css">
		<link rel="stylesheet" href="assets/css/main.css">
		<link rel="stylesheet" href="assets/css/main-responsive.css">
		<link rel="stylesheet" href="assets/css/theme_blue.css" type="text/css" id="skin_color">
		<!-- end: MAIN CSS -->
		<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
		<link rel="stylesheet" href="assets/plugins/flex-slider/flexslider.css">
		<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: HTML5SHIV FOR IE8 -->
		<!--[if lt IE 9]>
		<script src="assets/plugins/html5shiv.js"></script>
		<![endif]-->
		<!-- end: HTML5SHIV FOR IE8 -->
	</head>
	<!-- end: HEAD -->
	<body>
		<!-- start: HEADER -->
		<header>
			<!-- start: TOP BAR -->
			<div class="clearfix " id="topbar">
				<div class="container">
					<div class="row">
						<div class="col-sm-6">
							<!-- start: TOP BAR CALL US -->
							<div class="callus">
								Contact us - Mail:
								<a href="#">
									info@visionmedicare.com
								</a>
							</div>
							<!-- end: TOP BAR CALL US -->
						</div>
						<div class="col-sm-6">
							<!-- start: TOP BAR SOCIAL ICONS -->
							<div class="social-icons" style="margin-left:300px;margin-top:2px;">
								<button class="btn btn-pinterest btn-teal">
								<i class="clip-phone"></i>
								| Emergency 812-841-3177 | 960-134-5289
							</button>
							</div>
							<!-- end: TOP BAR SOCIAL ICONS -->
						</div>
						
						<div class="col-sm-9" style="margin-right:50px; margin-top:-40px;">
							<!-- start: TOP BAR SOCIAL ICONS -->
							<div class="social-icons" style="margin-left:300px;margin-top:2px;">
								<button class="btn btn-pinterest btn-red" href="blood_eyes_details.jsp">
									<i class="clip-droplet"></i>
									| Donate Your Blood
								</button>
							</div>
							<div class="social-icons" style="margin-left:490px;margin-top:-34px;">
								<button class="btn btn-pinterest btn-green" href="blood_eyes_details.jsp">
									<i class="clip-tux"></i>
									| Donate Your Eyes
								</button>
							</div>
							<div class="social-icons" style="margin-left:675px;margin-top:-34px;">
								<button class="btn btn-pinterest btn-yellow">
									<i class="clip-users-3"></i>
									| Make an Appointment
								</button>
							</div>
							<!-- end: TOP BAR SOCIAL ICONS -->
						</div>

					</div>
				</div>
			</div>
			<!-- end: TOP BAR -->
			<div role="navigation" class="navbar navbar-default navbar-fixed-top space-top">
				<!-- start: TOP NAVIGATION CONTAINER -->
				<div class="container">
					<div class="navbar-header">
						<!-- start: RESPONSIVE MENU TOGGLER -->
						<button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
							<span class="sr-only">Toggle navigation</span>
						</button>
						<!-- end: RESPONSIVE MENU TOGGLER -->
						<!-- start: LOGO -->
						<a class="navbar-brand" href="index.jsp">
							<img src="assets/images/Visionlogo.png" height="100px" width="200px">
						</a>
						<!-- end: LOGO -->
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="active">
								<a href="index.jsp">
									<i class="clip-home-2"></i>
								</a>
							</li>
							<li class="dropdown">
								<a class="dropdown-toggle" href="#" data-toggle="dropdown" data-hover="dropdown">
									About Us <b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="introduction.jsp">
											Introduction
										</a>
									</li>
									<li>
										<a href="founders.jsp">
											Founder
										</a>
									</li>
									<li>
										<a href="webteam.jsp">
											Our Web Team
										</a>
									</li>
									<li>
										<a href="question.jsp">
											Ask Question
										</a>
									</li>
								</ul>
							</li>
							
							
							<li class="dropdown">
								<a class="dropdown-toggle" href="#" data-toggle="dropdown" data-hover="dropdown">
									Specialties <b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="doctor_appointment.jsp">
											Make an Appoinment
										</a>
									</li>
									<li>
										<a href="doctor_search.jsp">
											Find Doctors
										</a>
									</li>
									<li>
										<a href="search_labs.jsp">
											Search Labs
										</a>
									</li>
									<li>
										<a href="seach_medicalstore.jsp">
											Find Medical Stores
										</a>
									</li>
									<li>
										<a href="history.jsp">
											View my history
										</a>
									</li>
									<li>
										<a href="reports_view.jsp">
											My Reports
										</a>
									</li>
								</ul>
							</li>
							<li class="dropdown mega-menu">
								<a class="dropdown-toggle" href="#" data-toggle="dropdown" data-hover="dropdown">
									Our Heros <b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<!-- start: MEGA MENU CONTENT -->
										<div class="mega-menu-content">
											<div class="row">
												<div class="col-sm-3">
													<ul class="sub-menu">
														<li>
															<span class="mega-menu-sub-title">Our Doctors</span>
															<ul class="sub-menu">
																<li>
																	<a href="doctor_profile_select.jsp">
																		Permanant Doctors
																	</a>
																</li>
																<li>
																	<a href="doctor_profile_select.jsp">
																		Visiting Doctors
																	</a>
																</li>
																<li>
																	<a href="doctor_profile_select.jsp">
																		Specialized Doctors
																	</a>
																</li>
															</ul>
														</li>
													</ul>
												</div>
												<div class="col-sm-3">
													<ul class="sub-menu">
														<li>
															<span class="mega-menu-sub-title">Administrator Staff</span>
															<ul class="sub-menu">
																<li>
																	<a href="adminstaff.jsp">
																		Receptionist
																	</a>
																</li>
																<li>
																	<a href="adminstaff.jsp">
																		Data Entry Staff
																	</a>
																</li>
																<li>
																	<a href="adminstaff.jsp">
																		Web Handler Staff
																	</a>
																</li>
															</ul>
														</li>
													</ul>
												</div>
												<div class="col-sm-3">
													<ul class="sub-menu">
														<li>
															<span class="mega-menu-sub-title">Nurses & Wardboys</span>
															<ul class="sub-menu">
																<li>
																	<a href="nurses_wardboys.jsp">
																		OT Nurses
																	</a>
																</li>
																<li>
																	<a href="nurses_wardboys.jsp">
																		Regular Nurses
																	</a>
																</li>
																<li>
																	<a href="nurses_wardboys.jsp">
																		Ambulance Drivers
																	</a>
																</li>
																<li>
																	<a href="nurses_wardboys.jsp">
																		Cleaners
																	</a>
																</li>
															</ul>
														</li>
													</ul>
												</div>
												<div class="col-sm-3">
													<ul class="sub-menu">
														<li>
															<span class="mega-menu-sub-title">Peons</span>
															<ul class="sub-menu">
																<li>
																	<a href="peons.jsp">
																		Doctor-Secrataries
																	</a>
																</li>
																<li>
																	<a href="peons.jsp">
																		Home Care Peons
																	</a>
																</li>
																<li>
																	<a href="peons.jsp">
																		Compounders
																	</a>
																</li>
															</ul>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<!-- end: MEGA MENU CONTENT -->
									</li>
								</ul>
							</li>
							
							<%
							HttpSession ses=request.getSession(false);
							String ss=(String)ses.getAttribute("login");




							%>
							 <sql:setDataSource var="cl_reg" driver="com.mysql.jdbc.Driver"
     							url="jdbc:mysql://localhost:3306/admin_hospital"
     								user="root"  password="haresh"/>
							
							<sql:query var="hit" dataSource="${cl_reg }">
								select hits from counter;
							</sql:query>
							<c:set var="hit" value="${hit.rowsByIndex[0][0] + 1 }"></c:set>
							
							<sql:update dataSource="${cl_reg }">
								update counter set hits='<c:out value="${hit }"></c:out>' where sr='1';
							</sql:update>
							
							
							
							
							<sql:query dataSource="${cl_reg}" var="result">
								select * from patient where user="<%=ss%>";
							</sql:query>
							<c:forEach var="row" items="${result.rows }">
							<c:set var="s3" value="${row.First_name } ${row.Last_name}"></c:set>
							</c:forEach>



							<li class="dropdown">
							<c:choose>
								<c:when test="${s3==null}">
								<a class="dropdown-toggle" href="#" data-toggle="dropdown" data-hover="dropdown">
									Sign Up / Sign In <b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="SignUp.jsp">
											Create a new Account
										</a>
									</li>
									<li>
										<a href="Login.jsp">
											Login to your Account
										</a>
									</li>
								</ul>
								</c:when>
								<c:otherwise>
								<sql:query var="logcount" dataSource="${cl_reg }">
									select logcount from counter;
								</sql:query>
								<c:set var="logcount" value="${logcount.rowsByIndex[0][0] + 1 }"></c:set>
							
								<sql:update dataSource="${cl_reg }">
									update counter set logcount='<c:out value="${logcount }"></c:out>' where sr='1';
								</sql:update>
								
								<a class="dropdown-toggle" href="#" data-toggle="dropdown" data-hover="dropdown">
									<c:out value="${s3}" />
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="logout.jsp">
											Log Out
										</a>
									</li>
									
								</ul>

								</c:otherwise>
							</c:choose>
							</li>
							<li class="menu-search">
								<!-- start: SEARCH BUTTON -->
								<a href="#" data-placement="bottom" data-toggle="popover">
									<img src="assets/images/dummy.jpg">
								</a>
								<!-- end: SEARCH BUTTON -->
								<!-- start: SEARCH POPOVER -->
								<div class="popover bottom search-box">
									<div class="arrow"></div>
									<div class="popover-content">
										<b>Go to your Account</b>
									</div>
								</div>
								<!-- end: SEARCH POPOVER -->
							</li>
						</ul>
					</div>
				</div>
				<!-- end: TOP NAVIGATION CONTAINER -->
			</div>
		</header>
<!-- end: HEAD -->
<!-- start: BODY -->
<body class="login example1">
	
	<div class="row">
						<div class="col-md-12">
							<!-- start: FORM VALIDATION 1 PANEL -->
							<div class="panel panel-default">
								<div class="panel-body">
									<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil-square teal"></i> REGISTER Your Self</h2>
									
									<hr>
									<form action="add_patient.jsp" role="form" id="form">
										<div class="row">
											<div class="col-md-12">
												<div class="errorHandler alert alert-danger no-display">
													<i class="fa fa-times-sign"></i> You have some form errors. Please check below.
												</div>
												<div class="successHandler alert alert-success no-display">
													<i class="fa fa-ok"></i> Your form validation is successful!
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label"><i class="clip-arrow-right-3"></i>
														First Name <span class="symbol required"></span>
													</label>
													<input type="text" placeholder="Insert your First Name" class="form-control" id="firstname" name="First_name" tabindex="1" required>
												</div>
												
												<div class="form-group" >
													<label class="control-label"><i class="clip-arrow-right-3"></i>
														Gender <span class="symbol required"></span>
													</label>
													<div>
														<label class="radio-inline">
															<input type="radio" class="green" value="Female" name="gender" id="gender_female " tabindex="3">
															Female
														</label>
														<label class="radio-inline">
															<input type="radio" class="green" value="Male" name="gender"  id="gender_male" tabindex="4">
															Male
														</label>
													</div>
												</div>
												<br>
												<div class="form-group" style="margin-top:35px;">
													<label class="control-label"><i class="clip-arrow-right-3"></i>
														Email Address <span class="symbol required"></span>
													</label>
													<input type="email" placeholder="Text Field" class="form-control" id="email" name="Email_id" tabindex="8">
												</div>
												
												
												


												<div class="form-group" >
													<label class="control-label"><i class="clip-arrow-right-3"></i>
														Password <span class="symbol required"></span>
													</label>
													<input tabindex="11" type="password" class="form-control" name="Set_pwd" id="password" required>
												</div>

												<div class="form-group">
													<label class="control-label"><i class="clip-arrow-right-3"></i>
														Confirm Password <span class="symbol required"></span>
													</label>
													<input type="password" tabindex="12" class="form-control" id="password_again" name="Confirm-pwd" required>
												</div>
												
		
												
											</div>
																			
											<div class="col-md-6">
												
												<div class="form-group">
													<label class="control-label"><i class="clip-arrow-right-3"></i>
														Last Name <span class="symbol required"></span>
													</label>
													<input type="text" placeholder="Insert your Last Name" class="form-control" id="lastname" name="Last_name" tabindex="2">
												</div>
												
												<div class="form-group connected-group">
													<label class="control-label"><i class="clip-arrow-right-3"></i>
														Date of Birth <span class="symbol required"></span>
													</label>
													<div class="row">
														<div class="col-md-3">
															<select name="Date" id="dd" class="form-control" tabindex="5">
																<option value="">DD</option>
																<option value="01">1</option>
																<option value="02">2</option>
																<option value="03">3</option>
																<option value="04">4</option>
																<option value="05">5</option>
																<option value="06">6</option>
																<option value="07">7</option>
																<option value="08">8</option>
																<option value="09">9</option>
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
																<option value="13">13</option>
																<option value="14">14</option>
																<option value="15">15</option>
																<option value="16">16</option>
																<option value="17">17</option>
																<option value="18">18</option>
																<option value="19">19</option>
																<option value="20">20</option>
																<option value="21">21</option>
																<option value="22">22</option>
																<option value="23">23</option>
																<option value="24">24</option>
																<option value="25">25</option>
																<option value="26">26</option>
																<option value="27">27</option>
																<option value="28">28</option>
																<option value="29">29</option>
																<option value="30">30</option>
																<option value="31">31</option>
															</select>
														</div>
														<div class="col-md-3">
															<select name="Month" id="mm" class="form-control" tabindex="6">
																<option value="">MM</option>
																<option value="01">1</option>
																<option value="02">2</option>
																<option value="03">3</option>
																<option value="04">4</option>
																<option value="05">5</option>
																<option value="06">6</option>
																<option value="07">7</option>
																<option value="08">8</option>
																<option value="09">9</option>
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
															</select>
														</div>
														<div class="col-md-3">
															<input type="text" placeholder="YYYY" id="yyyy" name="Year" class="form-control" tabindex="7">
														</div>
													</div>
												</div>
												<br><br>
												<div class="form-group" >
													<label for="form-field-mask-2" class="control-label"><i class="clip-arrow-right-3"></i>
													Mobile Number <small class="text-warning">999-999-9999</small>
													</label>
													<div class="input-group">
														<span class="input-group-addon"><i class="clip-phone-hang-up"></i></span>
														<input type="number" tabindex="8" id="mno" class="form-control " name="Mobile_no">
													</div>
												</div>

												<div class="form-group">
													<label class="control-label"><i class="clip-arrow-right-3"></i>
														User Name <span class="symbol required"></span>
													</label>
													<input type="text" tabindex="10" class="form-control" id="username" name="User_name" required>
												</div>  
												

												

												<div class="form-group">
													<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

													<button type="submit" class="btn btn-success btn-lg" tabindex="14">
														&nbsp;&nbsp;Register&nbsp;&nbsp;
													</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<button type="reset" class="btn btn-danger btn-lg" tabindex="15" >
														&nbsp;&nbsp;&nbsp;&nbsp;Reset&nbsp;&nbsp;&nbsp;&nbsp;
													</button>
												</div>
																																				
											</div>
										</div>

										
									</form>
								</div>
							</div>
							<!-- end: FORM VALIDATION 1 PANEL -->
						</div>
					</div>

	<footer id="footer">
			<div class="footer-copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p style="margin-left:350px;">
								&copy; Copyright 2015 by<a class="logo" href="#"> Vision Medicare</a>. All Rights Reserved.
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	<!-- start: MAIN JAVASCRIPTS -->
	<!--[if lt IE 9]>
		<script src="assets/plugins/respond.min.js"></script>
		<script src="assets/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="assets/plugins/jQuery-lib/1.10.2/jquery.min.js"></script>
		<![endif]-->
	<!--[if gte IE 9]><!-->
	<script src="assets/plugins/jQuery-lib/2.0.3/jquery.min.js"></script>
	<!--<![endif]-->
	<script src="assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/plugins/blockUI/jquery.blockUI.js"></script>
	<script src="assets/plugins/iCheck/jquery.icheck.min.js"></script>
	<script src="assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
	<script src="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
	<script src="assets/plugins/less/less-1.5.0.min.js"></script>
	<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<script
		src="assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
	<script src="assets/js/main.js"></script>
	<!-- end: MAIN JAVASCRIPTS -->
	<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script
		src="assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="assets/js/login.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script>
			jQuery(document).ready(function() {
				Main.init();
				Login.init();
			});
		</script>
</body>
<!-- end: BODY -->
`
</html>