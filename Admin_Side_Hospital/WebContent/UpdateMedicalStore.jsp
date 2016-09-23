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
	href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
<link rel="stylesheet"
	href="assets/plugins/bootstrap-social-buttons/social-buttons-3.css">
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
			<div class="container">
				<!-- start: PAGE CONTENT -->
				<div class="row">
					<div class="col-sm-12">
						<form action="MedicalStore_Update.jsp" method="get" role="form" id="">
							<div class="row">
								<div class="col-md-12">
									<h3>Welcome to Update Medical Store's Records.</h3>
									<hr>
								</div>

								<div class="col-md-12">
									<div class="errorHandler alert alert-danger no-display">
										<i class="fa fa-times-sign"></i> You have some form errors.
										Please check below.
									</div>
									<div class="successHandler alert alert-success no-display">
										<i class="fa fa-ok"></i> Your form validation is successful!
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label class="control-label"><i
											class="clip-arrow-right-3"></i> Medical Store Name <span
											class="symbol required"></span> </label> <input type="text"
											placeholder="Insert your First Name" class="form-control"
											id="firstname" name="First_name" tabindex="1">
									</div>

									<div class="form-group">
										<label for="form-field-mask-2" class="control-label"><i
											class="clip-arrow-right-3"></i> Contact Number <small
											class="text-warning">999-999-9999</small> </label>
										<div class="input-group">
											<input type="phone" tabindex="2" id="mno"
												class="form-control" name="Mobile_no">
										</div>
									</div>

									<div class="form-group">
										<label for="form-field-23" class="control-label"><i
											class="clip-arrow-right-3"></i> Address of Medical Store </label>
										<textarea tabindex="3" maxlength="80" name="Add" id="add"
											class="form-control limited"></textarea>
									</div>

									<div class="form-group connected-group">
										<label class="control-label"><i
											class="clip-arrow-right-3"></i> Date of Esta. <span
											class="symbol required"></span> </label>
										<div class="row">
											<div class="col-md-3">
												<select name="Date" id="dd" class="form-control"
													tabindex="4">
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
												<select name="Month" id="mm" class="form-control"
													tabindex="5">
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
												<input type="text" placeholder="YYYY" id="yyyy" name="Year"
													class="form-control" tabindex="6">
											</div>
										</div>
									</div>

									<div class="form-group connected-group">
										<label class="control-label"><i
											class="clip-arrow-right-3"></i> Open Timings <span
											class="symbol required"></span> </label>
										<div class="row">

											<div class="col-md-3">
												<input type="time" placeholder="hh:mm" id="yyyy" name="From"
													class="form-control" tabindex="7">

											</div>
											<div class="col-md-3">
												<center>To</center>

											</div>

											<div class="col-md-3">

												<input type="time" placeholder="hh:mm" id="yyyy" name="To"
													class="form-control" tabindex="8">
											</div>
										</div>
									</div>

									<div class="form-group">
										<div class="col-md-4"></div>
										<div class="col-md-6">
											<br>
											<br>
											<br>
											<br>
											<br>
											<br>
											<br>
											<br>
											<br>
											<br>
											<br>
											<br> <input type="submit" tabindex="13"
												value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Update &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
												class="btn btn-primary btn-squared btn-lg"
												style="margin-left: -185px; margin-top: -400px;" tabindex="">
											<input type="reset" tabindex="14"
												value="&nbsp;Clear Records&nbsp;"
												class="btn btn-green btn-squared btn-lg"
												style="margin-left: 40px; margin-top: -400px;" tabindex="">
										</div>
									</div>




								</div>

								<div class="col-md-6"></div>
							</div>
							<div class="row">

								<div class="col-md-6"></div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div>
										<hr>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8">
									<p></p>
								</div>


							</div>
						</form>
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
		<div class="footer-inner">2014 &copy; Vision Medicare by Inferno
			Solutions.</div>
		<div class="footer-items">
			<span class="go-top"><i class="clip-chevron-up"></i>
			</span>
		</div>
	</div>
	<!-- end: FOOTER -->
	<!-- start: RIGHT SIDEBAR -->
	<div id="page-sidebar">
		<a class="sidebar-toggler sb-toggle" href="#"><i
			class="fa fa-indent"></i>
		</a>
		<div class="sidebar-wrapper">
			<ul class="nav nav-tabs nav-justified" id="sidebar-tab">
				<li class="active"><a href="#users" role="tab"
					data-toggle="tab"><i class="fa fa-users"></i>
				</a></li>
				<li><a href="#favorites" role="tab" data-toggle="tab"><i
						class="fa fa-heart"></i>
				</a></li>
				<li><a href="#settings" role="tab" data-toggle="tab"><i
						class="fa fa-gear"></i>
				</a></li>
			</ul>
			<div class="tab-content"></div>
		</div>
	</div>
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
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/plugins/jquery.transit/jquery.transit.js"></script>
	<script
		src="assets/plugins/hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/plugins/jquery.appear/jquery.appear.js"></script>
	<script src="assets/plugins/blockUI/jquery.blockUI.js"></script>
	<script src="assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
	<script src="assets/plugins/iCheck/jquery.icheck.min.js"></script>
	<script src="assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
	<script src="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
	<script src="assets/plugins/less/less-1.5.0.min.js"></script>
	<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<script
		src="assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
	<script src="assets/js/main.js"></script>
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
		src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
	<script src="assets/plugins/jquery.pulsate/jquery.pulsate.min.js"></script>
	<script src="assets/js/pages-user-profile.js"></script>
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
	<script
		src="assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="assets/js/form-elements.js"></script>
	<script src="assets/js/form-validation.js"></script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script>
			jQuery(document).ready(function() {
				Main.init();
				FormValidator.init();
			});
		</script>
	<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
	<script>
			jQuery(document).ready(function() {
				Maizzzzzzln.init();
				PagesUserProfile.init();
			});
		</script>
	<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
</body>
<!-- end: BODY -->
</html>