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
                                    <div class="page-title">All Courses List</div>
                                </div>
                                <ol class="breadcrumb page-breadcrumb pull-right">
                                    <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
                                                                           href="<%=session.getAttribute("page")%>.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    </li>
                                    <li><a class="parent-item" href="#">Courses</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    </li>
                                    <li class="active">All Courses List</li>
                                </ol>
                            </div>
                        </div>
                        <div class="row">
                            <div class="card-box">
                                <div class="card-head">
                                    <header>All Courses</header>
                                </div>
                                <div class="card-body ">
                                    <!-- start course list -->
                                    <div class="row">
                                    <%
                                        Connection con = SmartApnDB.conectdb();
                                        Statement st = null;
                                        try {
                                            String sql = "select * from department";
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery(sql);
                                            while (rs.next()) {
                                    %>



                                   
                                        <div class="col-lg-3 col-md-6 col-12 col-sm-6">
                                            <div class="blogThumb">
                                                <div class="thumb-center"><img class="img-responsive" alt="user"
                                                                               src="assets/img/course/course1.jpg"></div>
                                                <div class="course-box">
                                                    <h4><%= rs.getString("name")%></h4>
                                                    <div class="text-muted"><span class="m-r-10"><%= rs.getString("start_date")%></span>
                                                        <a class="course-likes m-l-10" href="#"><i
                                                                class="fa fa-heart-o"></i> 654</a>
                                                    </div>
                                                    <p><span><i class="ti-alarm-clock"></i> <%= rs.getString("dept_time_length")%></span></p>
                                                    <p><span><i class="fa fa-graduation-cap"></i><%= rs.getString("dept_time_length")%></span></p>
                                                    
                                                    
                                                    
                                                    <a href="edit_course.jsp?id=<%= rs.getInt("id") %>">Update</a>
                                                    
                                                    
                                                  <a href="course_details.jsp?id=<%= rs.getInt("id") %>">View</a>
                                                    
                                                    
                                                    
                                                   \<a href="DepartmentController?action=delete&id=<%= rs.getInt("id")%>">Delete</a>
                                                </div>
                                            </div>
                                        </div>

                                    

                                    <%
                                            }
                                        } catch (Exception e) {
                                            System.out.println(e.getMessage());
                                        }
                                    %>
                                    </div>





























































                                    <!-- End course list -->
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
