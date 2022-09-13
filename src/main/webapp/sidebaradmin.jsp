<%
    String uri = null;
    String pageName = null;
    try {
        uri = request.getRequestURI();
        pageName = uri.substring(uri.lastIndexOf("/") + 1).replace(".jsp", "");
        
    } catch (Exception e) {
        System.out.println("page uri :" + e.getMessage());
    }
    //String pageName = request.getParameter("message");
  
    String name = (String) (session.getAttribute("first_name")+" "+session.getAttribute("last_name"));
%>

<div class="sidebar-container">
    <div class="sidemenu-container navbar-collapse collapse fixed-menu">
        <div id="remove-scroll" class="left-sidemenu">
            <ul class="sidemenu  page-header-fixed slimscroll-style" data-keep-expanded="false"
                data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
                <li class="sidebar-toggler-wrapper hide">
                    <div class="sidebar-toggler">
                        <span></span>
                    </div>
                </li>
                <li class="sidebar-user-panel">
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="assets/img/dp.jpg" class="img-circle user-img-circle"
                                 alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p><%=name%></p>
                            <a href="#"><i class="fa fa-circle user-online"></i><span class="txtOnline">
                                    Online</span></a>
                        </div>
                    </div>
                </li>

                
<%
                    if (session.getAttribute("page").equals("dashboard1")) {

                %>

                <li class="nav-item start <%=  (pageName.equals("dashboard2")) || (pageName.equals("dashboard3")) || (pageName.equals("dashboard1")) ? "active open" : "" %>">
                    <a href="#" class="nav-link nav-toggle">
                        <i class="material-icons">dashboard</i>
                        <span class="title">ALL TRACKING</span>
                        <span class="selected"></span>
                        <span class="arrow open"></span>
                    </a>
                    
                    <ul class="sub-menu">
                        <li class="nav-item <%=  (pageName.equals("dashboard1")) ? "active" : ""%>">
                            <a href="dashboard1-2.jsp" class="nav-link ">
                                <span class="title">Collage</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <li class="nav-item <%=  (pageName.equals("dashboard2")) ? "active" : ""%>">
                            <a href="dashboard2.jsp" class="nav-link ">
                                <span class="title">Department</span>
                            </a>
                        </li>
                        <li class="nav-item <%=  (pageName.equals("dashboard3")) ? "active" : ""%>">
                            <a href="dashboard3.jsp" class="nav-link ">
                                <span class="title">Subject</span>
                            </a>
                        </li>
                        
                    </ul>
                            </li>
                        <% } if (session.getAttribute("page").equals("dashboard2"))  { %>
                        
                        <li class="nav-item <%=  (pageName.equals("dashboard2")) ? "active" : ""%>">
                            <a href="dashboard2.jsp" class="nav-link ">
                                <span class="title">Tracking</span>
                            <i class="material-icons">dashboard</i> </a>
                            
                        <%  } if (session.getAttribute("page").equals("dashboard3")) { %>
                        
                        <li class="nav-item <%=  (pageName.equals("dashboard3")) ? "active" : ""%>">
                            <a href="dashboard3.jsp" class="nav-link ">
                                <span class="title">Tracking</span>
                            <i class="material-icons">dashboard</i> </a>
                        </li>
                        
                        <% } if (session.getAttribute("page").equals("student")) {%>
                        
                        <li class="nav-item <%=  (pageName.equals("#")) ? "active" : ""%>">
                            <a href="#.jsp" class="nav-link ">
                                <span class="title">Tracking</span>
                            <i class="material-icons">dashboard</i> </a>
                        </li>
                        
                        <% } %>
                        
                        
                        
                            
                            
                


                <li class="nav-item <%=  (pageName.equals("event")) ? "active open" : ""%>">
                    <a href="event.jsp" class="nav-link nav-toggle"> <i class="material-icons">event</i>
                        <span class="title">Event Management</span>
                        <span class="arrow open"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item <%=  (pageName.equals("events")) ? "active" : ""%>">
                            <a href="#" class="nav-link "> <span class="title">Events
                                </span>
                            </a>
                        </li>
                        <li class="nav-item <%=  (pageName.equals("timetable")) ? "active" : ""%>">
                            <a href="#" class="nav-link "> <span class="title">Timetable
                                </span>
                            </a>
                        </li>
                        <li class="nav-item <%=  (pageName.equals("exam")) ? "active" : ""%>">
                            <a href="#" class="nav-link "> <span class="title">Examination
                                </span>
                            </a>
                        </li>
                        <li class="nav-item <%=  (pageName.equals("holiday")) ? "active" : ""%>">
                            <a href="#" class="nav-link "> <span class="title">Holiday
                                </span>
                            </a>
                        </li>
                    </ul>
                </li>

                <%
                    if (session.getAttribute("page").equals("dashboard1") || session.getAttribute("page").equals("dashboard2")) {

                %>
                <li class="nav-item <%=  (pageName.equals("all_staffs")) || (pageName.equals("add_staff")) || (pageName.equals("edit_staff")) || (pageName.equals("staff_profile")) ? "active open" : ""%>">
                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">person</i>
                        <span class="title">Staff</span> <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item <%=  (pageName.equals("all_staffs")) ? "active" : ""%>">
                            <a href="all_staffs.jsp" class="nav-link "> <span class="title">All
                                    Staff</span>
                            </a>
                        </li>
                        <li class="nav-item <%=  (pageName.equals("add_staff")) ? "active" : ""%>">
                            <a href="add_staff.jsp" class="nav-link "> <span class="title">Add Staff</span>
                            </a>
                        </li>

                        <li class="nav-item <%=  (pageName.equals("edit_staff")) ? "active" : ""%>">
                            <a href="edit_staff.jsp" class="nav-link "> <span class="title">Edit
                                    Staff</span>
                            </a>
                        </li>
                        <li class="nav-item <%=  (pageName.equals("staff_profile")) ? "active" : ""%>">
                            <a href="staff_profile.jsp" class="nav-link "> <span class="title">Staff
                                    Profile</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <%  } else {%>

                <li class="nav-item <%=  (pageName.equals("all_staffs")) ? "active" : ""%>">

                    <a href="all_staffs.jsp" class="nav-link "> <span class="title">All
                            Staff</span>
                        <i class="material-icons">person</i>         
                    </a>
                </li>
                <% }%>


                <%
                    if (session.getAttribute("page").equals("dashboard1") || session.getAttribute("page").equals("dashboard2") || session.getAttribute("page").equals("dashboard3") ) {

                %>

                <li class="nav-item <%=  (pageName.equals("all_students")) || (pageName.equals("add_student")) || (pageName.equals("edit_student")) || (pageName.equals("student_profile")) ? "active open" : ""%>">
                    <a href="#" class="nav-link nav-toggle"><i class="material-icons">group</i>
                        <span class="title">Students</span><span class="arrow"></span></a>
                    <ul class="sub-menu">
                        <li class="nav-item <%=  (pageName.equals("all_students")) ? "active" : ""%>">
                            <a href="all_students.jsp" class="nav-link "> <span class="title">All
                                    Students</span>
                            </a>
                        </li>
                        <li class="nav-item <%=  (pageName.equals("add_student")) ? "active" : ""%>">
                            <a href="add_student.jsp" class="nav-link "> <span class="title">Add
                                    Student</span>
                            </a>
                        </li>

                        <li class="nav-item <%=  (pageName.equals("edit_student")) ? "active" : ""%>">
                            <a href="edit_student.jsp" class="nav-link "> <span class="title">Edit
                                    Student</span>
                            </a>
                        </li>
                        <li class="nav-item <%=  (pageName.equals("student_profile")) ? "active" : ""%>">
                            <a href="student_profile.jsp" class="nav-link "> <span class="title">About
                                    Student</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <% } else {

                %>

                <li class="nav-item <%=  (pageName.equals("all_students")) ? "active" : ""%>">
                    <a href="all_students.jsp" class="nav-link "> <span class="title">Students</span>
                        <i class="material-icons">group</i> </a>
                </li>



                <%

                    }
                %>



                <%
                    if (session.getAttribute("page").equals("dashboard1") || session.getAttribute("page").equals("dashboard2") || pageName.equals("dashboard3")) {

                %>

                <li class="nav-item <%=  (pageName.equals("all_subjects")) || (pageName.equals("add_subject")) || (pageName.equals("edit_subject")) || (pageName.equals("subject_details")) ? "active open" : ""%>">
                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">library_books</i>
                        <span class="title">Subject</span> <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item <%= (pageName.equals("all_subjects")) ? "active open" : ""%>">
                            <a href="all_subjects.jsp" class="nav-link "> <span class="title">All
                                    Subjects</span>
                            </a>
                        </li>
                        <li class="nav-item <%= (pageName.equals("add_subject")) ? "active open" : ""%>">
                            <a href="add_subject.jsp" class="nav-link "> <span class="title">Add
                                    Subject</span>
                            </a>
                        </li>

                        <li class="nav-item <%= (pageName.equals("edit_subject")) ? "active open" : ""%>">
                            <a href="edit_subject.jsp" class="nav-link "> <span class="title">Edit
                                    Subject</span>
                            </a>
                        </li>
                        <li class="nav-item <%= (pageName.equals("subject_detail")) ? "active open" : ""%>">
                            <a href="subject_details.jsp" class="nav-link "> <span class="title">About
                                    Subject</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <%  } else {
                %>

                <li class="nav-item <%= (pageName.equals("all_subjects")) ? "active open" : ""%>">
                    <a href="all_subjects.jsp" class="nav-link "> <span class="title">Subjects</span>
                        <i class="material-icons">library_books</i> </a>
                </li>


                <% } %>

                <%
                    if (session.getAttribute("page").equals("dashboard1")) {

                %>

                <li class="nav-item <%= (pageName.equals("all_course")) || (pageName.equals("add_courses")) || (pageName.equals("edit_course")) || (pageName.equals("course_details")) ? "active open" : ""%>">
                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">business</i>
                        <span class="title">Department</span> <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item <%= (pageName.equals("all_courses")) ? "active open" : ""%>">
                            <a href="all_courses.jsp" class=" "> <span class="title">All
                                    Departments</span>
                            </a>
                        </li>
                        <li class="nav-item <%= (pageName.equals("add_course")) ? "active open" : ""%>">
                            <a href="add_course.jsp" class="nav-link "> <span class="title">Add
                                    Department</span>
                            </a>
                        </li>

                        <li class="nav-item <%= (pageName.equals("edit_course")) ? "active open" : ""%>">
                            <a href="edit_course.jsp" class="nav-link "> <span class="title">Edit
                                    Department</span>
                            </a>
                        </li>
                        <li class="nav-item <%= (pageName.equals("edit_course")) ? "active open" : ""%>">
                            <a href="course_details.jsp" class="nav-link "> <span class="title">About
                                    Department</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <% } else {
                %>
                <li class="nav-item <%= (pageName.equals("all_courses")) ? "active open" : ""%>">
                    <a href="all_courses.jsp" class=" "> <span class="title">Departments</span>
                        <i class="material-icons">business</i> </a>
                </li>


                <% }%>


                <li class="nav-item <%= (pageName.equals("all_assets")) || (pageName.equals("add_library")) || (pageName.equals("edit_library")) || (pageName.equals("library_detail")) ? "active open" : ""%>">
                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">local_library</i>
                        <span class="title">Library</span> <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item">
                            <a href="all_assets.jsp" class="nav-link "> <span class="title">All Library
                                    Assets</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="add_library.jsp" class="nav-link "> <span class="title">Add Library
                                    Asset</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="edit_library.jsp" class="nav-link "> <span class="title">Edit
                                    Asset</span>
                            </a>
                        </li>
                    </ul>
                </li>



                <li class="nav-item <%= (pageName.equals("email_inbox")) ? "active open" : ""%>">
                    <a href="#" class="nav-link nav-toggle">
                        <i class="material-icons">email</i>
                        <span class="title">Email</span>
                    </a>

                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">monetization_on</i>
                        <span class="title">Fees</span> <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item">
                            <a href="#" class="nav-link "> <span class="title">Fees
                                    Collection</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link "> <span class="title">Add Fees </span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link "> <span class="title">Add
                                    Fees Bootstrap</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link "> <span class="title">Fee
                                    Receipt</span>
                            </a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
</div>