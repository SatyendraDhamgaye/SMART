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
	<!-- data tables -->
	<link href="assets/plugins/datatables/plugins/bootstrap/dataTables.bootstrap4.min.css" rel="stylesheet"
		type="text/css" />
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
								<div class="page-title">Library Assets</div>
							</div>
							<ol class="breadcrumb page-breadcrumb pull-right">
								<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
										href="<%=session.getAttribute("page")%>.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
								</li>
								<li><a class="parent-item" href="#">Library</a>&nbsp;<i class="fa fa-angle-right"></i>
								</li>
								<li class="active">Library Assets</li>
							</ol>
						</div>
					</div>
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
                                           <div
											class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select getmdl-select__fix-height txt-full-width">
                                                                                    <input class="mdl-textfield__input" type="text" name="txtDept" value="" id="list2">
											<label for="list2" class="pull-right margin-0">
												<i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
											</label>
											<label for="list2" class="mdl-textfield__label">Department</label>
											<ul data-mdl-for="list2" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
												<li class="mdl-menu__item" data-val="Monday">Monday</li>
												<li class="mdl-menu__item" data-val="Tuesday">Tuesday</li>
												<li class="mdl-menu__item" data-val="Wednesday">Wednesday</li>
												<li class="mdl-menu__item" data-val="Thursday">Thursday</li>
												<li class="mdl-menu__item" data-val="Friday">Friday</li>
												<li class="mdl-menu__item" data-val="Saturday">Saturday</li>
											</ul>
										</div>
                                            
                                            <div
											class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
											<input class="mdl-textfield__input" type="text" name="txtStartFrom">
											<label class="mdl-textfield__label">Time</label>
										</div>
                                            
                                            <div
											class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
											<input class="mdl-textfield__input" type="text" name="txtStartFrom">
											<label class="mdl-textfield__label">Subject Number</label>
										</div>
                                            
                                            <div
											class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
											<input class="mdl-textfield__input" type="text" name="txtStartFrom">
											<label class="mdl-textfield__label">Staff ID</label>
										</div>
                                            <div class="full-width text-center p-t-10">
                                             <input type="submit"
                                                                                        class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 m-r-20 btn-pink" value="Submit">
										
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Staff end -->
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
	<!-- data tables -->
	<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="assets/plugins/datatables/plugins/bootstrap/dataTables.bootstrap4.min.js"></script>
	<script src="assets/js/pages/table/table_data.js"></script>
	<!-- Common js-->
	<script src="assets/js/app.js"></script>
	<script src="assets/js/layout.js"></script>
	<script src="assets/js/theme-color.js"></script>
	<!-- Material -->
	<script src="assets/plugins/material/material.min.js"></script>
	<!-- end js include path -->
</body>


</html>