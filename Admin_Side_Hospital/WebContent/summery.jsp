<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>
<!DOCTYPE html>
<!--[if IE 8]><html class="ie8 no-js" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9 no-js" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- start: HEAD -->
<head>
<title>Welcome Admin :: Vision Medicare</title>
<!-- start: META -->
<meta charset="utf-8" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- end: META -->
<!-- start: MAIN CSS -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/fonts/style.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/main-responsive.css">
<link rel="stylesheet" href="assets/plugins/iCheck/skins/all.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
<link rel="stylesheet"
	href="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.css">
<link rel="stylesheet" href="assets/css/theme_light.css" type="text/css"
	id="skin_color">
<link rel="stylesheet" href="assets/css/print.css" type="text/css"
	media="print" />
<!--[if IE 7]>
		<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
<!-- end: MAIN CSS -->
<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="stylesheet"
	href="assets/plugins/summernote/build/summernote.css">
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="shortcut icon" href="favicon.ico" />
<style type="text/css">
.matrix {
	font-family: Lucida Console, Courier, Monotype;
	font-size: 10pt;
	text-align: center;
	width: 10px;
	padding: 0px;
	margin: 0px;
}
</style>
<script type="text/javascript" src="assets/js/TypingText.js"></script>
</head>
<% 
HttpSession ses=request.getSession(false);
String use=(String)ses.getAttribute("login");
if(use==null)
{
	request.getRequestDispatcher("/AdminLogin.jsp").forward(request,response);
}

%>
<sql:setDataSource var="ad_log" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/admin_hospital"
     user="root"  password="haresh" />

<sql:query dataSource="${ad_log}" var="result">
		select * from admin_dt where user='<%=use %>';
</sql:query>








