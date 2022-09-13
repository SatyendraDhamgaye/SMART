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
								<div class="page-title">Contact Us</div>
							</div>
							<ol class="breadcrumb page-breadcrumb pull-right">
								<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
										href="<%=session.getAttribute("page")%>.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
								</li>
								<li class="active">Contact Us</li>
							</ol>
						</div>
					</div>
					<!-- add content here -->
					<div class="row">
						<div class="col-sm-12">
							<div class="borderBox light bordered">
								<div class="row">
									<div class="col-sm-12">
										<div class="contact-map">
											<iframe
												src="https://www.google.com/maps/d/embed?mid=1sjINSNbiZfu6iyy2pPSha2O4GD4&amp;hl=en_US"
												width="640" height="480"></iframe>
										</div>
									</div>
								</div>
								<div class="row m-t-50 m-b-30">
									<div class="col-md-10 col-md-offset-1">
										<div class="row m-b-20">
											<div class="col-sm-12">
												<h3 class="title">Send us a Message</h3>
												<p class="text-muted sub-title">The clean and well commented code allows
													easy customization of the
													theme.It's <br> designed for describing your app, agency or
													business.</p>
											</div>
										</div>
										<div class="row">
											<!-- Contact form -->
											<div class="col-sm-6">
												<form name="ajax-form" action="#" method="post" class="contact-form"
													data-parsley-validate="" novalidate="">
													<div class="form-group">
														<input class="form-control" id="name2" name="name"
															placeholder="Your name" type="text" value="" required="">
													</div>
													<!-- /Form-name -->
													<div class="form-group">
														<input class="form-control" id="email2" name="email"
															type="email" placeholder="Your email" value="" required="">
													</div>
													<!-- /Form-email -->
													<div class="form-group">
														<textarea class="form-control" id="message2" name="message"
															rows="5" placeholder="Message" required=""></textarea>
													</div>
													<!-- /Form Msg -->
													<div class="row">
														<div class="col-12">
															<div class="">
																<button type="submit"
																	class="btn btn-primary waves-effect waves-light"
																	id="send">Submit</button>
															</div>
														</div> <!-- /col -->
													</div> <!-- /row -->
												</form> <!-- /form -->
											</div> <!-- end col -->
											<div class="col-sm-4 col-sm-offset-1">
												<div class="contact-box">
													<div class="contact-detail">
														<i class="fa fa-map-marker"></i>
														<span>
															A-304, Shyam appartment,
															Mahatma Gandhi Marg,
															Satellite
														</span>
													</div>
													<div class="contact-detail">
														<i class="fa fa-mobile"></i>
														<span>
															<a href="mailto:(123)456-789-123">(123)456-789-123</a>
														</span>
													</div>
													<div class="contact-detail">
														<i class="fa fa-envelope"></i>
														<span>
															<a href="#">support@example.com</a>
														</span>
													</div>
												</div>
											</div> <!-- end col -->
										</div>
									</div>
								</div>
								<!-- end row -->
							</div>
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