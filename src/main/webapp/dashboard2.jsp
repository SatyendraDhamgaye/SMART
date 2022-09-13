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
        <link href="assets/plugins/summernote/summernote.css" rel="stylesheet">
        <!-- morris chart -->
        <link href="assets/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
        <!-- Material Design Lite CSS -->
        <link rel="stylesheet" href="assets/plugins/material/material.min.css">
        <link rel="stylesheet" href="assets/css/material_style.css">
        <!-- inbox style -->
        <link href="assets/css/pages/inbox.min.css" rel="stylesheet" type="text/css" />
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
                                    <li><i class="fa fa-home"></i>&nbsp;
                                        <a class="parent-item" href="<%=session.getAttribute("page")%>.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    </li>
                                    <li class="active">Dashboard</li>
                                </ol>
                            </div>
                        </div>
                        <!-- start widget -->

                        <div class="state-overview">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="overview-panel purple">
                                        <div class="symbol">
                                            <i class="fa fa-users usr-clr"></i>
                                        </div>
                                        <div class="value white">
                                            <p class="sbold addr-font-h1" data-counter="counterup" data-value="23">0</p>
                                            <p>TOTAL STUDENTS</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <div class="overview-panel deepPink-bgcolor">
                                        <div class="symbol">
                                            <i class="fa fa-user"></i>
                                        </div>
                                        <div class="value white">
                                            <p class="sbold addr-font-h1" data-counter="counterup" data-value="48">0</p>
                                            <p>TOTAL STAFFS</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <div class="overview-panel orange">
                                        <div class="symbol">
                                            <i class="fa fa-arrow-up"></i>
                                        </div>
                                        <div class="value white">
                                            <p class="sbold addr-font-h1" data-counter="counterup" data-value="14">0</p>
                                            <p>PERFORMANCE</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-sm-6">
                                    <div class="overview-panel blue-bgcolor">
                                        <div class="symbol">
                                            <i class="fa fa-"></i>
                                        </div>
                                        <div class="value white">
                                            <p class="sbold addr-font-h1" data-counter="counterup" data-value="3421">0</p>
                                            
                                            <p>WORKING LOAD</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="card card-box">
                                    <div class="card-head">
                                        <header>Student Pass / Fail Records</header>
                                        <div class="tools">
                                            <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                                            <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
                                            <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                        </div>
                                    </div>
                                    <div class="card-body no-padding height-9">
                                        <div class="row">
                                            <canvas id="dept-bar" height="150"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>




                            <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="card card-topline-lightblue">
                                    <div class="card-head">
                                        <header>NO OF STUDENTS</header>
                                        <div class="tools">
                                            <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                                            <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
                                            <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                        </div>
                                    </div>
                                    <div class="card-body " id="chartjs_doughnut_parent">
                                        <div class="row">
                                            <canvas id="dept-doughnut" height="150"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!-- end widget -->
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

                        <div class="row">
                            <!-- Quick Mail start -->
                            <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="card-box">
                                    <div class="card-head">
                                        <header>Quick Mail</header>
                                        <button id="demo_menu-lower-right"
                                                class="mdl-button mdl-js-button mdl-button--icon pull-right"
                                                data-upgraded=",MaterialButton">
                                            <i class="material-icons">more_vert</i>
                                        </button>
                                        <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
                                            data-mdl-for="demo_menu-lower-right">
                                            <li class="mdl-menu__item"><i class="material-icons">assistant_photo</i>Action
                                            </li>
                                            <li class="mdl-menu__item"><i class="material-icons">print</i>Another action
                                            </li>
                                            <li class="mdl-menu__item"><i class="material-icons">favorite</i>Something else
                                                here</li>
                                        </ul>
                                    </div>
                                    <div class="card-body ">
                                        <div class="mail-list">
                                            <div class="compose-mail">
                                                <form method="post">
                                                    <div class="form-group">
                                                        <label for="to" class="">To:</label>
                                                        <input type="text" tabindex="1" id="to" class="form-control">
                                                        <div class="compose-options">
                                                            <a onclick="$(this).hide(); $('#cc').parent().removeClass('hidden'); $('#cc').focus();"
                                                               href="javascript:;">Cc</a>
                                                            <a onclick="$(this).hide(); $('#bcc').parent().removeClass('hidden'); $('#bcc').focus();"
                                                               href="javascript:;">Bcc</a>
                                                        </div>
                                                    </div>
                                                    <div class="form-group hidden">
                                                        <label for="cc" class="">Cc:</label>
                                                        <input type="text" tabindex="2" id="cc" class="form-control">
                                                    </div>
                                                    <div class="form-group hidden">
                                                        <label for="bcc" class="">Bcc:</label>
                                                        <input type="text" tabindex="2" id="bcc" class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="subject" class="">Subject:</label>
                                                        <input type="text" tabindex="1" id="subject" class="form-control">
                                                    </div>
                                                    <div>
                                                        <div id="summernote"></div>
                                                        <input type="file" class="default" multiple>
                                                    </div>
                                                    <!--   <div class="btn-group margin-top-20 ">
            <button class="btn btn-primary btn-sm margin-right-10"><i class="fa fa-check"></i> Send</button>
            </div> -->
                                                    <div class="box-footer clearfix">
                                                        <button type="button"
                                                                class="mdl-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-primary pull-right">Send
                                                            <i class="fa fa-paper-plane-o"></i></button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Quick Mail end -->
                            <!-- Note start -->
                            <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="card card-box">
                                    <div class="card-head">
                                        <header>NOTE</header>
                                        <div class="tools">
                                            <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                                            <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
                                            <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                        </div>
                                    </div>


                                </div>
                            </div>
                            <!-- Note end -->
                        </div>

                        <div class="row">
                            <!-- Assign task start -->
                            <div class="col-lg-8 col-md-12 col-sm-12 col-12">
                                <div class="card card-box">
                                    <div class="card-head">
                                        <header>Assign Task</header>
                                        <div class="tools">
                                            <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                                            <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
                                            <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                        </div>
                                    </div>
                                    <div class="card-body ">
                                        <div class="table-wrap">
                                            <div class="table-responsive">
                                                <table class="table display product-overview mb-30" id="support_table">
                                                    <thead>
                                                        <tr>
                                                            <th>ID</th>
                                                            <th>Name</th>
                                                            <th>Assigned To</th>
                                                            <th>Assigned by</th>
                                                            <th>Progress</th>
                                                            <th>Status</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>Preparation for cricket team</td>
                                                            <td>Kenny Josh</td>
                                                            <td>
                                                                <span class="label label-sm label-success">Done</span>
                                                            </td>
                                                            <td>
                                                                <div class="progress">
                                                                    <div class="progress-bar progress-bar-success progress-bar-striped active"
                                                                         role="progressbar" aria-valuenow="90"
                                                                         aria-valuemin="0" aria-valuemax="100"
                                                                         style="width:100%;"> <span class="sr-only">100%
                                                                            Complete</span> </div>
                                                                </div>
                                                                <td>Complete</td>
                                                            </td>
                                                        </tr>
                                                        
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ASsign task end -->
                            <!-- Notification Start -->
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
                            <!-- Notification end -->
                        </div> 

                        <div class="row">
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



                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="card  card-box">
                                    <div class="card-head">
                                        <header>Important Students</header>
                                        <div class="tools">
                                            <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                                            <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
                                            <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                        </div>
                                    </div>
                                    <div class="card-body ">
                                        <div class="table-wrap">
                                            <div class="table-responsive">
                                                <table class="table display product-overview mb-30" id="support_table">
                                                    <thead>
                                                        <tr>
                                                            <th>No</th>
                                                            <th>Enrollment no</th>
                                                            <th>Full Name</th>
                                                            <th>Email</th>
                                                            <th>Code</th>
                                                            <th>Mobile No</th>
                                                            <th>Edit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>Jens Brincker</td>
                                                            <td>Kenny Josh</td>
                                                            <td>27/05/2016</td>
                                                            <td>
                                                                <span class="label label-sm label-success">paid</span>
                                                            </td>
                                                            <td>Mechanical</td>
                                                            <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                                   title="Edit"><i class="fa fa-check"></i></a>
                                                                <a href="javascript:void(0)" class="text-inverse"
                                                                   title="Delete" data-toggle="tooltip"><i
                                                                        class="fa fa-trash"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                            <td>Mark Hay</td>
                                                            <td> Mark</td>
                                                            <td>26/05/2017</td>
                                                            <td>
                                                                <span class="label label-sm label-warning">unpaid </span>
                                                            </td>
                                                            <td>Science</td>
                                                            <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                                   title="Edit"><i class="fa fa-check"></i></a>
                                                                <a href="javascript:void(0)" class="text-inverse"
                                                                   title="Delete" data-toggle="tooltip"><i
                                                                        class="fa fa-trash"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                            <td>Anthony Davie</td>
                                                            <td>Cinnabar</td>
                                                            <td>21/05/2016</td>
                                                            <td>
                                                                <span class="label label-sm label-success ">paid</span>
                                                            </td>
                                                            <td>Commerce</td>
                                                            <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                                   title="Edit"><i class="fa fa-check"></i></a>
                                                                <a href="javascript:void(0)" class="text-inverse"
                                                                   title="Delete" data-toggle="tooltip"><i
                                                                        class="fa fa-trash"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>4</td>
                                                            <td>David Perry</td>
                                                            <td>Felix </td>
                                                            <td>20/04/2016</td>
                                                            <td>
                                                                <span class="label label-sm label-danger">unpaid</span>
                                                            </td>
                                                            <td>Mechanical</td>
                                                            <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                                   title="Edit"><i class="fa fa-check"></i></a>
                                                                <a href="javascript:void(0)" class="text-inverse"
                                                                   title="Delete" data-toggle="tooltip"><i
                                                                        class="fa fa-trash"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>5</td>
                                                            <td>Anthony Davie</td>
                                                            <td>Beryl</td>
                                                            <td>24/05/2016</td>
                                                            <td>
                                                                <span class="label label-sm label-success ">paid</span>
                                                            </td>
                                                            <td>M.B.A.</td>
                                                            <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                                   title="Edit"><i class="fa fa-check"></i></a>
                                                                <a href="javascript:void(0)" class="text-inverse"
                                                                   title="Delete" data-toggle="tooltip"><i
                                                                        class="fa fa-trash"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>6</td>
                                                            <td>Alan Gilchrist</td>
                                                            <td>Joshep</td>
                                                            <td>22/05/2016</td>
                                                            <td>
                                                                <span class="label label-sm label-warning ">unpaid</span>
                                                            </td>
                                                            <td>Science</td>
                                                            <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                                   title="Edit"><i class="fa fa-check"></i></a>
                                                                <a href="javascript:void(0)" class="text-inverse"
                                                                   title="Delete" data-toggle="tooltip"><i
                                                                        class="fa fa-trash"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>7</td>
                                                            <td>Mark Hay</td>
                                                            <td>Jayesh</td>
                                                            <td>18/06/2016</td>
                                                            <td>
                                                                <span class="label label-sm label-success ">paid</span>
                                                            </td>
                                                            <td>Commerce</td>
                                                            <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                                   title="Edit"><i class="fa fa-check"></i></a>
                                                                <a href="javascript:void(0)" class="text-inverse"
                                                                   title="Delete" data-toggle="tooltip"><i
                                                                        class="fa fa-trash"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>8</td>
                                                            <td>Sue Woodger</td>
                                                            <td>Sharma</td>
                                                            <td>17/05/2016</td>
                                                            <td>
                                                                <span class="label label-sm label-danger">unpaid</span>
                                                            </td>
                                                            <td>Mechanical</td>
                                                            <td><a href="javascript:void(0)" class="" data-toggle="tooltip"
                                                                   title="Edit"><i class="fa fa-check"></i></a>
                                                                <a href="javascript:void(0)" class="text-inverse"
                                                                   title="Delete" data-toggle="tooltip"><i
                                                                        class="fa fa-trash"></i></a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
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
        <!-- counterup -->
        <script src="assets/plugins/counterup/jquery.waypoints.min.js"></script>
        <script src="assets/plugins/counterup/jquery.counterup.min.js"></script>
        <!-- owl carousel -->
        <script src="assets/plugins/moment/moment.min.js"></script>

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

        <script src="assets/js/pages/chart/chartjs/dept-chart.js"></script>
        <script src="assets/plugins/sparkline/jquery.sparkline.js"></script>
        <script src="assets/js/pages/sparkline/sparkline-data.js"></script>
        <!-- summernote -->
        <script src="assets/plugins/summernote/summernote.js"></script>
        <script src="assets/js/pages/summernote/summernote-data.js"></script>

        <!-- end js include path -->
    </body>


</html>