<!-- end: HEAD -->
<!-- start: BODY -->
<body>
	<!-- start: HEADER -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<!-- start: TOP NAVIGATION CONTAINER -->
		<div class="container">
			<div class="navbar-header">
				<!-- start: RESPONSIVE MENU TOGGLER -->
				<button data-target=".navbar-collapse" data-toggle="collapse"
					class="navbar-toggle" type="button">
					<span class="clip-list-2"></span>
				</button>
				<!-- end: RESPONSIVE MENU TOGGLER -->
				<!-- start: LOGO -->
				<a class="navbar-brand" href="index.jsp"> <img
					style="height: 100px; width: 200px; margin-top: -25px"
					src="assets/images/Visionlogo.png" /> </a>
				<!-- end: LOGO -->
			</div>
			<div class="navbar-tools">
				<!-- start: TOP NAVIGATION MENU -->
				<ul class="nav navbar-right">
					<!-- start: USER DROPDOWN -->
					<li class="dropdown current-user"><a data-toggle="dropdown"
						data-hover="dropdown" class="dropdown-toggle"
						data-close-others="true" href="#"> <img
							src="assets/images/new_<%= use %>_1.jpg" class="circle-img"
							alt=""> <span class="username">
							
											<c:forEach var="row" items="${result.rows}">
												<c:out value="${row.Name}"></c:out>
											</c:forEach>

									</span>
									 <i
							class="clip-chevron-down"></i> </a>
						<ul class="dropdown-menu">
							<li><a href="pages_user_profile.jsp"> <i
									class="clip-user-2"></i> &nbsp;My Profile </a></li>

							<li><a href="pages_messages.jsp"> <i
									class="clip-bubble-4"></i> &nbsp;My Messages (3) </a></li>
							<li class="divider"></li>
							<li><a href="Lock_Screen.jsp"><i class="clip-locked"></i>
									&nbsp;Lock Screen </a></li>
							<li><a href="AdminLoginConf.jsp"> <i class="clip-exit"></i>
									&nbsp;Log Out </a></li>
						</ul></li>
					<!-- end: USER DROPDOWN -->
					<!-- start: PAGE SIDEBAR TOGGLE -->

					<!-- end: PAGE SIDEBAR TOGGLE -->
				</ul>
				<!-- end: TOP NAVIGATION MENU -->
			</div>
		</div>
		<!-- end: TOP NAVIGATION CONTAINER -->
	</div>
	<!-- end: HEADER -->
	<!-- start: MAIN CONTAINER -->
	<div class="main-container">
		<div class="navbar-content">
			<!-- start: SIDEBAR -->
			<div class="main-navigation navbar-collapse collapse">
				<!-- start: MAIN MENU TOGGLER BUTTON -->

				<!-- end: MAIN MENU TOGGLER BUTTON -->
				<!-- start: MAIN NAVIGATION MENU -->
				<ul class="main-navigation-menu" style="margin-top: 20px;">
					<li><a href="index.jsp"><i class="clip-home-3"></i> <span
							class="title"> Home  </span><span class="selected"></span> </a></li>
					<li><a href="#"><i class="clip-home-3"></i> <span
							class="title"> Go to Client Side </span><span class="selected"></span>
					</a></li>
					<li><a href="javascript:void(0)"><i class="clip-screen"></i>
							<span class="title"> View Records </span><i class="icon-arrow"></i>
							<span class="selected"></span> </a>
						<ul class="sub-menu">
							<li><a href="ViewStaff.jsp"> <span
									class="title"> Staff Record </span> </a></li>
							<li><a href="ViewDoctor.jsp"> <span
									class="title"> Doctor Record </span></a></li>
							<li><a href="ViewPatient.jsp"> <span
									class="title"> Patient Record </span></a></li>
							<li><a href="ViewMwdicine.jsp"> <span
									class="title"> Medicine Record </span> </a></li>
							<li><a href="ViewMedicalStore.jsp"> <span
									class="title"> Medical Store Record</span> </a></li>
							
						</ul></li>
					<li><a href="TrackAppointMent.jsp" target=""><i class="clip-cursor"></i> <span
							class="title"> Track Appointment </span><span class="selected"></span>
					</a></li>
					<li><a href="Schedule.jsp" target=""><i class="clip-cursor"></i> <span
							class="title"> Manage Scheduling </span><span class="selected"></span>
					</a></li>
					<li><a href="javascript:void(0)"><i class="clip-cog-2"></i>
							<span class="title"> Insert Entry </span><i class="icon-arrow"></i>
							<span class="selected"></span> </a>
						<ul class="sub-menu">
							<li><a href="NewDoctor.jsp"> <span class="title">
										Doctor </span> </a></li>
							<li><a href="NewStaff.jsp"> <span class="title">
										Staff </span> </a></li>
							<li><a href="NewMedicine.jsp"> <span class="title">
										Medicine </span> </a></li>
							<li><a href="NewMedicalStore.jsp"> <span class="title">
										Medical Store </span> </a></li>
							<li><a href="NewPatient.jsp"> <span class="title">
										Patient </span> </a></li>

						</ul></li>
					<li><a href="javascript:void(0)"><i class="clip-cog-2"></i>
							<span class="title"> Delete Entry </span><i class="icon-arrow"></i>
							<span class="selected"></span> </a>
						<ul class="sub-menu">
							<li><a href="DeleteDoctor.jsp"> <span class="title">
										Doctor </span> </a></li>
							<li><a href="DeleteStaff.jsp"> <span class="title">
										Staff </span> </a></li>
							<li><a href="DeleteMedicine.jsp"> <span class="title">
										Medicine </span> </a></li>
							<li><a href="DeleteMedicalStore.jsp"> <span class="title">
										Medical Store </span> </a></li>
							<li><a href="DeletePatient.jsp"> <span class="title">
										Patient </span> </a></li>

						</ul></li>
					<li><a href="javascript:void(0)"><i class="clip-cog-2"></i>
							<span class="title"> Update Entry </span><i class="icon-arrow"></i>
							<span class="selected"></span> </a>
						<ul class="sub-menu">
							<li><a href="UpdateDoctor.jsp"> <span class="title">
										Doctor </span> </a></li>
							<li><a href="UpdateStaff.jsp"> <span class="title">
										Staff </span> </a></li>
							<li><a href="UpdateMedicine.jsp"> <span class="title">
										Medicine </span> </a></li>
							<li><a href="UpdateMedicalStore.jsp"> <span class="title">
										Medical Store </span> </a></li>
							<li><a href="UpdatePatient.jsp"> <span class="title">
										Patient </span> </a></li>

						</ul></li>
					<li><a href="summery.jsp" ><i class="clip-cog-2"></i>
							<span class="title"> Analytics </span><i class="icon-arrow"></i>
							</a></li>




					<li><a href="Visitor.jsp"><i class="clip-location"></i> <span
							class="title"> Number of Visitors </span> <span class="selected"></span>
					</a></li>
					<li><a href="ContactUs.jsp"><i class="clip-bars"></i> <span
							class="title">Contact Us</span> <span class="selected"></span> </a></li>
				</ul>
				<!-- end: MAIN NAVIGATION MENU -->
			</div>
			<!-- end: SIDEBAR -->
		</div>

<sql:query var="doctor" dataSource="${ad_log }">
select * from doctor;
</sql:query>

<sql:query var="patient" dataSource="${ad_log }">
select * from patient;
</sql:query>

<sql:query var="appointment" dataSource="${ad_log }">
select * from appointment;
</sql:query>


<sql:query var="hits" dataSource="${ad_log }">
select hits from counter;
</sql:query>

<sql:query var="logcount" dataSource="${ad_log }">
select logcount from counter;
</sql:query>

<sql:query var="logout" dataSource="${ad_log }">
select logout from admin_dt where user='<%= use %>';
</sql:query>

<sql:query var="labs" dataSource="${ad_log }">
select * from labs;
</sql:query>

