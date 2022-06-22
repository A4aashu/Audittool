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
    <style>
    .btn-inactive,.btn-links{
    font-size: 13px !important;
    }
    dl li, ol li, ul li {
   line-height: 1.2!important; 
}
    </style>
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
          <a href="MyDetailsFinal.jsp">
<li class="nav-item main-drop" style="margin-left: -28px">
<span class="user-img"><img src="data:image/jpeg;base64,<%= currentUser.getBase64Image()%>" id="img" style="border-radiius:100%!important;" width="50px" height="50px" alt="">
<span class="status online"></span>
</span>
<div class="section">
<span style="color:#ffffff;margin-left:85px;font-size: 16px!important;"><%= currentUser.getFullname()%></span>
<span style="color:#ffffff;margin-left:85px;font-size: 10px!important;"><%= currentUser.getDepartment()%></span>
<span style="color:#ffffff;margin-left:85px;font-size: 10px!important;"><%= currentUser.getDesignation()%></span>
</div>
</li>
</a>
          <li class="submenu">
            <a class="btn-links" href="#" style="width:135px"><i class="la la-dashboard"></i> <span>
                Home</span></a>
          </li>
          <li class="submenu">
            <a class="btn-links" href="myAudits.jsp" style="background-color:#B7C1D3 !important;width:135px"><i class="la la-cube"></i> <span>My
                Audits</span></a>
          </li>
          <li class="submenu">
            <a class="btn-links btn-inactive" href="MyContacts.jsp"><i class="la la-cube"></i> <span>My
                Contacts</span></a>
          </li>
          <li class="submenu">
            <a class="btn-links" style="margin-top:220px!important;width:135px" href="logout.jsp"><i class="la la-user"></i> <span> Logout
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
                                        <h5>Access to KPMG repository of risks and controls.</h5>
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
<script>
<script >
const images = document.querySelectorAll('img');

images.forEach(img => {
img.addEventListener('error', function handleError() {
const defaultImage =
'data:image/jpeg;base64,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';

img.src = defaultImage;
img.alt = 'default';
});
});

</script>
</script>
</body>
</html>