<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.smartapn.DB.SmartApnDB"%>
<%@page import="java.sql.Connection"%>
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
			<%@include file="sidebaradmin.jsp" %>
			<!-- end sidebar menu -->
			<!-- start page content -->
			<div class="page-content-wrapper">
				<div class="page-content">
					<div class="page-bar">
						<div class="page-title-breadcrumb">
							<div class=" pull-left">
								<div class="page-title">Professor Profile</div>
							</div>
							<ol class="breadcrumb page-breadcrumb pull-right">
								<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
										href="<%=session.getAttribute("page")%>.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
								</li>
								<li><a class="parent-item" href="#">Professors</a>&nbsp;<i class="fa fa-angle-right"></i>
								</li>
								<li class="active">Professor Profile</li>
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
												<img src="assets/img/prof/prof4.jpg" class="img-responsive" alt="">
											</div>
										</div>
                                                                            
                                                                            <%
                                        Connection con = SmartApnDB.conectdb();
                                        Statement st = null;
                                        try {
                                            int a = Integer.parseInt(request.getParameter("id"));
                                            String sql = "select * from staff where id ='"+a+"'";
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery(sql);
                                            while (rs.next()) {
                                    %>
                                                                            
										<div class="profile-usertitle">
											<div class="profile-usertitle-name"> <%= rs.getString("first_name")%> <%= rs.getString("last_name")%></div>
											<div class="profile-usertitle-job"> Jr. Clerk </div>
										</div>
										
										<!-- END SIDEBAR USER TITLE -->
										<!-- SIDEBAR BUTTONS -->
										
										<!-- END SIDEBAR BUTTONS -->
									</div>
								</div>
								<div class="card">
									<div class="card-head card-topline-aqua">
										<header>About Me</header>
									</div>
									<div class="card-body no-padding height-9">
										<div class="profile-desc">
											<%= rs.getString("address")%>
										</div>
										<ul class="list-group list-group-unbordered">
											<li class="list-group-item">
												<b>Gender </b>
												<div class="profile-desc-item pull-right"><%= rs.getString("gender")%></div>
											</li>
											
											<li class="list-group-item">
												<b>Degree </b>
												<div class="profile-desc-item pull-right"><%= rs.getString("education")%></div>
											</li>
											<li class="list-group-item">
												<b>Designation</b>
												<div class="profile-desc-item pull-right"><%= rs.getString("designation")%></div>
											</li>
										</ul>
										
									</div>
								</div>
								<div class="card">
									<div class="card-head card-topline-aqua">
										<header>Address</header>
									</div>
									<div class="card-body no-padding height-9">
										<div class="row text-center m-t-10">
											<div class="col-md-12">
												<p><%= rs.getString("address")%></p>
											</div>
										</div>
									</div>
								</div>
						
							</div>
							<!-- END BEGIN PROFILE SIDEBAR -->
							<!-- BEGIN PROFILE CONTENT -->
							<div class="profile-content">
								<div class="row">
									<div class="card">
										<div class="card-topline-aqua">
											<header></header>
										</div>
										<div class="white-box">
											<!-- Nav tabs -->
											<div class="p-rl-20">
												<ul class="nav customtab nav-tabs" role="tablist">
													<li class="nav-item"><a href="#tab1" class="nav-link active"
															data-toggle="tab">About Me</a></li>
													<li class="nav-item"><a href="#tab2" class="nav-link"
															data-toggle="tab">Activity</a></li>
												</ul>
											</div>
											<!-- Tab panes -->
											<div class="tab-content">
												<div class="tab-pane active fontawesome-demo" id="tab1">
													<div id="biography">
														<div class="row">
															<div class="col-md-3 col-6 b-r"> <strong>Full Name</strong>
																<br>
																<p class="text-muted"><%= rs.getString("first_name")%> <%= rs.getString("last_name")%></p>
															</div>
															<div class="col-md-3 col-6 b-r"> <strong>Mobile</strong>
																<br>
																<p class="text-muted"><%= rs.getInt("mobile_no")%></p>
															</div>
															<div class="col-md-3 col-6 b-r"> <strong>Email</strong>
																<br>
																<p class="text-muted"><%= rs.getString("email")%></p>
															</div>
															<div class="col-md-3 col-6"> <strong>Location</strong>
																<br>
																<p class="text-muted"><%= rs.getString("address")%></p>
															</div>
														</div>
														<hr>
														<p class="m-t-30">Completed my graduation in Commerce from the
															well known and renowned institution of
															India – SARDAR PATEL COMMERCE COLLEGE, BARODA in 2000-01,
															which was affiliated to M.S. University. I
															ranker in University exams from the same university from
															1996-01.</p>
														<p>Worked as Clerk and Head of the department at Sarda Collage,
															Rajkot, Gujarat from 2003-2015 </p>
														<p>Lorem Ipsum is simply dummy text of the printing and
															typesetting industry. Lorem Ipsum has been the
															industry's standard dummy text ever since the 1500s, when an
															unknown printer took a galley of type and
															scrambled it to make a type specimen book. It has survived
															not only five centuries, but also the leap
															into electronic typesetting, remaining essentially
															unchanged.</p>
														<br>
														<h4 class="font-bold">Education</h4>
														<hr>
														<ul>
															<li>B.Com.,Gujarat University, Ahmedabad,India.</li>
															<li>M.Com.,Gujarat University, Ahmedabad, India.</li>
														</ul>
														<br>
														<h4 class="font-bold">Experience</h4>
														<hr>
														<ul>
															<li>One year experience as Jr. Clerk from April-2009 to
																march-2010 at B. J. Commerce College, Ahmedabad.</li>
															<li>Three year experience as Jr. Clerk at V.S. Arts &
																Commerse Collage from April - 2008 to April -
																2011.</li>
															<li>Lorem Ipsum is simply dummy text of the printing and
																typesetting industry. </li>
															<li>Lorem Ipsum is simply dummy text of the printing and
																typesetting industry. </li>
															<li>Lorem Ipsum is simply dummy text of the printing and
																typesetting industry. </li>
															<li>Lorem Ipsum is simply dummy text of the printing and
																typesetting industry. </li>
														</ul>
														<br>
														<h4 class="font-bold">Conferences, Cources & Workshop Attended
														</h4>
														<hr>
														<ul>
															<li>Lorem Ipsum is simply dummy text of the printing and
																typesetting industry. </li>
															<li>Lorem Ipsum is simply dummy text of the printing and
																typesetting industry. </li>
															<li>Lorem Ipsum is simply dummy text of the printing and
																typesetting industry. </li>
															<li>Lorem Ipsum is simply dummy text of the printing and
																typesetting industry. </li>
															<li>Lorem Ipsum is simply dummy text of the printing and
																typesetting industry. </li>
															<li>Lorem Ipsum is simply dummy text of the printing and
																typesetting industry. </li>
															<li>Lorem Ipsum is simply dummy text of the printing and
																typesetting industry. </li>
														</ul>
														<br>
													</div>
												</div>
												<div class="tab-pane" id="tab2">
													<div class="container-fluid">
														<div class="row">
															<div class="full-width p-rl-20">
																<div class="panel">
																	<form>
																		<textarea class="form-control p-text-area"
																			rows="4"
																			placeholder="Whats in your mind today?"></textarea>
																	</form>
																	<footer class="panel-footer">
																		<button
																			class="btn btn-post pull-right">Post</button>
																		<ul class="nav nav-pills p-option">
																			<li>
																				<a href="#"><i
																						class="fa fa-user"></i></a>
																			</li>
																			<li>
																				<a href="#"><i
																						class="fa fa-camera"></i></a>
																			</li>
																			<li>
																				<a href="#"><i
																						class="fa  fa-location-arrow"></i></a>
																			</li>
																			<li>
																				<a href="#"><i
																						class="fa fa-meh-o"></i></a>
																			</li>
																		</ul>
																	</footer>
																</div>
															</div>
															<div class="full-width p-rl-20">
																<ul class="activity-list">
																	<li>
																		<div class="avatar">
																			<img src="assets/img/std/std1.jpg"
																				alt="" />
																		</div>
																		<div class="activity-desk">
																			<h5><a href="#">Rajesh</a> <span>Uploaded 3
																					new photos</span></h5>
																			<p class="text-muted">7 minutes ago near
																				Alaska, USA</p>
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
																		<div class="avatar">
																			<img src="assets/img/std/std3.jpg"
																				alt="" />
																		</div>
																		<div class="activity-desk">
																			<h5><a href="#">John Doe</a> <span>attended
																					a meeting with</span>
																				<a href="#">Lina Smith.</a></h5>
																			<p class="text-muted">2 days ago near
																				Alaska, USA</p>
																		</div>
																	</li>
																	<li>
																		<div class="avatar">
																			<img src="assets/img/std/std4.jpg"
																				alt="" />
																		</div>
																		<div class="activity-desk">
																			<h5><a href="#">Kehn Anderson</a>
																				<span>completed the task “wireframe
																					design” within the dead line</span>
																			</h5>
																			<p class="text-muted">4 days ago near
																				Alaska, USA</p>
																		</div>
																	</li>
																	<li>
																		<div class="avatar">
																			<img src="assets/img/std/std5.jpg"
																				alt="" />
																		</div>
																		<div class="activity-desk">
																			<h5><a href="#">Jacob Ryan</a> <span>was
																					absent office due to sickness</span>
																			</h5>
																			<p class="text-muted">4 days ago near
																				Alaska, USA</p>
																		</div>
																	</li>
																</ul>
																<div class="post-box"> <span
																		class="text-muted text-small"><i
																			class="fa fa-clock-o"
																			aria-hidden="true"></i>
																		13 minutes ago</span>
																	<div class="post-img"><img
																			src="assets/img/slider/fullimage1.jpg"
																			class="img-responsive" alt=""></div>
																	<div>
																		<h4 class="">Lorem Ipsum is simply dummy text of
																			the printing</h4>
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
																		<h4 class="">Lorem Ipsum is simply dummy text of
																			the printing</h4>
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
																		<h4 class="">Lorem Ipsum is simply dummy text of
																			the printing</h4>
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
																<div class="col-lg-12 p-t-20 text-center">
																	<button type="button"
																		class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-info">Load
																		More</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
                                                        
                                                        
                                                        <%
                                            }
                                        } catch (Exception e) {
                                            System.out.println(e.getMessage());
                                        }
                                    %>
							<!-- END PROFILE CONTENT -->
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
	<!-- end js include path -->
</body>


</html>