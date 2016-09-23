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
					<div class="row">
						<div class="col-sm-12">
							<!-- start: STYLE SELECTOR BOX -->
							
							<!-- end: STYLE SELECTOR BOX -->
							<!-- start: PAGE TITLE & BREADCRUMB -->
							
							<div class="page-header">
								<h1>Messages <small>mailbox sample</small></h1>
							</div>
							<!-- end: PAGE TITLE & BREADCRUMB -->
						</div>
					</div>
					<!-- end: PAGE HEADER -->
					<!-- start: PAGE CONTENT -->
					<div class="row">
						<div class="col-md-12">
							<!-- start: INBOX PANEL -->
							<div class="panel panel-default">
								<div class="panel-heading">
									<i class="fa fa-envelope-o"></i>
									Inbox
									<div class="panel-tools">
										<a class="btn btn-xs btn-link panel-collapse collapses" href="#">
										</a>
										<a class="btn btn-xs btn-link panel-config" href="#panel-config" data-toggle="modal">
											<i class="fa fa-wrench"></i>
										</a>
										<a class="btn btn-xs btn-link panel-refresh" href="#">
											<i class="fa fa-refresh"></i>
										</a>
										<a class="btn btn-xs btn-link panel-expand" href="#">
											<i class="fa fa-resize-full"></i>
										</a>
										<a class="btn btn-xs btn-link panel-close" href="#">
											<i class="fa fa-times"></i>
										</a>
									</div>
								</div>
								<div class="panel-body messages">
									<ul class="messages-list">
										<li class="messages-search">
											<form action="#" class="form-inline">
												<div class="input-group">
													<input type="text" class="form-control" placeholder="Search messages...">
													<div class="input-group-btn">
														<button class="btn btn-primary" type="button">
															<i class="fa fa-search"></i>
														</button>
													</div>
												</div>
											</form>
										</li>
										<li class="messages-item">
											<span title="Mark as starred" class="messages-item-star"><i class="fa fa-star"></i></span>
											<img alt="" src="assets/images/avatar-1.jpg" class="messages-item-avatar">
											<span class="messages-item-from">Peter Clark</span>
											<div class="messages-item-time">
												<span class="text">10:23 PM</span>
												<div class="messages-item-actions">
													<a data-toggle="dropdown" title="Reply" href="#"><i class="fa fa-mail-reply"></i></a>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Move to folder" href="#"><i class="fa fa-folder-open"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#">
																	<i class="fa fa-pencil"></i>
																	Mark as Read
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-ban"></i>
																	Spam
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-trash-o"></i>
																	Delete
																</a>
															</li>
														</ul>
													</div>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Attach to tag" href="#"><i class="fa fa-tag"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#"><i class="tag-icon red"></i>Important</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon teal"></i>Work</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon green"></i>Home</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<span class="messages-item-subject">Lorem ipsumdolor sit amet ...</span>
											<span class="messages-item-preview">Lorem ipsum dolor sit amet, consec tetur adipisicing elit, sed do antera ...</span>
										</li>
										<li class="messages-item active starred">
											<span title="Remove star" class="messages-item-star"><i class="fa fa-star"></i></span>
											<img alt="" src="assets/images/avatar-2.jpg" class="messages-item-avatar">
											<span class="messages-item-from">Nicole Bell</span>
											<div class="messages-item-time">
												<span class="text">08:46 PM</span>
												<div class="messages-item-actions">
													<a data-toggle="dropdown" title="Reply" href="#"><i class="fa fa-mail-reply"></i></a>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Move to folder" href="#"><i class="fa fa-folder-open"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#">
																	<i class="fa fa-pencil"></i>
																	Mark as Read
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-ban"></i>
																	Spam
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-trash-o"></i>
																	Delete
																</a>
															</li>
														</ul>
													</div>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Attach to tag" href="#"><i class="fa fa-tag"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#"><i class="tag-icon red"></i>Important</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon teal"></i>Work</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon green"></i>Home</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<span class="messages-item-subject">Duis autem vel eum iriure ...</span>
											<span class="messages-item-preview">Lorem ipsum dolor sit amet, consec tetur adipisicing elit, sed do antera ...</span>
										</li>
										<li class="messages-item">
											<span title="Mark as starred" class="messages-item-star"><i class="fa fa-star"></i></span>
											<span class="messages-item-attachment"><i class="fa fa-paperclip"></i></span>
											<img alt="" src="assets/images/avatar-3.jpg" class="messages-item-avatar">
											<span class="messages-item-from">Steven Thompson</span>
											<div class="messages-item-time">
												<span class="text">04:03 PM</span>
												<div class="messages-item-actions">
													<a data-toggle="dropdown" title="Reply" href="#"><i class="fa fa-mail-reply"></i></a>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Move to folder" href="#"><i class="fa fa-folder-open"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#">
																	<i class="fa fa-pencil"></i>
																	Mark as Read
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-ban"></i>
																	Spam
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-trash-o"></i>
																	Delete
																</a>
															</li>
														</ul>
													</div>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Attach to tag" href="#"><i class="fa fa-tag"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#"><i class="tag-icon red"></i>Important</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon teal"></i>Work</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon green"></i>Home</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<span class="messages-item-subject">Lorem ipsumdolor sit amet ...</span>
											<span class="messages-item-preview">Lorem ipsum dolor sit amet, consec tetur adipisicing elit, sed do antera ...</span>
										</li>
										<li class="messages-item">
											<span title="Mark as starred" class="messages-item-star"><i class="fa fa-star"></i></span>
											<img alt="" src="assets/images/avatar-1.jpg" class="messages-item-avatar">
											<span class="messages-item-from">Peter Clark</span>
											<div class="messages-item-time">
												<span class="text">11:16 AM</span>
												<div class="messages-item-actions">
													<a data-toggle="dropdown" title="Reply" href="#"><i class="fa fa-mail-reply"></i></a>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Move to folder" href="#"><i class="fa fa-folder-open"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#">
																	<i class="fa fa-pencil"></i>
																	Mark as Read
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-ban"></i>
																	Spam
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-trash-o"></i>
																	Delete
																</a>
															</li>
														</ul>
													</div>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Attach to tag" href="#"><i class="fa fa-tag"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#"><i class="tag-icon red"></i>Important</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon teal"></i>Work</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon green"></i>Home</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<span class="messages-item-subject">Duis autem vel eum iriure ...</span>
											<span class="messages-item-preview">Lorem ipsum dolor sit amet, consec tetur adipisicing elit, sed do antera ...</span>
										</li>
									</ul>
									<div class="messages-content">
										<div class="message-header">
											<div class="message-time">
												11 NOV 2014, 11:46 PM
											</div>
											<div class="message-from">
												Nicole Bell &lt;nicole@example.com&gt;
											</div>
											<div class="message-to">
												To: Peter Clark
											</div>
											<div class="message-subject">
												New frontend layout
											</div>
											<div class="message-actions">
												<a title="Move to trash" href="#"><i class="fa fa-trash-o"></i></a>
												<a title="Reply" href="#"><i class="fa fa-reply"></i></a>
												<a title="Reply to all" href="#"><i class="fa fa-reply-all"></i></a>
												<a title="Forward" href="#"><i class="fa fa-long-arrow-right"></i></a>
											</div>
										</div>
										
									</div>
								</div>
							</div>
							<!-- end: INBOX PANEL -->
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
			<div class="footer-inner">
				2014 &copy; clip-one by cliptheme.
			</div>
			<div class="footer-items">
				<span class="go-top"><i class="clip-chevron-up"></i></span>
			</div>
		</div>
		<!-- end: FOOTER -->
		<!-- start: RIGHT SIDEBAR -->
		<div id="page-sidebar">
			<a class="sidebar-toggler sb-toggle" href="#"><i class="fa fa-indent"></i></a>
			<div class="sidebar-wrapper">
				<ul class="nav nav-tabs nav-justified" id="sidebar-tab">
					<li class="active">
						<a href="#users" role="tab" data-toggle="tab"><i class="fa fa-users"></i></a>
					</li>
					<li>
						<a href="#favorites" role="tab" data-toggle="tab"><i class="fa fa-heart"></i></a>
					</li>
					<li>
						<a href="#settings" role="tab" data-toggle="tab"><i class="fa fa-gear"></i></a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="users">
						<div class="users-list">
							<h5 class="sidebar-title">On-line</h5>
							<ul class="media-list">
								<li class="media">
									<a href="#">
										<i class="fa fa-circle status-online"></i>
										<img alt="..." src="assets/images/avatar-2.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Nicole Bell</h4>
											<span> Content Designer </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<div class="user-label">
											<span class="label label-success">3</span>
										</div>
										<i class="fa fa-circle status-online"></i>
										<img alt="..." src="assets/images/avatar-3.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Steven Thompson</h4>
											<span> Visual Designer </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<i class="fa fa-circle status-online"></i>
										<img alt="..." src="assets/images/avatar-4.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Ella Patterson</h4>
											<span> Web Editor </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<i class="fa fa-circle status-online"></i>
										<img alt="..." src="assets/images/avatar-5.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Kenneth Ross</h4>
											<span> Senior Designer </span>
										</div>
									</a>
								</li>
							</ul>
							<h5 class="sidebar-title">Off-line</h5>
							<ul class="media-list">
								<li class="media">
									<a href="#">
										<img alt="..." src="assets/images/avatar-6.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Nicole Bell</h4>
											<span> Content Designer </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<div class="user-label">
											<span class="label label-success">3</span>
										</div>
										<img alt="..." src="assets/images/avatar-7.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Steven Thompson</h4>
											<span> Visual Designer </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<img alt="..." src="assets/images/avatar-8.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Ella Patterson</h4>
											<span> Web Editor </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<img alt="..." src="assets/images/avatar-9.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Kenneth Ross</h4>
											<span> Senior Designer </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<img alt="..." src="assets/images/avatar-10.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Ella Patterson</h4>
											<span> Web Editor </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<img alt="..." src="assets/images/avatar-5.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Kenneth Ross</h4>
											<span> Senior Designer </span>
										</div>
									</a>
								</li>
							</ul>
						</div>
						<div class="user-chat">
							<div class="sidebar-content">
								<a class="sidebar-back" href="#"><i class="fa fa-chevron-circle-left"></i> Back</a>
							</div>
							<div class="user-chat-form sidebar-content">
								<div class="input-group">
									<input type="text" placeholder="Type a message here..." class="form-control">
									<div class="input-group-btn">
										<button class="btn btn-success" type="button">
											<i class="fa fa-chevron-right"></i>
										</button>
									</div>
								</div>
							</div>
							<ol class="discussion sidebar-content">
								<li class="other">
									<div class="avatar">
										<img src="assets/images/avatar-4.jpg" alt="">
									</div>
									<div class="messages">
										<p>
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
										</p>
										<span class="time"> 51 min </span>
									</div>
								</li>
								<li class="self">
									<div class="avatar">
										<img src="assets/images/avatar-1.jpg" alt="">
									</div>
									<div class="messages">
										<p>
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
										</p>
										<span class="time"> 37 mins </span>
									</div>
								</li>
								<li class="other">
									<div class="avatar">
										<img src="assets/images/avatar-4.jpg" alt="">
									</div>
									<div class="messages">
										<p>
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
										</p>
									</div>
								</li>
							</ol>
						</div>
					</div>
					<div class="tab-pane" id="favorites">
						<div class="users-list">
							<h5 class="sidebar-title">Favorites</h5>
							<ul class="media-list">
								<li class="media">
									<a href="#">
										<img alt="..." src="assets/images/avatar-7.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Nicole Bell</h4>
											<span> Content Designer </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<div class="user-label">
											<span class="label label-success">3</span>
										</div>
										<img alt="..." src="assets/images/avatar-6.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Steven Thompson</h4>
											<span> Visual Designer </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<img alt="..." src="assets/images/avatar-10.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Ella Patterson</h4>
											<span> Web Editor </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<img alt="..." src="assets/images/avatar-2.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Kenneth Ross</h4>
											<span> Senior Designer </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<img alt="..." src="assets/images/avatar-4.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Ella Patterson</h4>
											<span> Web Editor </span>
										</div>
									</a>
								</li>
								<li class="media">
									<a href="#">
										<img alt="..." src="assets/images/avatar-5.jpg" class="media-object">
										<div class="media-body">
											<h4 class="media-heading">Kenneth Ross</h4>
											<span> Senior Designer </span>
										</div>
									</a>
								</li>
							</ul>
						</div>
						<div class="user-chat">
							<div class="sidebar-content">
								<a class="sidebar-back" href="#"><i class="fa fa-chevron-circle-left"></i> Back</a>
							</div>
							<ol class="discussion sidebar-content">
								<li class="other">
									<div class="avatar">
										<img src="assets/images/avatar-4.jpg" alt="">
									</div>
									<div class="messages">
										<p>
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
										</p>
										<span class="time"> 51 min </span>
									</div>
								</li>
								<li class="self">
									<div class="avatar">
										<img src="assets/images/avatar-1.jpg" alt="">
									</div>
									<div class="messages">
										<p>
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
										</p>
										<span class="time"> 37 mins </span>
									</div>
								</li>
								<li class="other">
									<div class="avatar">
										<img src="assets/images/avatar-4.jpg" alt="">
									</div>
									<div class="messages">
										<p>
											Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
										</p>
									</div>
								</li>
							</ol>
						</div>
					</div>
					<div class="tab-pane" id="settings">
						<h5 class="sidebar-title">General Settings</h5>
						<ul class="media-list">
							<li class="media">
								<div class="checkbox sidebar-content">
									<label>
										<input type="checkbox" value="" class="green" checked="checked">
										Enable Notifications
									</label>
								</div>
							</li>
							<li class="media">
								<div class="checkbox sidebar-content">
									<label>
										<input type="checkbox" value="" class="green" checked="checked">
										Show your E-mail
									</label>
								</div>
							</li>
							<li class="media">
								<div class="checkbox sidebar-content">
									<label>
										<input type="checkbox" value="" class="green">
										Show Offline Users
									</label>
								</div>
							</li>
							<li class="media">
								<div class="checkbox sidebar-content">
									<label>
										<input type="checkbox" value="" class="green" checked="checked">
										E-mail Alerts
									</label>
								</div>
							</li>
							<li class="media">
								<div class="checkbox sidebar-content">
									<label>
										<input type="checkbox" value="" class="green">
										SMS Alerts
									</label>
								</div>
							</li>
						</ul>
						<div class="sidebar-content">
							<button class="btn btn-success">
								<i class="icon-settings"></i> Save Changes
							</button>
						</div>
					</div>
				</div>
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
		<script src="assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
		<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
		<script src="assets/plugins/blockUI/jquery.blockUI.js"></script>
		<script src="assets/plugins/iCheck/jquery.icheck.min.js"></script>
		<script src="assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
		<script src="assets/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
		<script src="assets/plugins/less/less-1.5.0.min.js"></script>
		<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
		<script src="assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
		<script src="assets/js/main.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
			});
		</script>
	</body>
	<!-- end: BODY -->

<!-- Mirrored from www.cliptheme.com/preview/admin/clip-one/pages_messages.html by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 09 Aug 2014 11:32:09 GMT -->
</html>