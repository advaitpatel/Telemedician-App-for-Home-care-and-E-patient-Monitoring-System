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
		select * from doctor where user='<%=use %>';
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
							src="assets/images/new_null_1.jpg" height="50px" width="50px"  class="circle-img"
							alt=""> <span class="username">
							
											<c:forEach var="row" items="${result.rows}">
												
												<c:out value="${row.First_name} ${row.Last_name}"></c:out>
											</c:forEach>

									</span>
									 <i
							class="clip-chevron-down"></i> </a>
						<ul class="dropdown-menu">
							
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
					<li><a href="docindex.jsp"><i class="clip-home-3"></i> <span
							class="title"> Home  </span><span class="selected"></span> </a></li>
					<li><a href="avail_change.jsp"><i class="clip-home-3"></i> <span
							class="title"> Change Schedule </span><span class="selected"></span>
					</a></li>

					<li><a href="appoint_view.jsp" target=""><i class="clip-cursor"></i> <span
							class="title"> View Appointments </span><span class="selected"></span>
					</a></li>
					<li><a href="reports.jsp" target=""><i class="clip-cursor"></i> <span
							class="title"> Upload Reports </span><span class="selected"></span>
					</a></li>
					<li><a href="doc_profile.jsp"><i class="clip-location"></i> <span
							class="title"> Profile </span> <span class="selected"></span>
					</a></li>
					
				</ul>
				<!-- end: MAIN NAVIGATION MENU -->
			</div>
			<!-- end: SIDEBAR -->
		</div>
		<!-- start: PAGE -->
		<div class="main-content">
				<!-- start: PANEL CONFIGURATION MODAL FORM -->
				<div class="modal fade" id="panel-config" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									&times;
								</button>
								<h4 class="modal-title">Panel Configuration</h4>
							</div>
							<div class="modal-body">
								Here will be a configuration form
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">
									Close
								</button>
								<button type="button" class="btn btn-primary">
									Save changes
								</button>
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
					<!-- end: PAGE HEADER -->
					<!-- start: PAGE CONTENT -->
					<br><br>
					<div class="row">
						<div class="col-sm-12">
							<div class="tabbable">
								<ul class="nav nav-tabs tab-padding tab-space-3 tab-blue" id="myTab4">
									<li class="active">
										<a data-toggle="tab" href="#panel_overview">
											Overview
										</a>
									</li>
									<li>
										<a data-toggle="tab" href="#panel_edit_account">
											Edit Account
										</a>
									</li>
									
								</ul>
								<div class="tab-content">
									<div id="panel_overview" class="tab-pane in active">
										<div class="row">
											<div class="col-sm-5 col-md-4">
												<div class="user-left">
													<div class="center">
														<c:forEach var="row" items="${result.rows }">
														<h4><c:out value="${row.First_name } ${row.Last_name }"></c:out> </h4>
														</c:forEach>
														<div class="fileupload fileupload-new" data-provides="fileupload">
															<div class="user-image">
																<div class=""><img src="assets/images/new_null_1.jpg" height="150px" width="150px" alt="">
																</div>
																
															</div>
														</div>
														<hr>
														<p>
															<a class="btn btn-twitter btn-sm btn-squared">
																<i class="fa fa-twitter"></i>
															</a>
															<a class="btn btn-linkedin btn-sm btn-squared">
																<i class="fa fa-linkedin"></i>
															</a>
															<a class="btn btn-google-plus btn-sm btn-squared">
																<i class="fa fa-google-plus"></i>
															</a>
															<a class="btn btn-github btn-sm btn-squared">
																<i class="fa fa-github"></i>
															</a>
														</p>
														<hr>
													</div>
													<table class="table table-condensed table-hover">
														<thead>
															<tr>
																<th colspan="3">Contact Information</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>url</td>
																<td>
																<a href="#">
																	www.visionmedicare.com
																</a></td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
															<tr>
																<td>email:</td>
																<td>
																<a href="#">
																	<c:forEach var="row" items="${result.rows }">
														<c:out value="${row.Email }"></c:out> 
														</c:forEach>
																</a></td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
															<tr>
																<td>phone:</td>
																<td>7895156236</td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
															
														</tbody>
													</table>
													<table class="table table-condensed table-hover">
														<thead>
															<tr>
																<th colspan="3">General information</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>Position</td>
																<td><c:forEach var="row" items="${result.rows }">
														<c:out value="${row.Speciality }"></c:out> 
														</c:forEach></td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
															<tr>
																<td>Last Logged In</td>
																<td>56 min</td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
															
															<tr>
																<td>Status</td>
																<td><span class="label label-sm label-info">Administrator</span></td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
														</tbody>
													</table>
													<table class="table table-condensed table-hover">
														<thead>
															<tr>
																<th colspan="3">Additional information</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>Birth</td>
																<td><c:forEach var="row" items="${result.rows }">
														<c:out value="${row.Date } / ${row.Month } / ${row.Year }"></c:out> 
														</c:forEach></td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
															<tr>
																<td>Groups</td>
																<td>New Heights Hospital</td>
																<td><a href="#panel_edit_account" class="show-tab"><i class="fa fa-pencil edit-user-info"></i></a></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											
										</div>
									</div>
									<div id="panel_edit_account" class="tab-pane">
										<form action="#" role="form" id="form">
											<div class="row">
												<div class="col-md-12">
													<h3>Account Info</h3>
													<hr>
												</div>
												<c:forEach var="row" items="${result.rows }">
												<div class="col-md-6">
													<div class="form-group">
														<label class="control-label">
															First Name
														</label>
														<input type="text" placeholder='<c:out value="${row.First_name }"></c:out>' class="form-control" id="firstname" name="firstname">
													</div>
													<div class="form-group">
														<label class="control-label">
															Last Name
														</label>
														<input type="text" placeholder='<c:out value="${row.Last_name }"></c:out>' class="form-control" id="lastname" name="lastname">
													</div>
													<div class="form-group">
														<label class="control-label">
															Email Address
														</label>
														<input type="email" placeholder='<c:out value="${row.Email }"></c:out>' class="form-control" id="email" name="email">
													</div>
													<div class="form-group">
														<label class="control-label">
															Phone
														</label>
														<input type="email" placeholder="'<c:out value="${row.Mobile }"></c:out>'" class="form-control" id="phone" name="email">
													</div>
													<div class="form-group">
														<label class="control-label">
															Password
														</label>
														<input type="password" placeholder="password" class="form-control" name="password" id="password">
													</div>
													<div class="form-group">
														<label class="control-label">
															Confirm Password
														</label>
														<input type="password"  placeholder="password" class="form-control" id="password_again" name="password_again">
													</div>
												</div>
												</c:forEach>
												<div class="col-md-6">
													<div class="form-group connected-group">
														<label class="control-label">
															Date of Birth
														</label>
														<div class="row">
															<div class="col-md-3">
																<select name="dd" id="dd" class="form-control" >
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
																<select name="mm" id="mm" class="form-control" >
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
																<input type="text" placeholder="1982" id="yyyy" name="yyyy" class="form-control">
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="control-label">
															Gender
														</label>
														<div>
															<label class="radio-inline">
																<input type="radio" class="grey" value="" name="gender" id="gender_female">
																Female
															</label>
															<label class="radio-inline">
																<input type="radio" class="grey" value="" name="gender"  id="gender_male" checked="checked">
																Male
															</label>
														</div>
													</div>
													<div class="row">
														<div class="col-md-4">
															<div class="form-group">
																<label class="control-label">
																	Zip Code
																</label>
																<input class="form-control" placeholder="12345" type="text" name="zipcode" id="zipcode">
															</div>
														</div>
														<div class="col-md-8">
															<div class="form-group">
																<label class="control-label">
																	City
																</label>
																<input class="form-control tooltips" placeholder="Baroda (India)" type="text" data-original-title="We'll display it when you write reviews" data-rel="tooltip"  title="" data-placement="top" name="city" id="city">
															</div>
														</div>
													</div>
													<div class="form-group">
														<label>
															Image Upload
														</label>
														<div class="fileupload fileupload-new" data-provides="fileupload">
															<div class="fileupload-new thumbnail" style="width: 150px; height: 150px;"><img src="assets/images/new_null_1.jpg" height="150px" width="150px" alt="">
															</div>
															<div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 150px; max-height: 150px; line-height: 20px;"></div>
															<div class="user-edit-image-buttons">
																<span class="btn btn-light-grey btn-file"><span class="fileupload-new"><i class="fa fa-picture"></i> Select image</span><span class="fileupload-exists"><i class="fa fa-picture"></i> Change</span>
																	<input type="file">
																</span>
																<a href="#" class="btn fileupload-exists btn-light-grey" data-dismiss="fileupload">
																	<i class="fa fa-times"></i> Remove
																</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											
											<div class="row">
												<div class="col-md-8">
													<p>
														By clicking UPDATE, you are agreeing to the Policy and Terms &amp; Conditions.
													</p>
												</div>
												<div class="col-md-4">
													<button class="btn btn-teal btn-block" type="submit">
														Update <i class="fa fa-arrow-circle-right"></i>
													</button>
												</div>
											</div>
										</form>
									</div>
									<div id="panel_projects" class="tab-pane">
										<table class="table table-striped table-bordered table-hover" id="projects">
											<thead>
												<tr>
													<th class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></th>
													<th>Project Name</th>
													<th class="hidden-xs">Client</th>
													<th>Proj Comp</th>
													<th class="hidden-xs">%Comp</th>
													<th class="hidden-xs center">Priority</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>IT Help Desk</td>
													<td class="hidden-xs">Master Company</td>
													<td>11 november 2014</td>
													<td class="hidden-xs">
													<div class="progress progress-striped active progress-sm">
														<div style="width: 70%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="70" role="progressbar" class="progress-bar progress-bar-warning">
															<span class="sr-only"> 70% Complete (danger)</span>
														</div>
													</div></td>
													<td class="center hidden-xs"><span class="label label-danger">Critical</span></td>
													<td class="center">
													<div class="visible-md visible-lg hidden-sm hidden-xs">
														<a href="#" class="btn btn-teal tooltips" data-placement="top" data-original-title="Edit"><i class="fa fa-edit"></i></a>
														<a href="#" class="btn btn-green tooltips" data-placement="top" data-original-title="Share"><i class="fa fa-share"></i></a>
														<a href="#" class="btn btn-bricky tooltips" data-placement="top" data-original-title="Remove"><i class="fa fa-times fa fa-white"></i></a>
													</div>
													<div class="visible-xs visible-sm hidden-md hidden-lg">
														<div class="btn-group">
															<a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#">
																<i class="fa fa-cog"></i> <span class="caret"></span>
															</a>
															<ul role="menu" class="dropdown-menu pull-right">
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-edit"></i> Edit
																	</a>
																</li>
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-share"></i> Share
																	</a>
																</li>
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-times"></i> Remove
																	</a>
																</li>
															</ul>
														</div>
													</div></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>PM New Product Dev</td>
													<td class="hidden-xs">Brand Company</td>
													<td>12 june 2014</td>
													<td class="hidden-xs">
													<div class="progress progress-striped active progress-sm">
														<div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-info">
															<span class="sr-only"> 40% Complete</span>
														</div>
													</div></td>
													<td class="center hidden-xs"><span class="label label-warning">High</span></td>
													<td class="center">
													<div class="visible-md visible-lg hidden-sm hidden-xs">
														<a href="#" class="btn btn-teal tooltips" data-placement="top" data-original-title="Edit"><i class="fa fa-edit"></i></a>
														<a href="#" class="btn btn-green tooltips" data-placement="top" data-original-title="Share"><i class="fa fa-share"></i></a>
														<a href="#" class="btn btn-bricky tooltips" data-placement="top" data-original-title="Remove"><i class="fa fa-times fa fa-white"></i></a>
													</div>
													<div class="visible-xs visible-sm hidden-md hidden-lg">
														<div class="btn-group">
															<a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#">
																<i class="fa fa-cog"></i> <span class="caret"></span>
															</a>
															<ul role="menu" class="dropdown-menu pull-right">
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-edit"></i> Edit
																	</a>
																</li>
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-share"></i> Share
																	</a>
																</li>
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-times"></i> Remove
																	</a>
																</li>
															</ul>
														</div>
													</div></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>ClipTheme Web Site</td>
													<td class="hidden-xs">Internal</td>
													<td>11 november 2014</td>
													<td class="hidden-xs">
													<div class="progress progress-striped active progress-sm">
														<div style="width: 90%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="90" role="progressbar" class="progress-bar progress-bar-success">
															<span class="sr-only"> 90% Complete</span>
														</div>
													</div></td>
													<td class="center hidden-xs"><span class="label label-success">Normal</span></td>
													<td class="center">
													<div class="visible-md visible-lg hidden-sm hidden-xs">
														<a href="#" class="btn btn-teal tooltips" data-placement="top" data-original-title="Edit"><i class="fa fa-edit"></i></a>
														<a href="#" class="btn btn-green tooltips" data-placement="top" data-original-title="Share"><i class="fa fa-share"></i></a>
														<a href="#" class="btn btn-bricky tooltips" data-placement="top" data-original-title="Remove"><i class="fa fa-times fa fa-white"></i></a>
													</div>
													<div class="visible-xs visible-sm hidden-md hidden-lg">
														<div class="btn-group">
															<a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#">
																<i class="fa fa-cog"></i> <span class="caret"></span>
															</a>
															<ul role="menu" class="dropdown-menu pull-right">
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-edit"></i> Edit
																	</a>
																</li>
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-share"></i> Share
																	</a>
																</li>
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-times"></i> Remove
																	</a>
																</li>
															</ul>
														</div>
													</div></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>Local Ad</td>
													<td class="hidden-xs">UI Fab</td>
													<td>15 april 2014</td>
													<td class="hidden-xs">
													<div class="progress progress-striped active progress-sm">
														<div style="width: 50%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="50" role="progressbar" class="progress-bar progress-bar-warning">
															<span class="sr-only"> 50% Complete</span>
														</div>
													</div></td>
													<td class="center hidden-xs"><span class="label label-success">Normal</span></td>
													<td class="center">
													<div class="visible-md visible-lg hidden-sm hidden-xs">
														<a href="#" class="btn btn-teal tooltips" data-placement="top" data-original-title="Edit"><i class="fa fa-edit"></i></a>
														<a href="#" class="btn btn-green tooltips" data-placement="top" data-original-title="Share"><i class="fa fa-share"></i></a>
														<a href="#" class="btn btn-bricky tooltips" data-placement="top" data-original-title="Remove"><i class="fa fa-times fa fa-white"></i></a>
													</div>
													<div class="visible-xs visible-sm hidden-md hidden-lg">
														<div class="btn-group">
															<a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#">
																<i class="fa fa-cog"></i> <span class="caret"></span>
															</a>
															<ul role="menu" class="dropdown-menu pull-right">
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-edit"></i> Edit
																	</a>
																</li>
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-share"></i> Share
																	</a>
																</li>
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-times"></i> Remove
																	</a>
																</li>
															</ul>
														</div>
													</div></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>Design new theme</td>
													<td class="hidden-xs">Internal</td>
													<td>2 october 2014</td>
													<td class="hidden-xs">
													<div class="progress progress-striped active progress-sm">
														<div style="width: 20%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="20" role="progressbar" class="progress-bar progress-bar-success">
															<span class="sr-only"> 20% Complete (warning)</span>
														</div>
													</div></td>
													<td class="center hidden-xs"><span class="label label-danger">Critical</span></td>
													<td class="center">
													<div class="visible-md visible-lg hidden-sm hidden-xs">
														<a href="#" class="btn btn-teal tooltips" data-placement="top" data-original-title="Edit"><i class="fa fa-edit"></i></a>
														<a href="#" class="btn btn-green tooltips" data-placement="top" data-original-title="Share"><i class="fa fa-share"></i></a>
														<a href="#" class="btn btn-bricky tooltips" data-placement="top" data-original-title="Remove"><i class="fa fa-times fa fa-white"></i></a>
													</div>
													<div class="visible-xs visible-sm hidden-md hidden-lg">
														<div class="btn-group">
															<a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#">
																<i class="fa fa-cog"></i> <span class="caret"></span>
															</a>
															<ul role="menu" class="dropdown-menu pull-right">
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-edit"></i> Edit
																	</a>
																</li>
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-share"></i> Share
																	</a>
																</li>
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-times"></i> Remove
																	</a>
																</li>
															</ul>
														</div>
													</div></td>
												</tr>
												<tr>
													<td class="center">
													<div class="checkbox-table">
														<label>
															<input type="checkbox" class="flat-grey">
														</label>
													</div></td>
													<td>IT Help Desk</td>
													<td class="hidden-xs">Designer TM</td>
													<td>6 december 2014</td>
													<td class="hidden-xs">
													<div class="progress progress-striped active progress-sm">
														<div style="width: 40%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="40" role="progressbar" class="progress-bar progress-bar-warning">
															<span class="sr-only"> 40% Complete (warning)</span>
														</div>
													</div></td>
													<td class="center hidden-xs"><span class="label label-warning">High</span></td>
													<td class="center">
													<div class="visible-md visible-lg hidden-sm hidden-xs">
														<a href="#" class="btn btn-teal tooltips" data-placement="top" data-original-title="Edit"><i class="fa fa-edit"></i></a>
														<a href="#" class="btn btn-green tooltips" data-placement="top" data-original-title="Share"><i class="fa fa-share"></i></a>
														<a href="#" class="btn btn-bricky tooltips" data-placement="top" data-original-title="Remove"><i class="fa fa-times fa fa-white"></i></a>
													</div>
													<div class="visible-xs visible-sm hidden-md hidden-lg">
														<div class="btn-group">
															<a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#">
																<i class="fa fa-cog"></i> <span class="caret"></span>
															</a>
															<ul role="menu" class="dropdown-menu pull-right">
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-edit"></i> Edit
																	</a>
																</li>
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-share"></i> Share
																	</a>
																</li>
																<li role="presentation">
																	<a role="menuitem" tabindex="-1" href="#">
																		<i class="fa fa-times"></i> Remove
																	</a>
																</li>
															</ul>
														</div>
													</div></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end: PAGE CONTENT-->
				</div>
			</div>
			<!-- end: PAGE -->
		</div>	<!-- end: MAIN CONTAINER -->
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