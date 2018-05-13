<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  
    <div class="jumbotron">
        <h1 class="text-center" style="color:#002a59;margin-bottom:20px;">Student Management System</h1>
        <%if (Session["uname"] == null)
            { %>
                <p><a href="MyRegister.aspx" class="col-md-4 col-md-offset-4 btn btn-primary btn-lg">Register &raquo;</a></p>
        <%} %>
    </div>

    <div class="row">
        
        <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Administrator
                        </div>
                        <div class="panel-body">
                             <ol>
                               <li>Only For Admin</li>
                               <li>Can Add Departments</li>
                               <li>Can Add Courses</li>
                               <li>Can Add Teacher Accounts</li>
                            </ol>
                        </div>
                        <div class="panel-footer">
                            Admin Section
                        </div>
                    </div>
                </div>
        <div class="col-lg-4">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            Teacher
                        </div>
                        <div class="panel-body">
                             <ol>
                               <li>Can View account Details</li>
                               <li>Can View its Courses</li>
                               <li>Can Add Exams</li>
                               <li>Can Add MCQ Questions to Exams</li>
                           </ol>
                        </div>
                        <div class="panel-footer">
                            Teacher Section
                        </div>
                    </div>
                </div>
           
        <div class="col-lg-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Student
                        </div>
                        <div class="panel-body">
                             <ol>
                               <li>Can View account Details</li>
                               <li>Can View its registered Courses</li>
                               <li>Can Register to Courses</li>
                               <li>Can Attemt An MCQ Test</li>
                           </ol>
                        </div>
                        <div class="panel-footer">
                            Student Section
                        </div>
                    </div>
                </div>
    </div>

    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-clock-o fa-fw"></i> ABOUT STUDENT MANAGEMENT SYSTEM
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <ul class="timeline">
                                <li>
                                    <div class="timeline-badge"><i class="fa fa-check"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Brief about SMS</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>SMS is a management information system for education establishments to manage student data. Student information systems provide capabilities for registering students in courses; documenting grading, transcripts, results of student tests and other assessment scores; building student schedules; tracking student attendance; and managing many other student-related data needs in a school.</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="timeline-inverted">
                                    <div class="timeline-badge warning"><i class="fa fa-credit-card"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Function of SMS</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>These systems vary in size, scope and capability, from packages that are implemented in relatively small organizations to cover student records alone, to enterprise-wide solutions such as SMS which aim to cover most aspects of running large multi-campus organizations and their online schools with significant local responsibility. Many systems can be scaled to different levels of functionality by purchasing add-on "modules" and can typically be configured by their home institutions to meet local needs.</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="timeline-badge danger"><i class="fa fa-bomb"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Advantages</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Student Management System is extremely important online Student Management System which has many advantages to your Institute.</p>
                                            <ol>
                                                <li>Manage multiple departments from a single computer.</li>
                                                <li>Total computerized system</li>
                                                <li>Effective use of time</li>
                                                <li>Cost effective</li>
                                                <li>Charges are one time only</li>
                                                <li>Anywhere, anytime on Internet with Automatic Synchronization.</li>
                                                <li>Highly customizable according to your requirements</li>
                                            </ol>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- /.panel-body -->
                    </div>
</asp:Content>
