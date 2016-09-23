<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>
<!DOCTYPE html>
<!--[if IE 8]><{html class="ie8" lang="en"><![endif]-->
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
		<!-- start: MAIN CONTAINER -->
		<div class="main-container">
			<section class="wrapper">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<h3>Eye Donate</h3>
							<div class="well well-lg">
								<p class="lead">
									Vision Medicare EYE BANK 
								</p>
								<p>
									One of SEWA’s largest initiatives is the establishment of the SEWA ROSHNI Eye Bank at the Lilavati Hospital. This charitable, nonprofit organization is dedicated to restoring vision through corneal transplantation and medical research. We have organized corneal Grafting Diagnostic Camp followed by free Keratoplasties (Corneal Transplant Surgeries) at Vision Medicare & Research Centre.
								</p>
								<p>
									The Directorate of Health Services has honored Vision Medicare Eye Bank in the year 2005-2006 & 2006-2007 with Certificates of Appreciation. A recurring grant is sanctioned to us by District Blindness Control Program, which is an ongoing process.
								</p>
							</div>
							<p class="lead">
								Contact VISION-MEDICARE Eye Bank:
							</p>
							<p>
								<div class="col-md-11">
									<div class="well well-lg">
										<ul>
											<li>												To register your name as dono
											</li>
											<li>
												To call a team of doctors to collect the donatedeyes of a family member
												</li>
											<li>
												For more information/to clear any doubts abouteye donation
											</li>
											<li>
												Facilisis in pretium nisl aliquet
											</li>
											<li>
												Nulla volutpat aliquam velit
											</li>
										</ul>
									</div>
								</div>
							</p>
						</div>
						<div class="col-md-6">
							<h3>Donate Blood</h3>
							<div class="well well-lg">
								<p class="lead">
									Vision Medicare Blood Bank
								</p>
								<p>
									The Blood Bank of Vision Medicare is functional since 2011. The Blood Bank caters to the need of all the patients of the Hospital. All blood collected is split into various components like Packed cells, Fresh Frozen plasma, Cryoprecipitate, Platelets, and Single Donor Platelets on request.
								</p>
								<p>
									There are around 6000 donors per year giving blood to the Bank which is split into various components.
								</p>
								<p>
									The Bank caters to in-patient and out patients of the Hospital. Blood in excess is given to other Blood Banks belonging to Federation of Bombay Blood Banks on credit debit basis.
								</p>
								<p>
									The Blood Bank adheres to strict quality control measures and is very particular in issuing the right product to the patients in need after thorough testing.
								</p>
								<p>
									The Blood Bank also organises Blood Donation Drives and Camps to voluntarily collect blood to issue components to patients.
								</p>
								<p>
									There is a constant effort made to motivate, inspire, encourage and influence patient’s relatives and friends to donate blood at our Blood Bank.
								</p>
								<p>
									During difficult days and during any crisis (natural or man-made) the Blood Bank always strives to work towards helping patients not only belonging to Lilavati Hospital but also catering to the need of anyone and everyone in the city.
								</p>
								<p>
									The Blood Bank is inspected and audited for its products by the FDA (Food and Drug Administration) who guides and checks standards laid by them to see that implementation of all is done correctly by the Blood Bank. There is also an internal audit of work processes and improvement of systems to minimise wastage and also to optimally utilise the components of blood efficiently.
								</p>
							</div>	
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<h3 style="margin-top:-100px;">Address</h3>
							<div class="well">
								<address>
									<strong>Vision Medicare</strong>
									<br>
									XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
									<br>
									XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
									<br>
									<abbr title="Phone">P:</abbr> (123) 456-7890
								</address>
								<address>
									<strong>Full Name</strong>
									<br>
									<a href="mailto:#">
										ouworld@visionmedicare.com
									</a>
								</address>
							</div>
							<p class="lead">
								FACTS ABOUT EYE DONATION
							</p>
							<p>
								<div class="col-md-12">
									<div class="well well-lg">
										<ul>
											<li class="text-primary">
												Everyone can be a donor irrespective of age, sex or blood group.
											</li>
											<li class="text-primary">
												All religions support eye donation as a humanitarian gesture
											</li>
											<li class="text-primary">
												Eye donation does not disfigure the face or interfere with funeral arrangements
											</li>
											<li class="text-primary">
												After death, eyes should be donated as soon as possible. Eyes can be donated up to 6 hours after death.
											</li>
											<li class="text-primary">
												The deceased need not be shifted, as eye bank personnel come to the donor’s home.
											</li>
											<li class="text-primary">
												General eye conditions such as cataracts, spectacle number or others do not make the eyes unsuitable for donation.
											</li>
											<li class="text-primary">
												Even donors with diabetes or blood pressure can donate their eyes.
											</li>
											<li class="text-primary">
												An eye bank is a non-profit organization recognized by the Government to surgically retrieve eyes, antiseptically preserve them, assess their suitability for transplantation and then distribute them to patients requiring corneal transplants.
											</li>
											<li class="text-primary">
												Eye donation is free to the donor.
											</li>
										</ul>
									</div>
								</div>
							</p>
						</div>
						<div class="col-md-6">
							<h3>PRE DONATION INFORMATION</h3>
							<div class="well well-lg">
								<li class="text-primary">There is no substitute for blood</h5>
								<li class="text-primary">Donating blood does not take a long time. The actual blood collection procedure takes about 8-10 minutes</h5>
								<li class="text-primary">An individual can safety donate blood from age of 18 to 65 years, ( Weight more than 45 kg )</h5>
								<li class="text-primary">Do not donate blood empty stomach</h5>
								<li class="text-primary">Trauma victims, cancer patients and those with inherited blood disorders require most of the donated blood</h5>
								<li class="text-primary">Whole blood donation can be made safety at an interval of 3 months. Repeated blood donation at this interval does not cause any sort of weakness</h5>
								<li class="text-primary">People who are anemic cannot donate blood. However, they should undergo treatment for anemia and can donate blood once the hemoglobin is within the normal range ( More than 12.5gm%)</h5>
								<li class="text-primary">The donor is examined before donation for his/her suitability to give blood. And many tests will be carried out on the donated blood to ensure blood safety</h5>
								<li class="text-primary">There is absolutely no risk to acquiring AIDs or any other disease ( such as Hepatitis B or C ) from donation blood.</h5>
								<li class="text-primary">Please enroll yourself as a voluntary donor. You can regularly donate blood in a blood bank or blood donations camp</h5>
							</div>
							<h3>POST DONATION CARE</h3>
							<div class="well well-lg">
								<li class="text-primary">Drink plenty of Fluids ( Water/Juice)
								<li class="text-primary">No extra diet is reuired
								<li class="text-primary">Take rest for 10-15min
								<li class="text-primary">Do not Smoke or chew Tobacco/Ghutaka for 3 hrs
								<li class="text-primary">Avoid alcool for 6 hrs
								<li class="text-primary">Do not lift heavy objects with the arm used for donation for few hours
								<li class="text-primary">Avoid strenuous exercse for 24hrs
								<li class="text-primary">If bleed reoccurs, press firmly on the area for 5-10 min & raise arm
								<li class="text-primary">If Dizziness/Fainting occurs,lie down & raise legs
								<li class="text-primary">Avoid driving for 30 min
								<li class="text-primary">After donation you can do your routine work</li>
								<li class="text-primary">You can donate blood again after 3 months</li>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<h3 style="margin-top:-220px;">MORE ABOUT CORNEAL TRANSPLANTATION :</h3>
							<div class="well well-lg">
								<h4>What is the Cornea?</h4>
								The cornea is the transparent dome-shaped front surface of the eye that allows rays of light to pass through and be focused on the retina. It is generally the cornea that is used for transplantation. 
								<h4>Who needs a Corneal Transplant?</h4>
								Injuries, infections, inherited conditions or aging may cause clouding or distortion of the cornea, with resultant decreased or distorted vision. People with such reduced vision need a cornea transplant to improve vision. 
								<h4>What is Corneal Transplant? </h4>
								During corneal transplantation surgery, the central portion of the diseased cornea is removed and replaced by a clear cornea donated by a deceased person. It is generally performed on an out-patient basis, with no overnight hospital stay. It is done under local or general anesthesia and may take 1 to 3 hours. 
								<h4>How are donor eyes obtained?</h4>
								Donor eyes come from a recently deceased person and his family who make the humanitarian decision to donate eyes to aid in the restoration of sight. The donor eyes are placed in a special preservative solution that maintains the health of the donor cornea until the time of surgery.
								<h4>How successful is Cornea Transplantation? </h4>
								Corneal transplantation has the highest success rate of all organ transplants.
								<h4>What about rejection of the transplant? </h4>
								Corneas have a very low risk of rejection. If rejection occurs, it can be suppressed by timely medication. The signs and symptoms of rejection are redness, increased light sensitivity, decreased vision and pain. 
								<h4>Do Corneal Transplants guarantee sight to all blind people?</h4>
								No. 
							</div>
							<h3>IN THE EVENT OF DEATH :</h3>
							<div class="well well-lg">
								<h4>Step 1 :</h4>Close the eyes. 
								<h4>Step 2 :</h4>Cover the closed eyes with moist cotton or cubes of ice. 
								<h4>Step 3 :</h4>Raise the head with two pillows.
								<h4>Step 4 :</h4>Switch off the fan. (Switch on the air conditioner, if possible) 
								<h4>Step 5 :</h4>Get the death certificate ready 
								<h4>Step 6 :</h4>Contact Roshni eye bank immediately. Eye bank is open for 24 hours.
							</div>
							<h3>Appeal</h3>
							<div class="well well-sm">
								<h5 class="text-primary">~ Pledge your eyes with the Vision Medicare Eye bank</h5>
								<h5 class="text-primary">~ Your contributions will help provide sight to those lost in perpetual darkness </h5>
								<h5 class="text-primary">~ Your support will help in VISION MEDICARE’s commitment to restore sight. </h5>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
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
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Index.init();
				$.stellar();
			});
		</script>
	</body>
</html>
