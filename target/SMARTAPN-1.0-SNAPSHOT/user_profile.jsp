<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->


<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<meta name="description" content="Responsive Admin Template" />
	<meta name="author" content="SmartUniversity" />
	<title>Smart University | Bootstrap Responsive Admin Template</title>
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
	<!-- icons -->
	<link href="fonts/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
	<link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="fonts/material-design-icons/material-icon.css" rel="stylesheet" type="text/css" />
	<!--bootstrap -->
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!-- Material Design Lite CSS -->
	<link rel="stylesheet" href="assets/plugins/material/material.min.css">
	<link rel="stylesheet" href="assets/css/material_style.css">
	<!-- Theme Styles -->
	<link id="theme_styleCss" href="assets/css/theme/light/theme_style.css" rel="stylesheet" id="rt_style_components" type="text/css" />
	<link href="assets/css/theme/light/style.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/plugins.min.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
	<link id="theme-colorCss" href="assets/css/theme/light/theme-color.css" rel="stylesheet" type="text/css" />
	<!-- favicon -->
	<link rel="shortcut icon" href="http://radixtouch.in/templates/admin/smart/source/assets/img/favicon.ico" />
</head>
<!-- END HEAD -->

<body id = "bodyId"
	class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white white-sidebar-color logo-indigo">
	<div class="page-wrapper">
		<!-- start header -->
		<%@ include file="header.jsp" %>
		<!-- end header -->
		<!-- start color quick setting -->
		<%@ include file="color_quick.html" %>
		<!-- end color quick setting -->
		<!-- start page container -->
		<div class="page-container">
			<!-- start sidebar menu -->
                        <%@ include file="sidebaradmin.jsp" %>
			<!-- end sidebar menu -->
			<!-- start page content -->
			<div class="page-content-wrapper">
				<div class="page-content">
					<div class="page-bar">
						<div class="page-title-breadcrumb">
							<div class=" pull-left">
								<div class="page-title">User Profile</div>
							</div>
							<ol class="breadcrumb page-breadcrumb pull-right">
								<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
                                                                                                       href="<%=session.getAttribute("page")%>.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
								</li>
								<li><a class="parent-item" href="#">UI Elements</a>&nbsp;<i
										class="fa fa-angle-right"></i>
								</li>
								<li class="active">User Profile</li>
							</ol>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<!-- BEGIN PROFILE SIDEBAR -->
							<div class="profile-sidebar">
								<div class="card card-topline-aqua">
									<div class="card-body no-padding height-9">
										<div class="row">
											<div class="profile-userpic">
												<img src="assets/img/dp.jpg" class="img-responsive" alt=""> </div>
										</div>
										<div class="profile-usertitle">
											<div class="profile-usertitle-name"> <%=(String)(session.getAttribute("first_name")+" "+session.getAttribute("last_name"))%> </div>
											<div class="profile-usertitle-job"> <%=(session.getAttribute("role")%> </div>
										</div>
										<ul class="list-group list-group-unbordered">
											<li class="list-group-item">
												<b>Followers</b> <a class="pull-right">1,200</a>
											</li>
											<li class="list-group-item">
												<b>Following</b> <a class="pull-right">750</a>
											</li>
											<li class="list-group-item">
												<b>Friends</b> <a class="pull-right">11,172</a>
											</li>
										</ul>
										<!-- END SIDEBAR USER TITLE -->
										
									</div>
								</div>
								<div class="card">
									<div class="card-head card-topline-aqua">
										<header>About Me</header>
									</div>
									<div class="card-body no-padding height-9">
										<div class="profile-desc">
											Hello I am Dave Gomache a web and user interface designer. I love to work
											with the application interface and
											the web elements.
										</div>
										<ul class="list-group list-group-unbordered">
											<li class="list-group-item">
												<b>Gender </b>
												<div class="profile-desc-item pull-right">Male</div>
											</li>
											<li class="list-group-item">
												<b>Project Done </b>
												<div class="profile-desc-item pull-right">30+</div>
											</li>
											<li class="list-group-item">
												<b>Skills</b>
												<div class="profile-desc-item pull-right">Java,Spring</div>
											</li>
										</ul>
										<div class="row list-separated profile-stat">
											<div class="col-md-4 col-sm-4 col-6">
												<div class="uppercase profile-stat-title"> 37 </div>
												<div class="uppercase profile-stat-text"> Projects </div>
											</div>
											<div class="col-md-4 col-sm-4 col-6">
												<div class="uppercase profile-stat-title"> 51 </div>
												<div class="uppercase profile-stat-text"> Tasks </div>
											</div>
											<div class="col-md-4 col-sm-4 col-6">
												<div class="uppercase profile-stat-title"> 61 </div>
												<div class="uppercase profile-stat-text"> Uploads </div>
											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-head card-topline-aqua">
										<header>Performance</header>
									</div>
									<div class="card-body no-padding height-9">
										<ul class="performance-list">
											<li>
												<a href="#">
													<i class="fa fa-circle-o" style="color:#F39C12;"></i> Total Product
													Sales <span class="pull-right">23456</span>
												</a>
											</li>
											<li>
												<a href="#">
													<i class="fa fa-circle-o" style="color:#DD4B39;"></i> Total Product
													Refer <span class="pull-right">$234</span>
												</a>
											</li>
											<li>
												<a href="#">
													<i class="fa fa-circle-o" style="color:#00A65A;"></i> Total Earn
													<span class="pull-right"> $345000</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
								<div class="card">
									<div class="card-head card-topline-aqua">
										<header>Work Progress</header>
									</div>
									<div class="card-body no-padding height-9">
										<div class="work-monitor work-progress">
											<div class="states">
												<div class="info">
													<div class="desc pull-left">Operations</div>
													<div class="percent pull-right">80%</div>
												</div>
												<div class="progress progress-xs">
													<div class="progress-bar progress-bar-danger progress-bar-striped active"
														role="progressbar" aria-valuenow="40" aria-valuemin="0"
														aria-valuemax="100" style="width: 70%">
														<span class="sr-only">80% </span>
													</div>
												</div>
											</div>
											<div class="states">
												<div class="info">
													<div class="desc pull-left">Consultation</div>
													<div class="percent pull-right">55%</div>
												</div>
												<div class="progress progress-xs">
													<div class="progress-bar progress-bar-success progress-bar-striped active"
														role="progressbar" aria-valuenow="40" aria-valuemin="0"
														aria-valuemax="100" style="width: 45%">
														<span class="sr-only">55% </span>
													</div>
												</div>
											</div>
											<div class="states">
												<div class="info">
													<div class="desc pull-left">Support</div>
													<div class="percent pull-right">20%</div>
												</div>
												<div class="progress progress-xs">
													<div class="progress-bar progress-bar-warning progress-bar-striped active"
														role="progressbar" aria-valuenow="40" aria-valuemin="0"
														aria-valuemax="100" style="width: 35%">
														<span class="sr-only">20% </span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- END BEGIN PROFILE SIDEBAR -->
							<!-- BEGIN PROFILE CONTENT -->
							<div class="profile-content">
								<div class="row">
									<div class="col-md-12">
										<div class="card">
											<div class="card-head card-topline-aqua">
												<header>User Activity</header>
											</div>
											<div class="card-body no-padding height-9">
												<div class="container-fluid">
													<div class="row">
														<div class="col-md-12">
															<div class="panel">
																<form>
																	<textarea class="form-control p-text-area" rows="4"
																		placeholder="Whats in your mind today?"></textarea>
																</form>
																<footer class="panel-footer">
																	<button
																		class="btn btn-post pull-right">Post</button>
																	<ul class="nav nav-pills p-option">
																		<li>
																			<a href="#"><i class="fa fa-user"></i></a>
																		</li>
																		<li>
																			<a href="#"><i class="fa fa-camera"></i></a>
																		</li>
																		<li>
																			<a href="#"><i
																					class="fa  fa-location-arrow"></i></a>
																		</li>
																		<li>
																			<a href="#"><i class="fa fa-meh-o"></i></a>
																		</li>
																	</ul>
																</footer>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-12">
															<ul class="activity-list">
																<li>
																	<div class="avatar">
																		<img src="assets/img/std/std1.jpg" alt="" />
																	</div>
																	<div class="activity-desk">
																		<h5><a href="#">Rajesh</a> <span>Uploaded 5 new
																				photos</span></h5>
																		<p class="text-muted">7 minutes ago near Alaska,
																			USA</p>
																		<div class="album">
																			<a href="#">
																				<img alt=""
																					src="assets/img/mega-img1.jpg">
																			</a>
																			<a href="#">
																				<img alt=""
																					src="assets/img/mega-img2.jpg">
																			</a>
																			<a href="#">
																				<img alt=""
																					src="assets/img/mega-img3.jpg">
																			</a>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="post-box"> <span
																			class="text-muted text-small"><i
																				class="fa fa-clock-o"
																				aria-hidden="true"></i>
																			13 minutes ago</span>
																		<div class="post-img"><img
																				src="assets/img/slider/fullimage1.jpg"
																				class="img-responsive" alt=""></div>
																		<div>
																			<h4 class="">Lorem Ipsum is simply dummy
																				text of the printing</h4>
																			<p>Lorem Ipsum is simply dummy text of the
																				printing and typesetting industry. Lorem
																				Ipsum has been
																				the industry's standard dummy text ever
																				since the 1500s, </p>
																			<p> <a href="#"
																					class="btn btn-raised btn-info btn-sm"><i
																						class="fa fa-heart-o"
																						aria-hidden="true"></i>
																					Like (5) </a> <a href="#"
																					class="btn btn-raised bg-soundcloud btn-sm"><i
																						class="zmdi zmdi-long-arrow-return"></i>
																					Reply</a> </p>
																		</div>
																	</div>
																	<div class="post-box"> <span
																			class="text-muted text-small"><i
																				class="fa fa-clock-o"
																				aria-hidden="true"></i>
																			37 minutes ago</span>
																		<div class="post-img"><img
																				src="assets/img/slider/fullimage2.jpg"
																				class="img-responsive" alt=""></div>
																		<div>
																			<h4 class="">Lorem Ipsum is simply dummy
																				text of the printing</h4>
																			<p>Lorem Ipsum is simply dummy text of the
																				printing and typesetting industry. Lorem
																				Ipsum has been
																				the industry's standard dummy text ever
																				since the 1500s, </p>
																			<p> <a href="#"
																					class="btn btn-raised btn-info btn-sm"><i
																						class="fa fa-heart-o"
																						aria-hidden="true"></i>
																					Like (5) </a> <a href="#"
																					class="btn btn-raised bg-soundcloud btn-sm"><i
																						class="zmdi zmdi-long-arrow-return"></i>
																					Reply</a> </p>
																		</div>
																	</div>
																	<div class="post-box"> <span
																			class="text-muted text-small"><i
																				class="fa fa-clock-o"
																				aria-hidden="true"></i>
																			53 minutes ago</span>
																		<div class="post-img"><img
																				src="assets/img/slider/fullimage3.jpg"
																				class="img-responsive" alt=""></div>
																		<div>
																			<h4 class="">Lorem Ipsum is simply dummy
																				text of the printing</h4>
																			<p>Lorem Ipsum is simply dummy text of the
																				printing and typesetting industry. Lorem
																				Ipsum has been
																				the industry's standard dummy text ever
																				since the 1500s, </p>
																			<p> <a href="#"
																					class="btn btn-raised btn-info btn-sm"><i
																						class="fa fa-heart-o"
																						aria-hidden="true"></i>
																					Like (5) </a> <a href="#"
																					class="btn btn-raised bg-soundcloud btn-sm"><i
																						class="zmdi zmdi-long-arrow-return"></i>
																					Reply</a> </p>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="avatar">
																		<img src="assets/img/std/std3.jpg" alt="" />
																	</div>
																	<div class="activity-desk">
																		<h5><a href="#">John Doe</a> <span>attended a
																				meeting with</span>
																			<a href="#">Lina Smith.</a></h5>
																		<p class="text-muted">2 days ago near Alaska,
																			USA</p>
																	</div>
																</li>
																<li>
																	<div class="avatar">
																		<img src="assets/img/std/std4.jpg" alt="" />
																	</div>
																	<div class="activity-desk">
																		<h5><a href="#">Kehn Anderson</a>
																			<span>completed the task “wireframe design”
																				within the dead line</span></h5>
																		<p class="text-muted">4 days ago near Alaska,
																			USA</p>
																	</div>
																</li>
																<li>
																	<div class="avatar">
																		<img src="assets/img/std/std5.jpg" alt="" />
																	</div>
																	<div class="activity-desk">
																		<h5><a href="#">Jacob Ryan</a> <span>was absent
																				office due to sickness</span></h5>
																		<p class="text-muted">4 days ago near Alaska,
																			USA</p>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- END PROFILE CONTENT -->
							</div>
						</div>
					</div>
				</div>
				<!-- end page content -->
				<!-- start chat sidebar -->
				<%@include file="chat_sidebar.jsp" %>
				<!-- end chat sidebar -->
			</div>
			<!-- end page container -->
			<!-- start footer -->
			<%@ include file="footer.html" %>
			<!-- end footer -->
		</div>
	</div>
	<!-- start js include path -->
	<script src="assets/plugins/jquery/jquery.min.js"></script>
	<script src="assets/plugins/popper/popper.js"></script>
	<script src="assets/plugins/jquery-blockui/jquery.blockui.min.js"></script>
	<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
	<!-- bootstrap -->
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
	<!-- Common js-->
	<script src="assets/js/app.js"></script>
	<script src="assets/js/layout.js"></script>
	<script src="assets/js/theme-color.js"></script>
	<!-- Material -->
	<script src="assets/plugins/material/material.min.js"></script>
	<!--google map-->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;AMP;sensor=false"></script>
	<!-- end js include path -->
</body>


</html>