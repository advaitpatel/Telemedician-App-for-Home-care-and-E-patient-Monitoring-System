
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>


<%
String s1=request.getParameter("name");

%>

<sql:setDataSource var="cl_reg" driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/admin_hospital"
    user="root"  password="haresh"/>

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
		<link rel="stylesheet" href="assets/plugins/revolution_slider/rs-plugin/css/settings.css">
		<link rel="stylesheet" href="assets/plugins/flex-slider/flexslider.css">
		<link rel="stylesheet" href="assets/plugins/colorbox/example2/colorbox.css">
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
		<!-- end: HEADER -->
		<section class="wrapper">
				<div class="container">
					<div class="portfolio-title">
						<div class="row">
							<div class="col-md-12 center" style="font-family:arial">
								<h2 class="shorter">Doctor's Profile</h2>
							</div>
						</div>
					</div>
					<hr class="tall">
					<div class="row">
						<div class="col-md-4">
							<div class="flexslider" data-plugin-options='{"directionNav":true}'>
								<ul class="slides">
									<li>
										<img src="assets/images/doctor_image.jpg" />
									</li>
								</ul>
							</div>
						</div>
						<sql:query var="doc" dataSource="${cl_reg }">
						select * from doctor where user='<%= s1 %>';
						</sql:query>
						<div class="col-md-12" style="font-family:verdana; margin-left:-170px;margin-top:-100px;">
							<div class="portfolio-info">
								<div class="row">
									<div class="col-md-12" style="margin-left:-40px;">
										<ul class="pull-right" style="margin-left:250px; margin-top:-270px;">
											<li>
												<i class="clip-calendar"></i>&nbsp;Last Updated on 15 March 2015
											</li>
											<li style="color:blue;">
												<i class="clip-pencil-3"></i>&nbsp;
												Doctor ID,<c:forEach var="row" items="${doc.rows}"> <c:out value="${row.user}" /></c:forEach> 
											</li>
										</ul>
									</div>
								</div>
							</div>
							<ul class="portfolio-details list-unstyled" style="margin-left:733px; margin-top:-250px;">
								<li>
									<p>
										<strong>Full Name :</strong>
									</p>
									<p>
										<c:forEach var="row" items="${doc.rows}"> <c:out value="${row.First_name} ${row.Last_name }" /></c:forEach>
									</p>
								</li>
								<li>
									<p>
										<strong>Speciality:</strong>
									</p>
									<ul class="list list-skills icons list-unstyled list-inline">
										<li>
											<c:forEach var="row" items="${doc.rows}"> <c:out value="${row.Speciality}" /></c:forEach> 
										</li>
										
									</ul>
								</li>
								<li>
									<p>
										<strong>Contact Detail:</strong>
									</p>
									<div class="col-md-12">
										<ul>
											<li>
												<c:forEach var="row" items="${doc.rows}"> <c:out value="${row.Email}" /></c:forEach>
											</li>
											<li>
												<c:forEach var="row" items="${doc.rows}"> <c:out value="${row.Mobile}" /></c:forEach>
											</li>

										</ul>
									</div>
								</li>
								<li>&nbsp;</li>
								<li>
									<p>
										<strong>Description</strong>
									</p>
									<p class="taller">
										He is very famous doctor in his field.
										He is well known for his kindness and way of handling patients.<br>
										Anybody can contact his on email or Phone.
									</p>
									<form name="f1" action="date_of_doctor_appointment.jsp">
									
									<c:forEach var="row" items="${doc.rows}">
									 
									<input type="hidden" name="name" value="<c:out value="${row.user}" />" >
									</c:forEach>
									
									<input type="submit" class="btn btn-main-color btn-round" style="font-family:verdana" name="submit" value="Make an Appointment ">
									
									
									
									</form>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
		<!-- end: MAIN CONTAINER -->
		<!-- start: FOOTER -->
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
		<a id="scroll-top" href="#"><i class="clip-arrow-up-2"></i></a>
		<!-- end: FOOTER -->
		<!-- start: MAIN JAVASCRIPTS -->
		<!--[if lt IE 9]>
		<script src="assets/plugins/respond.min.js"></script>
		<script src="assets/plugins/excanvas.min.js"></script>
		<script src="assets/plugins/html5shiv.js"></script>
		<script type="text/javascript" src="assets/plugins/jQuery-lib/1.10.2/jquery.min.js"></script>
		<![endif]-->
		<!--[if gte IE 9]><!-->
		<script src="assets/plugins/jQuery-lib/2.0.3/jquery.min.js"></script>
		<!--<![endif]-->
		<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/plugins/jquery.transit/jquery.transit.js"></script>
		<script src="assets/plugins/hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"></script>
		<script src="assets/plugins/jquery.appear/jquery.appear.js"></script>
		<script src="assets/plugins/blockUI/jquery.blockUI.js"></script>
		<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
		<script src="assets/js/main.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="assets/plugins/revolution_slider/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
		<script src="assets/plugins/revolution_slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
		<script src="assets/plugins/flex-slider/jquery.flexslider.js"></script>
		<script src="assets/plugins/stellar.js/jquery.stellar.min.js"></script>
		<script src="assets/plugins/colorbox/jquery.colorbox-min.js"></script>
		<script src="assets/js/index.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="assets/plugins/mixitup/src/jquery.mixitup.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
				$('#Grid').mixitup();
			});
		</script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Index.init();
				$.stellar();
			});
		</script>
	</body>
</html>