<sql:query var="staff" dataSource="${ad_log }">
select * from staff;
</sql:query>
<sql:query var="stores" dataSource="${ad_log }">
select * from medical_store;
</sql:query>
		
		<!-- start: PAGE -->
		<div class="main-content">
			<div class="container">
			
				<!-- start: PAGE CONTENT -->
				<div class="row" style="padding-top: 10px">
				 <h1> <center>Complete History</center></h1>
				 
				</div>
				<div class="row" style="padding-top: 10px">
				 <h3> <center>Date Filter<div class="form-group">
										<label class="control-label"><i
											class="clip-arrow-right-3"></i> Select Your Choice  </label>
											<form action="summeryfilter.jsp">
											 <select
											id="form-field-select-2" name="filter"
											class="form-control tooltips" data-placement="top" title=""
											data-rel="tooltip"
											data-original-title="Choose Your Blood Group" tabindex="1">
											
											<option value="month">Last One Month</option>
											<option value="six">Last Six Month</option>
											<option value="year">Last One Year</option>
										</select>
										<input type="submit" name="submit" value="GO" class="btn btn-success">
										</form>
									</div> </center></h3>
				 
				</div>
				
				<div class="row" style="padding-top: 20px;">
					<div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>
									Patients
								</h2>
								<p ><center>
									You have total
									<br><br>
									<font color="red">
									<h3><c:out value="${patient.rowCount }"></c:out></h3> <br><br>
									</font>
									Patient Regigtrations
									<br> till now.
								</center></p>
								
								<hr>
							</div>
						</div>
					</div>
						
					<div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>
									Doctors
								</h2>
								<p ><center>
									You have total
									<br><br>
									<font color="red">
									<h3><c:out value="${doctor.rowCount }"></c:out></h3> <br><br>
									</font>
									doctors Regigtrations
									<br> till now.
								</center></p>
								<hr>
							</div>
						</div>
					</div>	
					
					<div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>
									Appointments
								</h2>
								<p ><center>
									You have total
									<br><br>
									<font color="red">
									<h3><c:out value="${appointment.rowCount }"></c:out></h3> <br><br>
									</font>
									Appointments taken
									<br> till now.
								</center></p>
								<hr>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row" style="padding-top: 50px;">
					<div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>
									Staffs
								</h2>
								<p><center>
									You have total
									<br><br>
									<font color="red">
									<h3><c:out value="${staff.rowCount }"></c:out></h3> <br><br>
									</font>
									Staffs working
									<br> for you.
							</center></p> 
								<hr>
							</div>
						</div>
					</div>
						
					<div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>
									Medical labs
								</h2>
								<p ><center>
									You have total
									<br><br>
									<font color="red">
									<h3><c:out value="${labs.rowCount }"></c:out></h3> <br><br>
									</font>
									Medical Labs registered
									<br> till now.
								</center></p>
								<hr>
							</div>
						</div>
					</div>	
					
					<div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>
									Medical Store
								</h2>
								<p ><center>
									You have total
									<br><br>
									<font color="red">
									<h3><c:out value="${stores.rowCount }"></c:out></h3> <br><br>
									</font>
									Medical stores registered
									<br> till now.
								</center></p>
								<hr>
							</div>
						</div>
					</div>
				</div>
				<div class="row" style="padding-top: 50px;">
					<div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>
									Hits
								</h2>
								<p><center>
									You have total
									<br><br>
									<font color="red">
									<h3><c:out value="${hits.rowsByIndex[0][0] + 100 }"></c:out></h3> <br><br>
									</font>
									Hits of
									<br> Your Website.
							</center></p> 
								<hr>
							</div>
						</div>
					</div>
						
					<div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>
									Logged In
								</h2>
								<p ><center>
									You have total
									<br><br>
									<font color="red">
									<h3><c:out value="${logcount.rowsByIndex[0][0] +50 }"></c:out></h3> <br><br>
									</font>
									Logged in users
									<br> till now.
								</center></p>
								<hr>
							</div>
						</div>
					</div>	
					
					<div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-body">
								<h2>
									Last Login
								</h2>
								<p ><center>
									You Last <br>logged on
									<br><br>
									<font color="red">
									<h3><c:out value="${logout.rowsByIndex[0][0] }"></c:out></h3> <br><br>
									</font>
									
								</center></p>
								<hr>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<!-- end: PAGE -->
	</div>
	
	
	<!-- end: MAIN CONTAINER -->
	<!-- start: FOOTER -->
	<div class="footer clearfix">
		<div class="footer-inner">2014 &copy; Vision Medicare by Advait
			Patel.</div>
		<div class="footer-items">
			<span class="go-top"><i class="clip-chevron-up"></i>
			</span>
		</div>
	</div>
	<!-- end: FOOTER -->
	<!-- start: RIGHT SIDEBAR -->

	<!-- end: RIGHT SIDEBAR -->
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
	<script src="assets/plugins/summernote/build/summernote.min.js"></script>
	<script src="assets/plugins/ckeditor/ckeditor.js"></script>
	<script src="assets/plugins/ckeditor/adapters/jquery.js"></script>
	<script src="assets/js/form-validation.js"></script>
	<script type="assets/js/effect.js"></script>
	<script type="text/javascript" src="assets/js/effect.js"></script>
	<!-- For Special Effect-->
	<script type="text/javascript">
					//Define first typing example:
			new TypingText(document.getElementById("example1"));
			//Type out examples:
			TypingText.runAll();
		</script>

	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script>
			jQuery(document).ready(function() {
				Main.init();
				FormValidator.init();
			});
		</script>

</body>
<!-- end: BODY -->
</html>