<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
	<%@ page language="java" import="com.tool.bean.LoginBean"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="Smarthr - Bootstrap Admin Template">
    <meta name="keywords"
        content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
    <meta name="author" content="Dreamguys - Bootstrap Admin Template">
    <meta name="robots" content="noindex, nofollow">
    <title>IA Accelerator</title>

    <!-- Favicon -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">

    <!-- Lineawesome CSS -->
    <link rel="stylesheet" href="assets/css/line-awesome.min.css">

    <!-- Chart CSS -->
    <link rel="stylesheet" href="assets/plugins/morris/morris.css">

    <!-- Main CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/ManagerDashboard.css">
    
</head>

<body>
<%LoginBean currentUser = ((LoginBean) (session.getAttribute("currentSessionUser")));%>
    <!-- Main Wrapper -->
    <div class="main-wrapper">


        <!-- Sidebar -->
        <div class="sidebar" style="background-color: #00338D!important;width: 170px;" id="sidebar">
    <div class="sidebar-inner slimscroll">
      <div id="sidebar-menu" class="sidebar-menu">
        <ul>
          <li class="nav-item main-drop" style="margin-left: -28px">
            <span class="user-img"><img src="assets/images/profileimage.jpg" alt="">
              <span class="status online"></span>
            </span>
            <div class="section">
              <span style="color:#ffffff;margin-left:85px;font-size: 16px!important;"><%= currentUser.getFullname()%></span>
                    <span style="color:#ffffff;margin-left:85px;"><%= currentUser.getDepartment()%></span>
                    <span style="color:#ffffff;margin-left:85px;"><%= currentUser.getDesignation()%></span>
            </div>
          </li>
          <li class="submenu">
            <a class="btn-links" href="#" style="width:135px"><i class="la la-dashboard"></i> <span>
                Home</span></a>
          </li>
          <li class="submenu">
            <a class="btn-links" href="myAudits.jsp" style="background-color:#B7C1D3 !important;width:135px"><i class="la la-cube"></i> <span>My
                Audits</span></a>
          </li>
          <li class="submenu">
            <a class="btn-links" style="margin-top:300px!important;width:135px" href="logout.jsp"><i class="la la-user"></i> <span> Logout
              </span></a>
          </li>

        </ul>
      </div>
    </div>
  </div>
        <!-- /Sidebar -->

        <!-- Page Wrapper -->
        <div class="page-wrapper">

            <!-- Page Content -->
            <div class="content container-fluid">
                <div class="container-final d-flex">


                    <div class="container-1">
                        <!-- Page Header -->
                        <div class="page-header">
                            <div class="row">
                                <div class="col-sm-12">
                                    <img src="./assets/images/Picture6.png" alt="" width="140px" height="100px">
                                    <h3 class="page-title">Welcome to </h3>
                                    <h3 class="page-title">IA Accelerator</h3>
                                    <h5 style="width: 270px;margin-top: 30px;font-size: 15px;">One stop solution for all
                                        your Internal
                                        Audit requirements. Create and manage your reviews effortlessly.</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Page Header -->
                    <div class="container-2">
                        <div class="row" style="width: 1100px;padding-left: 130px;padding-top: 50px;">
                        <a href="audit_list.jsp">
                            <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                                <div class="card dash-widget" style="background: #00338D;">
                                    <div class="card-body card-body-1">
                                        <img src="./assets/images/Picture5.png" alt="" width="70px" height="70px">
                                    </div>
                                    <div class="text px-3 py-2">
                                        <a href="audit_list.jsp">
                                            <h3>Audit List</h3>
                                        </a>
                                        <h5>Track your existing audits effortlessly.</h5>
                                    </div>
                                </div>
                            </div>
                            </a>
                            <a href="createaudit.jsp">
                            <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                                <div class="card dash-widget" style="background: #483698;">
                                    <div class="card-body card-body-2">
                                        <img src="./assets/images/Picture2.png" alt="" width="70px" height="70px">
                                    </div>
                                    <div class="text px-3 py-2">
                                        <a href="createaudit.jsp">
                                            <h3>Create New Audit</h3>
                                        </a>
                                        <h5>Plan your audit smoothly.</h5>
                                    </div>
                                </div>
                            </div>
                            </a>
                        </div>
                        <div class="row" style="width: 1100px;padding-left: 130px;padding-bottom: 20px;">
                            <a href="export.jsp">
                            <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                                <div class="card dash-widget" style="background: #470A68;">
                                    <div class="card-body card-body-3">
                                        <img src="./assets/images/Picture3.png" alt="" width="70px" height="70px">
                                    </div>
                                    <div class="text px-3 py-2">
                                        <a href="export.jsp">
                                            <h3>Export Document</h3>
                                        </a>
                                        <h5>Get the existing document in one go.</h5>
                                    </div>
                                </div>
                            </div>
                            </a>
                            <a href="Risk_Repository.jsp">
                            <div class="col-md-6 col-sm-6 col-lg-6 col-xl-3">
                                <div class="card dash-widget" style="background: #005EB8;">
                                    <div class="card-body card-body-4">
                                        <img src="./assets/images/Picture4.png" alt="" width="70px" height="70px">
                                    </div>
                                    <div class="text px-3 py-2">
                                        <a href="Risk_Repository.jsp">
                                            <h3>RAC Repository</h3>
                                        </a>
                                        <h5>Access to a KPMG repository of risks and controls.</h5>
                                    </div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- /Page Content -->

    </div>
    <!-- /Page Wrapper -->

    </div>
    <!-- /Main Wrapper -->

    <!-- jQuery -->
    <script src="assets/js/jquery-3.5.1.min.js"></script>

    <!-- Bootstrap Core JS -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Slimscroll JS -->
    <script src="assets/js/jquery.slimscroll.min.js"></script>

    <!-- Chart JS -->
    <script src="assets/plugins/morris/morris.min.js"></script>
    <script src="assets/plugins/raphael/raphael.min.js"></script>
    <script src="assets/js/chart.js"></script>

    <!-- Custom JS -->
    <script src="assets/js/app.js"></script>

</body>
</html>