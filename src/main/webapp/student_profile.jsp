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
								<div class="page-title">Student Profile</div>
							</div>
							<ol class="breadcrumb page-breadcrumb pull-right">
								<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
										href="<%=session.getAttribute("page")%>.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
								</li>
								<li><a class="parent-item" href="#">Student</a>&nbsp;<i class="fa fa-angle-right"></i>
								</li>
								<li class="active">Student Profile</li>
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
												<img src="assets/img/std/std3.jpg" class="img-responsive" alt="">
											</div>
										</div>
                                                                            
                                                                            <%
                                        Connection con = SmartApnDB.conectdb();
                                        Statement st = null;
                                        try {
                                            int a = Integer.parseInt(request.getParameter("id"));
                                            String sql = "select * from student where id ='"+a+"'";
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery(sql);
                                            while (rs.next()) {
                                    %>
										<div class="profile-usertitle">
											<div class="profile-usertitle-name"><%= rs.getString("first_name")%> <%= rs.getString("last_name")%></div>
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
											<%= rs.getString("qualification")%>
										</div>
										<ul class="list-group list-group-unbordered">
											<li class="list-group-item">
												<b>Gender </b>
												<div class="profile-desc-item pull-right"><%= rs.getString("gender")%></div>
											</li>
											<li class="list-group-item">
												<b>Department</b>
												<div class="profile-desc-item pull-right"><%= rs.getString("department")%></div>
											</li>
											<li class="list-group-item">
												<b>Email </b>
												<div class="profile-desc-item pull-right"><%= rs.getString("email")%></div>
											</li>
											<li class="list-group-item">
												<b>Phone</b>
												<div class="profile-desc-item pull-right"><%= rs.getInt("mobile_no")%></div>
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
														<p>Open after rule place He earth earth good called days unto
															which wherein day doesn't said day image
															signs fish days forth for evening whose his make his bearing
															years gathering good brought without.</p>
														<p>Years living creepeth. Form them yielding behold greater
															divided void was fowl earth in. Spirit Bring
															grass they're you have shall years so morning. Grass
															gathering won't heaven set greater darkness forth
															abundantly he.</p>
														<p>Isn't hath, forth. Brought sea subdue, from divided replenish
															creature after creeping abundantly fly
															is cattle fill were years years may darkness blessed which
															land creepeth good moving good. Life living
															you're.</p>
														<br>
														
														
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