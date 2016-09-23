<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt" %>

<!DOCTYPE html>
<!-- Template Name: Clip-One - Responsive Admin Template build with Twitter Bootstrap 3.x Version: 1.4 Author: ClipTheme -->
<!--[if IE 8]><html class="ie8 no-js" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9 no-js" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- start: HEAD -->

<!-- Mirrored from www.cliptheme.com/preview/admin/clip-one/form_elements.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 09 Aug 2014 11:32:55 GMT -->
<head>
<title>Vision Medicare - Welcome Admin</title>
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
<link rel="stylesheet" href="assets/plugins/select2/select2.css">
<link rel="stylesheet"
	href="assets/plugins/datepicker/css/datepicker.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css">
<link rel="stylesheet"
	href="assets/plugins/jQuery-Tags-Input/jquery.tagsinput.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
<link rel="stylesheet"
	href="assets/plugins/summernote/build/summernote.css">
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
<link rel="shortcut icon" href="favicon.ico" />
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
									class="title"> Staff Record </span></a></li>
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
		<!-- start: PAGE -->
		<div class="main-content">
			<!-- start: PANEL CONFIGURATION MODAL FORM -->
			<div class="modal fade" id="panel-config" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">Panel Configuration</h4>
						</div>
						<div class="modal-body">Here will be a configuration form</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- end: SPANEL CONFIGURATION MODAL FORM -->
			<div class="container">
				<!-- start: PAGE HEADER -->
				<div class="row">
					<div class="col-sm-12">
						<!-- start: PAGE TITLE & BREADCRUMB -->

						<div class="page-header">
							<h1>
								Track Appointment <small>find schedules and meetings</small>
							</h1>
						</div>
						<!-- end: PAGE TITLE & BREADCRUMB -->
					</div>
				</div>
				<!-- end: PAGE HEADER -->
				<!-- start: PAGE CONTENT -->
				<div class="row">
					<div class="col-sm-6">
						<!-- start: DATE/TIME PICKER PANEL -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="clip-globe"></i> Fill below Form Inputs
								<div class="panel-tools">
									<a class="btn btn-xs btn-link panel-collapse collapses"
										href="#"> </a> <a class="btn btn-xs btn-link panel-config"
										href="#panel-config" data-toggle="modal"> <i
										class="fa fa-wrench"></i> </a> <a
										class="btn btn-xs btn-link panel-refresh" href="#"> <i
										class="fa fa-refresh"></i> </a> <a
										class="btn btn-xs btn-link panel-expand" href="#"> <i
										class="fa fa-resize-full"></i> </a> <a
										class="btn btn-xs btn-link panel-close" href="#"> <i
										class="fa fa-times"></i> </a>
								</div>
								<br> <br> <br>
								<div class="col-md-11">
									<div class="form-group">
										<label class="control-label"> Enter Doctor Name <span
											class="symbol required"></span> </label> <input type="text"
											placeholder="Insert Name here" class="form-control"
											id="firstname" name="firstname" required>
									</div>
									<div class="form-group">
										<label class="control-label"> Enter Patient Name <span
											class="symbol required"></span> </label> <input type="text"
											placeholder="Insert Name here" class="form-control"
											id="firstname" name="firstname">
									</div>
								</div>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;Choose Date & Time</p>
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-calendar"></i> </span> <input type="text"
										class="form-control date-picker"
										placeholder="Choose date from here">
								</div>
								<br>	
								<div class="input-group">
									 <input type="text"
										class="form-control time-picker"
										placeholder="Choose Time from here">
										<span class="input-group-addon add-on"> <i
										class="fa fa-clock-o">::before</i> </span>
								</div>

								<br>

								<div class="row" id="side">
									<div class="col-md-12">
										<div>
											<span class="symbol required"></span><span
												style="color: gray; font-size: 10px;">Required Fields</span>
											<hr>
										</div>
									</div>
								</div>
								<div class="row" id="side">
									<div class="col-md-8" id="chang">
										<h6 style="color: gray; font-size: 10px; font-style: italic;">
											By clicking "Track Now", you are agreeing to the Policy and
											Terms &amp; Conditions.</h6>
									</div>
									<div class="col-md-4">
										<button class="btn btn-green" id="savo" type="submit"
											style="margin-left: -361px; margin-top: 45px;">
											&nbsp;&nbsp;&nbsp;View Schedule&nbsp;&nbsp;&nbsp; <i
												class="clip-book"></i>
										</button>
										<button class="btn btn-blue" id="savo" type="submit"
											style="margin-left: 10px; margin-top: 45px;">
											Assign Appointment<i class="clip-phone-2"></i>
										</button>
										<button style="margin-left: 10px; margin-top: 45px;"
											type="submit" class="btn btn-dark-beige" id="updo">
											<i class="clip-close-4"></i> Cancel Appointment
										</button>

									</div>
								</div>
							</div>


							<br> <br> <br> <br> <br> <br> <br>
							<br> <br> <br> <br> <br> <br> <br>
							<br> <br> <br> <br> <br> <br> <br>
							<br> <br>
						</div>
						<!-- end: DATE/TIME PICKER PANEL -->
					</div>

				</div>

				<!-- end: PAGE CONTENT-->
			</div>
		</div>
		<!-- end: PAGE -->
	</div>
	<!-- end: MAIN CONTAINER -->
	<!-- start: FOOTER -->
	<div class="footer clearfix">
		<div class="footer-inner">2014 &copy; Vision Medicare by Advait
			Patel & Team.</div>
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
		src="assets/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"></script>
	<script src="assets/plugins/autosize/jquery.autosize.min.js"></script>
	<script src="assets/plugins/select2/select2.min.js"></script>
	<script
		src="assets/plugins/jquery.maskedinput/src/jquery.maskedinput.js"></script>
	<script src="assets/plugins/jquery-maskmoney/jquery.maskMoney.js"></script>
	<script
		src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script
		src="assets/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
	<script src="assets/plugins/bootstrap-daterangepicker/moment.min.js"></script>
	<script
		src="assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
	<script src="assets/plugins/bootstrap-colorpicker/js/commits.js"></script>
	<script src="assets/plugins/jQuery-Tags-Input/jquery.tagsinput.js"></script>
	<script
		src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
	<script src="assets/plugins/summernote/build/summernote.min.js"></script>
	<script src="assets/plugins/ckeditor/ckeditor.js"></script>
	<script src="assets/plugins/ckeditor/adapters/jquery.js"></script>
	<script src="assets/js/form-elements.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
</body>
<!-- end: BODY -->

<!-- Mirrored from www.cliptheme.com/preview/admin/clip-one/form_elements.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 09 Aug 2014 11:33:13 GMT -->
</html>