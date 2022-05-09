<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
	<%@ page language="java" import="com.tool.bean.LoginBean"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="Smarthr - Bootstrap Admin Template">
    <meta name="keywords"
        content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
    <meta name="author" content="Dreamguys - Bootstrap Admin Template">
    <meta name="robots" content="noindex, nofollow">
    <title>Dashboard - KPMG Admin Portal</title>

    <!-- Favicon -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">

    <!-- Lineawesome CSS -->
    <link rel="stylesheet" href="assets/css/line-awesome.min.css">

    <!-- Chart CSS -->
    <link rel="stylesheet" href="assets/plugins/morris/morris.css">

    <!-- Main CSS -->
    <link rel="stylesheet" href="assets/css/style.css">

    <link rel="stylesheet" href="assets/css/AnalystDashboard.css"> 
    <link rel="stylesheet" href="assets/css/Create_New_Audit.css">

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
                        <li class="nav-item main-drop">
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
                            <a class="btn-links" href="#"><i class="la la-dashboard"></i> <span> Home</span></a>
                        </li>
                        <li class="submenu">
                            <a class="btn-links" href="#"><i class="la la-cube"></i> <span>Audit List</span></a>
                        </li>
                        <li class="submenu">
                            <a class="btn-links" href="#"><i class="la la-plus"></i> <span>Create Audit</span></a>
                        </li>
                        <li class="submenu">
                            <a class="btn-links down" href="logout.jsp"><i class="la la-user"></i> <span> Logout
                                </span></span></a>
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
    <link rel="stylesheet" href="./Create_New_Audit.css">
                <div class="card-1" style="height: 110px;">
                    <nav class="navbar navbar-expand-lg navbar-dark">

                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav upper-nav" style="margin-top: -30px;">
                                <li class="nav-item active">
                                    <a class="nav-link boxx-shadow2 nav-1" href="#">Audit Background <span
                                            class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link boxx-shadow2 nav1" href="#">Risk and Controls</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link boxx-shadow2 nav1" href="#">Data Request</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link boxx-shadow2 nav1" href="#">Meeting Tracker</a>
                                </li>
                            </ul>
                            <div class="recc">
                                <h5>Name of Client</h5>
                                <h5>Engagement Name</h5>
                            </div>
                        </div>
                    </nav>
                    <br>
                    <br>
                    <nav class="navbar navbar-expand-lg navbar-dark">

                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav lower-nav">
                                <li class="nav-item active">
                                    <a class="nav-link nav-2 boxx-shadow" style="border-right: 1px solid #B7C1D3;" href="#">General
                                        <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link boxx-shadow nav-linkk nav2" href="#">Project objective</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link boxx-shadow nav-linkk nav2" href="#">Audit Plan</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link boxx-shadow nav-linkk nav2" href="#">Team Structure</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link boxx-shadow nav-linkk nav2" href="#">Opening Meeting</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <div class="container">
                    <div class="boxx-shadow" style="font-size: 25px;margin-top: 2%;margin-left: -5%;z-index: -1;">
                        General
                        <hr class="hrr">
                    </div>
                </div>
                <div class="container-fluid" style="margin-top: 2%;z-index: -1;margin-left: -6%;">
                    <div class="card card0 border-0">
                        <div class="row d-flex">
                            <div class="col-lg-8" style="background-color: #ffffff; color: #00338D!important;">
                                <form style="padding-left: 10%;">

                                    <div class="row px-3" style="padding-top: 10px;"> <label class="mb-0"
                                            style="margin-bottom: -1.75rem!important;">
                                            <h6 class="mb-0 text-lg" style="font-size: 23px; margin-left: -8%;margin-top:3%;">Name of
                                                Client</h6>
                                        </label> <input class="mb-2 input_name_of_client" type="text" name="client_name">
                                        <h6 class="mb-0 text-lg" style="margin-left: 43.5%;font-size: 23px;
                                        margin-top: -14%;">Engagement Name</h6>
                                        </label> <input class="mb-4 input_engagement_name" id="txtPassword"
                                            onchange="checkPass()" type="text" name="engagement_name">
                                    </div>
                                    <div class="row px-3"> <label class="mb-0"
                                            style="margin-bottom: -1.75rem!important;">
                                            <h6 class="mb-0 text-lg"
                                                style="font-size: 23px; margin-left: -8%;margin-top: -2%;">
                                                Process</h6>
                                        </label>
                                        <select class="form-control input_process" id="exampleFormControlSelect2" name="process">
                                            <option value="">Choose Value</option>
                                            <option value="Ahmedabad">Ahmedabad</option>
                                            <option value="Bengaluru">Bengaluru</option>
                                            <option value="Chandigarh">Chandigarh</option>
                                            <option value="Chennai">Chennai</option>
                                            <option value="Gurugram">Gurugram</option>
                                            <option value="Vadodara">Vadodara</option>
                                            <option value="Vijayawada">Vijayawada</option>
                                        </select>
                                        <h6 class="mb-0 text-lg" style="margin-left: 43.5%;font-size: 23px;
                                        margin-top: -12%;">Sub-Process</h6>
                                        </label>
                                        <select class="form-control input_subprocess" id="exampleFormControlSelect1" name="subproces">
                                            <option value="">Choose Value</option>
                                            <option value="Ahmedabad">Ahmedabad</option>
                                            <option value="Bengaluru">Bengaluru</option>
                                            <option value="Chandigarh">Chandigarh</option>
                                            <option value="Chennai">Chennai</option>
                                            <option value="Gurugram">Gurugram</option>
                                            <option value="Vadodara">Vadodara</option>
                                            <option value="Vijayawada">Vijayawada</option>
                                        </select>
                                    </div>
                                    <div class="row px-3">
                                        <label class="mb-0" style="margin-bottom: -1.75rem!important;">
                                            <h6 class="mb-0 text-lg"
                                                style="font-size: 23px; margin-left: -8%;margin-top: 3%;">
                                                Audit Start Date</h6>
                                        </label>
                                       
                                        <input class="mb-4 input_start_date" id="audit_start_date"
                                            type="date" name="audit_end_date">
                                        <h6 class="mb-0 text-lg" style="margin-left: 43.5%;font-size: 23px;
                                        margin-top: -15%;">Audit End Date
                                        </h6>
                                        </label> <input class="mb-4 input_end_date" id="audit_end_date" onchange="checkEmail()"
                                            type="date" name="audit_end_date">
                                    </div>

                                    <div class="row px-3">
                                        <label class="mb-0" style="margin-bottom: -1.75rem!important;">
                                            <h6 class="mb-0 text-lg"
                                                style="font-size: 23px; margin-left: -8%; margin-top: -2%;">
                                                Audit Background</h6>
                                        </label>
                                        <input class="mb-2 input_audit_background" id="audit_background" onchange="checkEmail()"
                                            type="text" name="input_audit_background">
                                    </div>

                                    <div class="row px-3"> <button type="submit"
                                            class="btn btn-blue text-center signup_btn"
                                            style="background-color: #470A68;">Save & Proceed</button>
                                    </div>

                                </form>
                            </div>
                            <div class="col-lg-4" style="background-color: #fff;">
                                <img src="assets/images/background-div.png" width="450px" height="460px"
                                    style="margin-left: -20px!important;margin-top:6px;margin-bottom:-20px;z-index:-1;" alt="">
                                <img src="assets/images/Pictures2.png" style="width: 370px;
                                margin-top: -140%;
                                height: 430px;
                                z-index: 11;" alt="">
                            </div>
                        </div>
                    </div>
                </div>

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

</body>

</html>