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
                                    <div class="page-title">All Students List</div>
                                </div>
                                <ol class="breadcrumb page-breadcrumb pull-right">
                                    <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
                                                                           href="<%=session.getAttribute("page")%>.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    </li>
                                    <li><a class="parent-item" href="#">Students</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    </li>
                                    <li class="active">All Students List</li>
                                </ol>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="tabbable-line">
                                    <ul class="nav customtab nav-tabs" role="tablist">
                                        <li class="nav-item"><a href="#tab1" class="nav-link active" data-toggle="tab">List
                                                View</a></li>
                                        <li class="nav-item"><a href="#tab2" class="nav-link" data-toggle="tab">Grid
                                                View</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active fontawesome-demo" id="tab1">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="card card-box">
                                                        <div class="card-head">
                                                            <header>All Students List</header>
                                                            <div class="tools">
                                                                <a class="fa fa-repeat btn-color box-refresh"
                                                                   href="javascript:;"></a>
                                                                <a class="t-collapse btn-color fa fa-chevron-down"
                                                                   href="javascript:;"></a>
                                                                <a class="t-close btn-color fa fa-times"
                                                                   href="javascript:;"></a>
                                                            </div>
                                                        </div>
                                                        <div class="card-body ">
                                                            <div class="row">
                                                                <div class="col-md-6 col-sm-6 col-6">
                                                                    <div class="btn-group">
                                                                        <a href="add_professor.jsp" id="addRow"
                                                                           class="btn btn-info">
                                                                            Add New <i class="fa fa-plus"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 col-sm-6 col-6">
                                                                    <div class="btn-group pull-right">
                                                                        <a class="btn deepPink-bgcolor  btn-outline dropdown-toggle"
                                                                           data-toggle="dropdown">Tools
                                                                            <i class="fa fa-angle-down"></i>
                                                                        </a>
                                                                        <ul class="dropdown-menu pull-right">
                                                                            <li>
                                                                                <a href="javascript:;">
                                                                                    <i class="fa fa-print"></i> Print </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="javascript:;">
                                                                                    <i class="fa fa-file-pdf-o"></i> Save as
                                                                                    PDF </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="javascript:;">
                                                                                    <i class="fa fa-file-excel-o"></i>
                                                                                    Export to Excel </a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="table-scrollable">
                                                                <table
                                                                    class="table table-striped table-bordered table-hover table-checkable order-column valign-middle"
                                                                    id="example4">
                                                                    <thead>
                                                                        <tr>
                                                                            <th></th>
                                                                            <th> Enrollment No </th>
                                                                            <th> Full Name </th>
                                                                            <th> Code </th>
                                                                            <th> Mobile NO </th>
                                                                            <th> Email </th>
                                                                            <th>Parent Name</th>
                                                                            <th>Parent PhNo</th>
                                                                            <th> Action </th>
                                                                        </tr>
                                                                    </thead>





                                                                    <%
                                                                        Connection con = SmartApnDB.conectdb();
                                                                        Statement st = null;
                                                                        try {
                                                                            String sql = "select * from student";
                                                                            st = con.createStatement();
                                                                            ResultSet rs = st.executeQuery(sql);
                                                                            while (rs.next()) {
                                                                    %>
                                                                    <tbody>
                                                                        <tr class="odd gradeX">
                                                                            <td class="patient-img">
                                                                                <img src="assets/img/std/std1.jpg"
                                                                                     alt="">
                                                                            </td>
                                                                            <td class="left"><%= rs.getString("enroll_no")%></td>
                                                                            <td><%= rs.getString("first_name")%></td>
                                                                            <td class="left"><%= rs.getString("department")%></td>
                                                                            <td><a href="tel:4444565756">
                                                                                    <%= rs.getString("mobile_no")%> </a></td>
                                                                            <td><a href="mailto:shuxer@gmail.com">
                                                                                    <%= rs.getString("email")%> </a></td>
                                                                            <td class="left"><%= rs.getString("parent_name")%></td>
                                                                            <td class="left"><%= rs.getString("parent_no")%></td>
                                                                            <td>
                                                                                <a href="edit_student.jsp?id=<%= rs.getInt("id") %>">EDIT</a>
                                                                                <a href="student_profile.jsp?id=<%= rs.getInt("id") %>">VIEW</a>
                                                                                <a href="StudentController?action=delete&id=<%= rs.getInt("id")%>">DELETE</a>
                                                                               
                                                                            </td>
                                                                        </tr>

                                                                    </tbody>






                                                                    <%
                                                                            }
                                                                        } catch (Exception e) {
                                                                            System.out.println(e.getMessage());
                                                                        }
                                                                    %>


                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="tab2">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="card card-box">
                                                        <div class="card-body no-padding ">
                                                            <div class="doctor-profile">
                                                                <img src="assets/img/std/std10.jpg" class="doctor-pic"
                                                                     alt="">
                                                                <div class="profile-usertitle">
                                                                    <div class="doctor-name">Pooja Patel </div>
                                                                    <div class="name-center"> Science </div>
                                                                </div>
                                                                <p>A-103, shyam gokul flats, Mahatma Road <br />Mumbai</p>
                                                                <div>
                                                                    <p><i class="fa fa-phone"></i><a
                                                                            href="tel:(123)456-7890"> (123)456-7890</a></p>
                                                                </div>
                                                                <div class="profile-userbuttons">
                                                                    <a href="professor_profile.jsp"
                                                                       class="btn btn-circle deepPink-bgcolor btn-sm">Read
                                                                        More</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="card card-box">
                                                        <div class="card-body no-padding ">
                                                            <div class="doctor-profile">
                                                                <img src="assets/img/std/std1.jpg" class="doctor-pic"
                                                                     alt="">
                                                                <div class="profile-usertitle">
                                                                    <div class="doctor-name">Rajesh </div>
                                                                    <div class="name-center"> Mathematics </div>
                                                                </div>
                                                                <p>45, Krishna Tower, Near Bus Stop, Satellite, <br />Mumbai
                                                                </p>
                                                                <div>
                                                                    <p><i class="fa fa-phone"></i><a
                                                                            href="tel:(123)456-7890"> (123)456-7890</a></p>
                                                                </div>
                                                                <div class="profile-userbuttons">
                                                                    <a href="professor_profile.jsp"
                                                                       class="btn btn-circle deepPink-bgcolor btn-sm">Read
                                                                        More</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="card card-box">
                                                        <div class="card-body no-padding ">
                                                            <div class="doctor-profile">
                                                                <img src="assets/img/std/std2.jpg" class="doctor-pic"
                                                                     alt="">
                                                                <div class="profile-usertitle">
                                                                    <div class="doctor-name">Sarah Smith </div>
                                                                    <div class="name-center"> Commerce </div>
                                                                </div>
                                                                <p>456, Estern evenue, Courtage area, <br />New York</p>
                                                                <div>
                                                                    <p><i class="fa fa-phone"></i><a
                                                                            href="tel:(123)456-7890"> (123)456-7890</a></p>
                                                                </div>
                                                                <div class="profile-userbuttons">
                                                                    <a href="professor_profile.jsp"
                                                                       class="btn btn-circle deepPink-bgcolor btn-sm">Read
                                                                        More</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="card card-box">
                                                        <div class="card-body no-padding ">
                                                            <div class="doctor-profile">
                                                                <img src="assets/img/std/std3.jpg" class="doctor-pic"
                                                                     alt="">
                                                                <div class="profile-usertitle">
                                                                    <div class="doctor-name">John Deo </div>
                                                                    <div class="name-center"> Arts </div>
                                                                </div>
                                                                <p>A-103, shyam gokul flats, Mahatma Road <br />Mumbai</p>
                                                                <div>
                                                                    <p><i class="fa fa-phone"></i><a
                                                                            href="tel:(123)456-7890"> (123)456-7890</a></p>
                                                                </div>
                                                                <div class="profile-userbuttons">
                                                                    <a href="professor_profile.jsp"
                                                                       class="btn btn-circle deepPink-bgcolor btn-sm">Read
                                                                        More</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="card card-box">
                                                        <div class="card-body no-padding ">
                                                            <div class="doctor-profile">
                                                                <img src="assets/img/std/std4.jpg" class="doctor-pic"
                                                                     alt="">
                                                                <div class="profile-usertitle">
                                                                    <div class="doctor-name">Jay Soni </div>
                                                                    <div class="name-center"> M.B.A. </div>
                                                                </div>
                                                                <p>45, Krishna Tower, Near Bus Stop, Satellite, <br />Mumbai
                                                                </p>
                                                                <div>
                                                                    <p><i class="fa fa-phone"></i><a
                                                                            href="tel:(123)456-7890"> (123)456-7890</a></p>
                                                                </div>
                                                                <div class="profile-userbuttons">
                                                                    <a href="professor_profile.jsp"
                                                                       class="btn btn-circle deepPink-bgcolor btn-sm">Read
                                                                        More</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="card card-box">
                                                        <div class="card-body no-padding ">
                                                            <div class="doctor-profile">
                                                                <img src="assets/img/std/std5.jpg" class="doctor-pic"
                                                                     alt="">
                                                                <div class="profile-usertitle">
                                                                    <div class="doctor-name">Jacob Ryan </div>
                                                                    <div class="name-center"> Urology </div>
                                                                </div>
                                                                <p>456, Estern evenue, Courtage area, <br />New York</p>
                                                                <div>
                                                                    <p><i class="fa fa-phone"></i><a
                                                                            href="tel:(123)456-7890"> (123)456-7890</a></p>
                                                                </div>
                                                                <div class="profile-userbuttons">
                                                                    <a href="professor_profile.jsp"
                                                                       class="btn btn-circle deepPink-bgcolor btn-sm">Read
                                                                        More</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="card card-box">
                                                        <div class="card-body no-padding ">
                                                            <div class="doctor-profile">
                                                                <img src="assets/img/std/std6.jpg" class="doctor-pic"
                                                                     alt="">
                                                                <div class="profile-usertitle">
                                                                    <div class="doctor-name">Megha Trivedi </div>
                                                                    <div class="name-center"> Electrical </div>
                                                                </div>
                                                                <p>A-103, shyam gokul flats, Mahatma Road <br />Mumbai</p>
                                                                <div>
                                                                    <p><i class="fa fa-phone"></i><a
                                                                            href="tel:(123)456-7890"> (123)456-7890</a></p>
                                                                </div>
                                                                <div class="profile-userbuttons">
                                                                    <a href="professor_profile.jsp"
                                                                       class="btn btn-circle deepPink-bgcolor btn-sm">Read
                                                                        More</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="card card-box">
                                                        <div class="card-body no-padding ">
                                                            <div class="doctor-profile">
                                                                <img src="assets/img/std/std1.jpg" class="doctor-pic"
                                                                     alt="">
                                                                <div class="profile-usertitle">
                                                                    <div class="doctor-name">Rajesh </div>
                                                                    <div class="name-center"> Mathematics </div>
                                                                </div>
                                                                <p>45, Krishna Tower, Near Bus Stop, Satellite, <br />Mumbai
                                                                </p>
                                                                <div>
                                                                    <p><i class="fa fa-phone"></i><a
                                                                            href="tel:(123)456-7890"> (123)456-7890</a></p>
                                                                </div>
                                                                <div class="profile-userbuttons">
                                                                    <a href="professor_profile.jsp"
                                                                       class="btn btn-circle deepPink-bgcolor btn-sm">Read
                                                                        More</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="card card-box">
                                                        <div class="card-body no-padding ">
                                                            <div class="doctor-profile">
                                                                <img src="assets/img/std/std2.jpg" class="doctor-pic"
                                                                     alt="">
                                                                <div class="profile-usertitle">
                                                                    <div class="doctor-name">Sarah Smith </div>
                                                                    <div class="name-center"> Commerce </div>
                                                                </div>
                                                                <p>456, Estern evenue, Courtage area, <br />New York</p>
                                                                <div>
                                                                    <p><i class="fa fa-phone"></i><a
                                                                            href="tel:(123)456-7890"> (123)456-7890</a></p>
                                                                </div>
                                                                <div class="profile-userbuttons">
                                                                    <a href="professor_profile.jsp"
                                                                       class="btn btn-circle deepPink-bgcolor btn-sm">Read
                                                                        More</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="card card-box">
                                                        <div class="card-body no-padding ">
                                                            <div class="doctor-profile">
                                                                <img src="assets/img/std/std10.jpg" class="doctor-pic"
                                                                     alt="">
                                                                <div class="profile-usertitle">
                                                                    <div class="doctor-name">Pooja Patel </div>
                                                                    <div class="name-center"> Science </div>
                                                                </div>
                                                                <p>A-103, shyam gokul flats, Mahatma Road <br />Mumbai</p>
                                                                <div>
                                                                    <p><i class="fa fa-phone"></i><a
                                                                            href="tel:(123)456-7890"> (123)456-7890</a></p>
                                                                </div>
                                                                <div class="profile-userbuttons">
                                                                    <a href="professor_profile.jsp"
                                                                       class="btn btn-circle deepPink-bgcolor btn-sm">Read
                                                                        More</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="card card-box">
                                                        <div class="card-body no-padding ">
                                                            <div class="doctor-profile">
                                                                <img src="assets/img/std/std1.jpg" class="doctor-pic"
                                                                     alt="">
                                                                <div class="profile-usertitle">
                                                                    <div class="doctor-name">Rajesh </div>
                                                                    <div class="name-center"> Mathematics </div>
                                                                </div>
                                                                <p>45, Krishna Tower, Near Bus Stop, Satellite, <br />Mumbai
                                                                </p>
                                                                <div>
                                                                    <p><i class="fa fa-phone"></i><a
                                                                            href="tel:(123)456-7890"> (123)456-7890</a></p>
                                                                </div>
                                                                <div class="profile-userbuttons">
                                                                    <a href="professor_profile.jsp"
                                                                       class="btn btn-circle deepPink-bgcolor btn-sm">Read
                                                                        More</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="card card-box">
                                                        <div class="card-body no-padding ">
                                                            <div class="doctor-profile">
                                                                <img src="assets/img/std/std3.jpg" class="doctor-pic"
                                                                     alt="">
                                                                <div class="profile-usertitle">
                                                                    <div class="doctor-name">John Deo </div>
                                                                    <div class="name-center"> Arts </div>
                                                                </div>
                                                                <p>A-103, shyam gokul flats, Mahatma Road <br />Mumbai</p>
                                                                <div>
                                                                    <p><i class="fa fa-phone"></i><a
                                                                            href="tel:(123)456-7890"> (123)456-7890</a></p>
                                                                </div>
                                                                <div class="profile-userbuttons">
                                                                    <a href="professor_profile.jsp"
                                                                       class="btn btn-circle deepPink-bgcolor btn-sm">Read
                                                                        More</a>
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
