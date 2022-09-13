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
	<link href="assets/css/plugins.min.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/theme/light/style.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
	<link id="theme-colorCss" href="assets/css/theme/light/theme-color.css" rel="stylesheet" type="text/css" />
	
        <!-- Owl Carousel Assets -->
        <link href="assets/plugins/owl-carousel/owl.carousel.css" rel="stylesheet">
        <link href="assets/plugins/owl-carousel/owl.theme.css" rel="stylesheet">
        
        <!-- favicon -->
	<link rel="shortcut icon" href="http://radixtouch.in/templates/admin/smart/source/assets/img/favicon.ico" />
        <style type="text/css">
            .scrollable {
                height: 500px;
                overflow-y: scroll;
            }
        </style>
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
								<div class="page-title">Dashboard</div>
							</div>
							<ol class="breadcrumb page-breadcrumb pull-right">
								<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
										href="<%=session.getAttribute("page")%>.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
								</li>
								<li class="active">Dashboard</li>
							</ol>
						</div>
					</div>
					<!-- start widget -->
					<div class="row">
						<div class="col-lg-3 col-md-6 col-sm-6 col-12">
							<div class="analysis-box m-b-0 bg-purple">
								<h3 class="text-white box-title">Total Students <span class="pull-right"><i
											class="fa fa-caret-up"></i> 345</span></h3>
								<div id="sparkline7"><canvas
										style="display: inline-block; width: 267px; height: 30px; vertical-align: top;"></canvas>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 col-12">
							<div class="analysis-box m-b-0 bg-danger">
                                                            <h3 class="text-white box-title">Personal Students<span class="pull-right" data-counter="counterup" data-value="450"><i
											class="fa fa-caret-up"></i> 450</span></h3>
								<canvas
										style="display: inline-block; width: 267px; height: 30px; vertical-align: top;"></canvas>
								
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 col-12">
							<div class="analysis-box m-b-0 bg-blue">
								<h3 class="text-white box-title">Total Subjects <span class="pull-right"><i
											class="fa fa-caret-up"></i> 765</span></h3>
								<canvas
										style="display: inline-block; width: 200px; height: 30px; vertical-align: top;"></canvas>
								
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6 col-12">
							<div class="analysis-box m-b-0 bg-success">
								<h3 class="text-white box-title">Total Workload <span class="pull-right"><i
											class="fa fa-caret-up"></i> 323</span></h3>
								<canvas
										style="display: inline-block; width: 215px; height: 30px; vertical-align: top;"></canvas>
								
							</div>
						</div>
					</div>
					<!-- end widget -->
					<!-- chart start -->
					<div class="row">
						<div class="col-lg-6 col-md-12 col-sm-12 col-12">
							<div class="card card-box">
								<div class="card-head">
									<header>Income/Expense Report </header>
									<div class="tools">
										<a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
										<a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
										<a class="t-close btn-color fa fa-times" href="javascript:;"></a>
									</div>
								</div>
								<div class="card-body no-padding height-9">
									<div class="row">
										<canvas id="subject-bar"></canvas>
									</div>
								</div>
							</div>
						</div>
                                            
                                            <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="card card-topline-lightblue">
                                    <div class="card-head">
                                        <header>WORKLOAD</header>
                                        <div class="tools">
                                            <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                                            <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
                                            <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                        </div>
                                    </div>
                                    <div class="card-body " id="chartjs_doughnut_parent">
                                        <div class="row">
                                            <canvas id="subject-doughnut" height="150"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
						
					</div>
					<!-- Chart end -->
                                        
                                        
                                        
                                        <div class="row">
                            
                                <div id="owl-demo2" class="owl-carousel">
                                    <div class="item">
                                        <div class="col-lg-12 col-md-12 col-12 col-sm-6">
                                            <div class="blogThumb">
                                                <div class="thumb-center"><img class="img-responsive" alt="user"
                                                                               src="assets/img/course/course1.jpg"></div>
                                                <div class="course-box">
                                                    <h4>PHP Development Course</h4>
                                                    <div class="text-muted"><span class="m-r-10">April 23</span>
                                                        <a class="course-likes m-l-10" href="#"><i class="fa fa-heart-o"></i> 654</a>
                                                    </div>
                                                    <p><span><i class="ti-alarm-clock"></i> Duration: 6 Months</span></p>
                                                    <p><span><i class="ti-user"></i> Professor: Jane Doe</span></p>
                                                    <p><span><i class="fa fa-graduation-cap"></i> Students: 200+</span></p>
                                                    <button type="button"
                                                            class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-info">Read
                                                        More</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="col-lg-12 col-md-12 col-12 col-sm-6 ">
                                            <div class="blogThumb">
                                                <div class="thumb-center"><img class="img-responsive" alt="user"
                                                                               src="assets/img/course/course2.jpg"></div>
                                                <div class="course-box">
                                                    <h4>PHP Development Course</h4>
                                                    <div class="text-muted"><span class="m-r-10">April 23</span>
                                                        <a class="course-likes m-l-10" href="#"><i class="fa fa-heart-o"></i> 654</a>
                                                    </div>
                                                    <p><span><i class="ti-alarm-clock"></i> Duration: 6 Months</span></p>
                                                    <p><span><i class="ti-user"></i> Professor: Jane Doe</span></p>
                                                    <p><span><i class="fa fa-graduation-cap"></i> Students: 200+</span></p>
                                                    <button type="button"
                                                            class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-info">Read
                                                        More</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="col-lg-12 col-md-12 col-12 col-sm-6">
                                            <div class="blogThumb">
                                                <div class="thumb-center"><img class="img-responsive" alt="user"
                                                                               src="assets/img/course/course3.jpg"></div>
                                                <div class="course-box">
                                                    <h4>PHP Development Course</h4>
                                                    <div class="text-muted"><span class="m-r-10">April 23</span>
                                                        <a class="course-likes m-l-10" href="#"><i class="fa fa-heart-o"></i> 654</a>
                                                    </div>
                                                    <p><span><i class="ti-alarm-clock"></i> Duration: 6 Months</span></p>
                                                    <p><span><i class="ti-user"></i> Professor: Jane Doe</span></p>
                                                    <p><span><i class="fa fa-graduation-cap"></i> Students: 200+</span></p>
                                                    <button type="button"
                                                            class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-info">Read
                                                        More</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="col-lg-12 col-md-12 col-12 col-sm-6">
                                            <div class="blogThumb">
                                                <div class="thumb-center"><img class="img-responsive" alt="user"
                                                                               src="assets/img/course/course4.jpg"></div>
                                                <div class="course-box">
                                                    <h4>PHP Development Course</h4>
                                                    <div class="text-muted"><span class="m-r-10">April 23</span>
                                                        <a class="course-likes m-l-10" href="#"><i class="fa fa-heart-o"></i> 654</a>
                                                    </div>
                                                    <p><span><i class="ti-alarm-clock"></i> Duration: 6 Months</span></p>
                                                    <p><span><i class="ti-user"></i> Professor: Jane Doe</span></p>
                                                    <p><span><i class="fa fa-graduation-cap"></i> Students: 200+</span></p>
                                                    <button type="button"
                                                            class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-info">Read
                                                        More</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="col-lg-12 col-md-12 col-12 col-sm-6 ">
                                            <div class="blogThumb">
                                                <div class="thumb-center"><img class="img-responsive" alt="user"
                                                                               src="assets/img/course/course2.jpg"></div>
                                                <div class="course-box">
                                                    <h4>PHP Development Course</h4>
                                                    <div class="text-muted"><span class="m-r-10">April 23</span>
                                                        <a class="course-likes m-l-10" href="#"><i class="fa fa-heart-o"></i> 654</a>
                                                    </div>
                                                    <p><span><i class="ti-alarm-clock"></i> Duration: 6 Months</span></p>
                                                    <p><span><i class="ti-user"></i> Professor: Jane Doe</span></p>
                                                    <p><span><i class="fa fa-graduation-cap"></i> Students: 200+</span></p>
                                                    <button type="button"
                                                            class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-info">Read
                                                        More</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                           
                        </div>
                                        
                                        
                                        
                                        <div class="row">
                                           
                                            <!-- Activity feed start -->
						<div class="col-lg-6 col-md-12 col-sm-12 col-12">
							<div class="card-box">
								<div class="card-head">
									<header>Activity Feed</header>
									<button id="feedMenu" class="mdl-button mdl-js-button mdl-button--icon pull-right"
										data-upgraded=",MaterialButton">
										<i class="material-icons">more_vert</i>
									</button>
									<ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
										data-mdl-for="feedMenu">
										<li class="mdl-menu__item"><i class="material-icons">assistant_photo</i>Action
										</li>
										<li class="mdl-menu__item"><i class="material-icons">print</i>Another action
										</li>
										<li class="mdl-menu__item"><i class="material-icons">favorite</i>Something else
											here</li>
									</ul>
								</div>
								<div class="card-body ">
									<ul class="feedBody">
										<li class="active-feed">
											<div class="feed-user-img">
												<img src="assets/img/std/std1.jpg" class="img-radius "
													alt="User-Profile-Image">
											</div>
											<h6>
												<span class="feedLblStyle lblFileStyle">File</span> Sarah Smith <small
													class="text-muted">6 hours ago</small>
											</h6>
											<p class="m-b-15 m-t-15">
												hii John, I have upload doc related to task.
											</p>
										</li>
										<li class="diactive-feed">
											<div class="feed-user-img">
												<img src="assets/img/std/std2.jpg" class="img-radius "
													alt="User-Profile-Image">
											</div>
											<h6>
												<span class="feedLblStyle lblTaskStyle">Task </span> Jalpa Joshi<small
													class="text-muted">5 hours
													ago</small>
											</h6>
											<p class="m-b-15 m-t-15">
												Please do as specify. Let me know if you have any query.
											</p>
										</li>
										<li class="diactive-feed">
											<div class="feed-user-img">
												<img src="assets/img/std/std3.jpg" class="img-radius "
													alt="User-Profile-Image">
											</div>
											<h6>
												<span class="feedLblStyle lblCommentStyle">comment</span> Lina
												Smith<small class="text-muted">6 hours ago</small>
											</h6>
											<p class="m-b-15 m-t-15">
												Hey, How are you??
											</p>
										</li>
										<li class="active-feed">
											<div class="feed-user-img">
												<img src="assets/img/std/std4.jpg" class="img-radius "
													alt="User-Profile-Image">
											</div>
											<h6>
												<span class="feedLblStyle lblReplyStyle">Reply</span> Jacob Ryan
												<small class="text-muted">7 hours ago</small>
											</h6>
											<p class="m-b-15 m-t-15">
												I am fine. You??
											</p>
										</li>
										<li class="active-feed">
											<div class="feed-user-img">
												<img src="assets/img/std/std5.jpg" class="img-radius "
													alt="User-Profile-Image">
											</div>
											<h6>
												<span class="feedLblStyle lblFileStyle">File</span> Sarah Smith <small
													class="text-muted">6 hours ago</small>
											</h6>
											<p class="m-b-15 m-t-15">
												hii John, I have upload doc related to task.
											</p>
										</li>
										<li class="diactive-feed">
											<div class="feed-user-img">
												<img src="assets/img/std/std6.jpg" class="img-radius "
													alt="User-Profile-Image">
											</div>
											<h6>
												<span class="feedLblStyle lblTaskStyle">Task </span> Jalpa Joshi<small
													class="text-muted">5 hours
													ago</small>
											</h6>
											<p class="m-b-15 m-t-15">
												Please do as specify. Let me know if you have any query.
											</p>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- Activity feed end -->
                                            
                                            <!-- Exam topper Start -->
                            <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="card-box">
                                    <div class="card-head">
                                        <header>Exam Toppers</header>
                                        <button id="panel-button8"
                                                class="mdl-button mdl-js-button mdl-button--icon pull-right"
                                                data-upgraded=",MaterialButton">
                                            <i class="material-icons">more_vert</i>
                                        </button>
                                        <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
                                            data-mdl-for="panel-button8">
                                            <li class="mdl-menu__item"><i class="material-icons">assistant_photo</i>Action
                                            </li>
                                            <li class="mdl-menu__item"><i class="material-icons">print</i>Another action
                                            </li>
                                            <li class="mdl-menu__item"><i class="material-icons">favorite</i>Something else
                                                here</li>
                                        </ul>
                                    </div>
                                    <div class="card-body ">
                                        <div class="table-responsive">
                                            <table class="table table-striped custom-table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Roll No</th>
                                                        <th>Name</th>
                                                        <th>Graph</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>23</td>
                                                        <td>John Smith</td>
                                                        <td>
                                                            <div id="sparkline"></div>
                                                        </td>
                                                        <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                               title="Edit">
                                                                <i class="fa fa-check"></i></a>
                                                            <a href="javascript:void(0)" class="text-inverse" title="Delete"
                                                               data-toggle="tooltip">
                                                                <i class="fa fa-trash"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>12</td>
                                                        <td>Sneha Pandit</td>
                                                        <td>
                                                            <div id="sparkline1"></div>
                                                        </td>
                                                        <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                               title="Edit">
                                                                <i class="fa fa-check"></i></a>
                                                            <a href="javascript:void(0)" class="text-inverse" title="Delete"
                                                               data-toggle="tooltip">
                                                                <i class="fa fa-trash"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>45</td>
                                                        <td>Sarah Smith</td>
                                                        <td>
                                                            <div id="sparkline2"></div>
                                                        </td>
                                                        <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                               title="Edit">
                                                                <i class="fa fa-check"></i></a>
                                                            <a href="javascript:void(0)" class="text-inverse" title="Delete"
                                                               data-toggle="tooltip">
                                                                <i class="fa fa-trash"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>34</td>
                                                        <td>John Deo</td>
                                                        <td>
                                                            <div id="sparkline3"></div>
                                                        </td>
                                                        <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                               title="Edit">
                                                                <i class="fa fa-check"></i></a>
                                                            <a href="javascript:void(0)" class="text-inverse" title="Delete"
                                                               data-toggle="tooltip">
                                                                <i class="fa fa-trash"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>15</td>
                                                        <td>Jay Soni</td>
                                                        <td>
                                                            <div id="sparkline4"></div>
                                                        </td>
                                                        <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                               title="Edit">
                                                                <i class="fa fa-check"></i></a>
                                                            <a href="javascript:void(0)" class="text-inverse" title="Delete"
                                                               data-toggle="tooltip">
                                                                <i class="fa fa-trash"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Exam topper end -->
                                            
                                            
                                        </div>
                                        
                                        
                                        
                                        
                                        
                                        
                                        
					<div class="row">
						<!-- timetable start -->
                        <div class="row">

                            <!-- timetable start -->
                            <div class="col-lg-8 col-md-12 col-sm-12 col-12">
                                <div class="card card-box">
                                    <div class="card-head">
                                        <header>TIME-TABLE</header>
                                        <div class="tools">
                                            <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                                            <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
                                            <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                        </div>
                                    </div>

                                    <div  class="card-body scrollable">
                                        <div class="table-scrollable">
                                            <table   class="table table-striped table-bordered table-hover table-checkable order-column valign-middle"
                                                     id="example4">
                                                <thead>
                                                    <tr >
                                                        <th style="width: 70px" >Time</th>
                                                        <th style="width: 70px" scope="col">Year</th>
                                                        <th scope="col">Mon</th>
                                                        <th scope="col">Tue</th>
                                                        <th scope="col">Wed</th>
                                                        <th scope="col">Thu</th>
                                                        <th scope="col">Fri</th>
                                                        <th scope="col">Sat</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="odd gradeX">

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <th rowspan="4" scope="row">9-10</th>

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>1st Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>2nd Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>3rd Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>


                                                    <tr class="odd gradeX">

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <th rowspan="4" scope="row">10-11</th>

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>First Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>Second Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>Third Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>

                                                    <tr class="odd gradeX">

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <th rowspan="4" scope="row">11-12</th>

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>First Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>Second Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>Third Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>

                                                    <tr class="odd gradeX">

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <th rowspan="4" scope="row">12-1</th>

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>First Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>Second Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>Third Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>

                                                    <tr class="odd gradeX">

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td rowspan="4" scope="row">1:30-2:30</td>

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>First Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>Second Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>Third Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>

                                                    <tr class="odd gradeX">

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <th rowspan="4" scope="row">2:30-3:30</th>

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>First Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>Second Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>Third Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>

                                                    <tr class="odd gradeX">

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <th rowspan="4" scope="row">3:30-4:30</th>

                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>First Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>Second Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>
                                                    <tr class="odd gradeX">
                                                        <td>Third Year</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                        <td>Subject</td>
                                                    </tr>


                                                </tbody>
                                            </table>
                                        </div>
                                    </div>




                                </div>
                            </div>
                            <!-- timetable end -->
                            <!-- Staff start -->
                            <div class="col-lg-4 col-md-12 col-sm-12 col-12">
                                <div class="card card-box">
                                    <div class="card-head">
                                        <header>Professors List</header>
                                    </div>
                                    <div class="card-body ">
                                        <div class="row">
                                            <ul class="docListWindow small-slimscroll-style">
                                                <li>
                                                    <div class="prog-avatar">
                                                        <img src="assets/img/prof/prof1.jpg" alt="" width="40"
                                                             height="40">
                                                    </div>
                                                    <div class="details">
                                                        <div class="title">
                                                            <a href="#">Rajesh</a> -(M.Com, PHD)
                                                        </div>
                                                        <div>
                                                            <span class="clsAvailable">Available</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="prog-avatar">
                                                        <img src="assets/img/prof/prof2.jpg" alt="" width="40"
                                                             height="40">
                                                    </div>
                                                    <div class="details">
                                                        <div class="title">
                                                            <a href="#">Sarah Smith</a> -(M.A., B.Ed)
                                                        </div>
                                                        <div>
                                                            <span class="clsAvailable">Available</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="prog-avatar">
                                                        <img src="assets/img/prof/prof3.jpg" alt="" width="40"
                                                             height="40">
                                                    </div>
                                                    <div class="details">
                                                        <div class="title">
                                                            <a href="#">John Deo</a> - (B.C.A., M.C.A.)
                                                        </div>
                                                        <div>
                                                            <span class="clsNotAvailable">Not Available</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="prog-avatar">
                                                        <img src="assets/img/prof/prof4.jpg" alt="" width="40"
                                                             height="40">
                                                    </div>
                                                    <div class="details">
                                                        <div class="title">
                                                            <a href="#">Jay Soni</a> - (B.E., M.E.)
                                                        </div>
                                                        <div>
                                                            <span class="clsOnLeave">On Leave</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="prog-avatar">
                                                        <img src="assets/img/prof/prof5.jpg" alt="" width="40"
                                                             height="40">
                                                    </div>
                                                    <div class="details">
                                                        <div class="title">
                                                            <a href="#">Jacob Ryan</a> - (M.Phil)
                                                        </div>
                                                        <div>
                                                            <span class="clsNotAvailable">Not Available</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="prog-avatar">
                                                        <img src="assets/img/prof/prof6.jpg" alt="" width="40"
                                                             height="40">
                                                    </div>
                                                    <div class="details">
                                                        <div class="title">
                                                            <a href="#">Megha Trivedi</a> - (M.S.W, PHD)
                                                        </div>
                                                        <div>
                                                            <span class="clsAvailable">Available</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="prog-avatar">
                                                        <img src="assets/img/prof/prof2.jpg" alt="" width="40"
                                                             height="40">
                                                    </div>
                                                    <div class="details">
                                                        <div class="title">
                                                            <a href="#">Sarah Smith</a> -(B.S.C, M.S.C.)
                                                        </div>
                                                        <div>
                                                            <span class="clsAvailable">Available</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="prog-avatar">
                                                        <img src="assets/img/prof/prof3.jpg" alt="" width="40"
                                                             height="40">
                                                    </div>
                                                    <div class="details">
                                                        <div class="title">
                                                            <a href="#">John Deo</a> - (B.E., M.E.)
                                                        </div>
                                                        <div>
                                                            <span class="clsNotAvailable">Not Available</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="prog-avatar">
                                                        <img src="assets/img/prof/prof4.jpg" alt="" width="40"
                                                             height="40">
                                                    </div>
                                                    <div class="details">
                                                        <div class="title">
                                                            <a href="#">Jay Soni</a> - (B.C.A., M.C.A.)
                                                        </div>
                                                        <div>
                                                            <span class="clsOnLeave">On Leave</span>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="full-width text-center p-t-10">
                                                <a href="#" class="btn purple btn-outline btn-circle margin-0">View All</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Staff end -->
                        </div>
                            <!-- timetable end -->
						
					</div>
					<!-- start new student list -->
					<div class="row">
						
                                            <div class="col-lg-4 col-md-12 col-sm-12 col-12">
							<div class="card  card-box">
								<div class="card-head">
									<header>Notifications</header>
									<div class="tools">
										<a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
										<a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
										<a class="t-close btn-color fa fa-times" href="javascript:;"></a>
									</div>
								</div>
								<div class="card-body no-padding height-9">
									<div class="row">
										<div class="noti-information notification-menu">
											<div class="notification-list mail-list not-list small-slimscroll-style">
												<a href="javascript:;" class="single-mail"> <span
														class="icon bg-primary"> <i class="fa fa-user-o"></i>
													</span> <span class="text-purple">Abhay Jani</span> Added you as
													friend
													<span class="notificationtime">
														<small>Just Now</small>
													</span>
												</a>
												<a href="javascript:;" class="single-mail"> <span
														class="icon blue-bgcolor"> <i class="fa fa-envelope-o"></i>
													</span> <span class="text-purple">John Doe</span> send you a mail
													<span class="notificationtime">
														<small>Just Now</small>
													</span>
												</a>
												<a href="javascript:;" class="single-mail"> <span
														class="icon bg-success"> <i class="fa fa-check-square-o"></i>
													</span> Success Message
													<span class="notificationtime">
														<small> 2 Days Ago</small>
													</span>
												</a>
												<a href="javascript:;" class="single-mail"> <span
														class="icon bg-warning"> <i class="fa fa-warning"></i>
													</span> <strong>Database Overloaded Warning!</strong>
													<span class="notificationtime">
														<small>1 Week Ago</small>
													</span>
												</a>
												<a href="javascript:;" class="single-mail"> <span
														class="icon bg-primary"> <i class="fa fa-user-o"></i>
													</span> <span class="text-purple">Abhay Jani</span> Added you as
													friend
													<span class="notificationtime">
														<small>Just Now</small>
													</span>
												</a>
												<a href="javascript:;" class="single-mail"> <span
														class="icon blue-bgcolor"> <i class="fa fa-envelope-o"></i>
													</span> <span class="text-purple">John Doe</span> send you a mail
													<span class="notificationtime">
														<small>Just Now</small>
													</span>
												</a>
												<a href="javascript:;" class="single-mail"> <span
														class="icon bg-success"> <i class="fa fa-check-square-o"></i>
													</span> Success Message
													<span class="notificationtime">
														<small> 2 Days Ago</small>
													</span>
												</a>
												<a href="javascript:;" class="single-mail"> <span
														class="icon bg-warning"> <i class="fa fa-warning"></i>
													</span> <strong>Database Overloaded Warning!</strong>
													<span class="notificationtime">
														<small>1 Week Ago</small>
													</span>
												</a>
												<a href="javascript:;" class="single-mail"> <span
														class="icon bg-danger"> <i class="fa fa-times"></i>
													</span> <strong>Server Error!</strong>
													<span class="notificationtime">
														<small>10 Days Ago</small>
													</span>
												</a>
											</div>
											<div class="full-width text-center p-t-10">
												<button type="button"
													class="btn purple btn-outline btn-circle margin-0">View All</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
                                        <!-- ToDo list start -->
                            <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="card-box">
                                    <div class="card-head">
                                        <header>Todo List</header>
                                        <button id="panel-button"
                                                class="mdl-button mdl-js-button mdl-button--icon pull-right"
                                                data-upgraded=",MaterialButton">
                                            <i class="material-icons">more_vert</i>
                                        </button>
                                        <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
                                            data-mdl-for="panel-button">
                                            <li class="mdl-menu__item"><i class="material-icons">assistant_photo</i>Action
                                            </li>
                                            <li class="mdl-menu__item"><i class="material-icons">print</i>Another action
                                            </li>
                                            <li class="mdl-menu__item"><i class="material-icons">favorite</i>Something else
                                                here</li>
                                        </ul>
                                    </div>
                                    <div class="card-body ">
                                        <ul class="to-do-list ui-sortable" id="sortable-todo">
                                            <li class="clearfix">
                                                <div class="todo-check pull-left">
                                                    <input type="checkbox" value="None" id="todo-check1">
                                                    <label for="todo-check1"></label>
                                                </div>
                                                <p class="todo-title">Add fees details in system
                                                </p>
                                                <div class="todo-actionlist pull-right clearfix">
                                                    <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                                </div>
                                            </li>
                                            <li class="clearfix">
                                                <div class="todo-check pull-left">
                                                    <input type="checkbox" value="None" id="todo-check2">
                                                    <label for="todo-check2"></label>
                                                </div>
                                                <p class="todo-title">Announcement for holiday
                                                </p>
                                                <div class="todo-actionlist pull-right clearfix">
                                                    <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                                </div>
                                            </li>
                                            <li class="clearfix">
                                                <div class="todo-check pull-left">
                                                    <input type="checkbox" value="None" id="todo-check3">
                                                    <label for="todo-check3"></label>
                                                </div>
                                                <p class="todo-title">call bus driver</p>
                                                <div class="todo-actionlist pull-right clearfix">
                                                    <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                                </div>
                                            </li>
                                            <li class="clearfix">
                                                <div class="todo-check pull-left">
                                                    <input type="checkbox" value="None" id="todo-check4">
                                                    <label for="todo-check4"></label>
                                                </div>
                                                <p class="todo-title">School picnic</p>
                                                <div class="todo-actionlist pull-right clearfix">
                                                    <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                                </div>
                                            </li>
                                            <li class="clearfix">
                                                <div class="todo-check pull-left">
                                                    <input type="checkbox" value="None" id="todo-check5">
                                                    <label for="todo-check5"></label>
                                                </div>
                                                <p class="todo-title">Exam time table generate
                                                </p>
                                                <div class="todo-actionlist pull-right clearfix">
                                                    <a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- ToDo list end -->     
                                            
					</div>
					<!-- end new student list -->
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
	<!-- owl carousel -->
        <script src="assets/plugins/owl-carousel/owl.carousel.js"></script>
        <script src="assets/js/pages/owl-carousel/owl_data.js"></script>
        
        <!-- Common js-->
	<script src="assets/js/app.js"></script>
	<script src="assets/js/layout.js"></script>
	<script src="assets/js/theme-color.js"></script>
	<!-- material -->
	<script src="assets/plugins/material/material.min.js"></script>
	<!-- chart js -->
	<script src="assets/plugins/chart-js/Chart.bundle.js"></script>
	<script src="assets/plugins/chart-js/utils.js"></script>
        <script src="assets/js/pages/chart/chartjs/subject-chart.js"></script>
	<script src="assets/plugins/sparkline/jquery.sparkline.js"></script>
	<script src="assets/js/pages/sparkline/sparkline-data.js"></script>
	<!-- end js include path -->
</body>


</html>