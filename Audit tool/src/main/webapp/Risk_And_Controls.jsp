<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.sql.*" %>
        <%@ page import="java.io.*" %>
        <%@ page import="java.util.*" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
                    <%@ page language="java" import="com.tool.bean.LoginBean" %>
                        <%@ page language="java" import="com.tool.bean.AuditBean" %>
                            <%@ page language="java" import="com.tool.config.*" %>
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
    <title>IA Accelerator</title>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Lineawesome CSS -->
    <link rel="stylesheet" href="assets/css/line-awesome.min.css">

    <!-- Chart CSS -->
    <link rel="stylesheet" href="assets/plugins/morris/morris.css">

    <!-- Main CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- 
    <link rel="stylesheet" href="assets/css/AnalystDashboard.css"> -->
    <link rel="stylesheet" href="assets/css/Risk_And_Controls.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"></script>
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>

<body>
<%LoginBean currentUser=((LoginBean)(session.getAttribute("currentSessionUser")));%>
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
                                   <span
                                                                            style="color:#ffffff;margin-left:85px;font-size: 16px!important;">
                                                                            <%= currentUser.getFullname()%>
                                                                        </span>
                                                                        <span style="color:#ffffff;margin-left:85px;">
                                                                            <%= currentUser.getDepartment()%>
                                                                        </span>
                                                                        <span style="color:#ffffff;margin-left:85px;">
                                                                            <%= currentUser.getDesignation()%>
                                                                        </span>
                            </div>
                        </li>
                        <li class="submenu">
              <a class="btn-links btn-inactive" href="dashboard2.jsp"><i class="la la-dashboard"></i> <span>
                  Home</span></a>
            </li>
            <li class="submenu">
              <a class="btn-links btn-inactive" href="myAudits.jsp"><i class="la la-cube"></i> <span>My
                  Audits</span></a>
            </li>
            <li class="submenu">
              <a class="btn-links btn-inactive" href="#"><i class="la la-cube"></i> <span>My
                  Contacts</span></a>
            </li>

            <li class="submenu">
              <a class="btn-links down" href="logout.jsp"><i class="la la-user"></i> <span> Logout
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


                <!-- top nav bar -->

                <div class="topnavbar">
                    <div class="compactnavbar">

                        <nav class="Nav2 navbar-fixed-top" style="background-color:#E1ECF0!important;height: 110px;">
                            <ul>
                                <li><button type="button" class="boxx-shadow2 nav1" style="width: 151px;">Audit Background</button></li>
                                <li><button type="button" class="boxx-shadow2 nav1">Data Request</button></li>
                                <li><button type="button" class="boxx-shadow2 nav-1" style="width:152px;">Risk and
                                        Controls</button></li>
                                <li><button type="button" class="boxx-shadow2 nav1">Meeting Tracker</button></li>

                            </ul>

                            


                        </nav>
                        <!-- <div class="recc boxx-shadow2">
                  <h5>Name of Client</h5>
                  <h5>Engagement Name</h5>
                </div> -->
                    </div>

                </div>

            </div>
            
            <div class="container-fluid" style="margin-top: 10%;margin-left: -3%;">
                <div class="card border-0">
                    <div class="row d-flex">
                        <div class="col-lg-12" style="background-color: #ffffff; color: #00338D!important;">
                            <div class="row Lowerblock">
                                <div class="col-md-12">
                                   


                                    <div class="row upperblock">
                                        <div class="col-md-12">
                                            <h5 style="color:#00338D!important;margin-bottom: -22px;
                                            margin-top: 7px;">Control Objective</h5>
                                            <button class="btn btn-default pull-right"
                                                style="font-weight: bold!important;color:#00338D!important; font-size: 21px!important;"
                                                data-toggle="modal" data-target="#myModal">Lookup</button>
                                            <button class="btn btn-default pull-right add_row" id="add_row5"
                                                style="font-weight: bold!important;color:#00338D!important; font-size: 21px!important;border-right: 5px solid #00338D;">Add
                                                Row</button>
                                        </div>
                                    </div>

                                    <table class="table" id="editableTable5" data-toggle="table"
                                        data-mobile-responsive="true" style="border-radius: 20px;
                                        overflow: hidden;">
                                        <thead>
                                            <tr>
                                                <th class="rowww"
                                                    style=" font-weight:bold!important;font-size:18px!important;">Control Objective ID</th>
                                                <th class="rowww"
                                                    style=" font-weight:bold!important;font-size:18px!important;">Control Objective</th>
                                                <th class="rowww"
                                                    style=" font-weight:bold!important;font-size:18px!important;">Control</th>   
                                                <th class="rowww"
                                                    style=" font-weight:bold!important;font-size:18px!important;">Risk</th>  
                                                <th class="rowww"
                                                    style=" font-weight:bold!important;font-size:18px!important;">Sub-Process</th>
                                                <th class="th">
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr data-id="1">

                                                <td data-field="control" class="td_roww"
                                                    style="font-weight: bold;color:#00338D;">
                                                    Control ID 1
                                                </td>
                                                <td data-field="control2" class="td_roww"
                                                    style="font-weight: bold;color:#00338D;">
                                                    Control Objective 1
                                                </td>
                                                <td data-field="control3" class="td_roww"
                                                style="font-weight: bold;color:#00338D;">
                                                Control 1
                                                </td>
                                                <td data-field="control4" class="td_roww"
                                                style="font-weight: bold;color:#00338D;">
                                                Risk 1
                                                </td>
                                                <td data-field="subprocess" class="td_roww2"
                                                    style="font-weight: bold;color:#00338D;">
                                                    Sub-Process 1
                                                </td>
                                                <td
                                                    style="background-color:rgba(167, 158, 205, 0.28);font-weight:700;color:#00338D">
                                                    <button class="btn btn-outline-danger delete_row"
                                                        style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;float:right!important;margin-left:86%;margin-top: -3px!important;">X</button>
                                                </td>
                                            </tr>
                                            <tr data-id="2">

                                                <td data-field="control" class="td_roww"
                                                    style="font-weight: bold;color:#00338D;">
                                                    Control ID 1
                                                </td>
                                                <td data-field="control2" class="td_roww"
                                                    style="font-weight: bold;color:#00338D;">
                                                    Control Objective 1
                                                </td>
                                                <td data-field="control3" class="td_roww"
                                                style="font-weight: bold;color:#00338D;">
                                                Control 1
                                                </td>
                                                <td data-field="control4" class="td_roww"
                                                style="font-weight: bold;color:#00338D;">
                                                Risk 1
                                                </td>
                                                <td data-field="subprocess" class="td_roww2"
                                                    style="font-weight: bold;color:#00338D;">
                                                    Sub-Process 1
                                                </td>
                                                <td
                                                    style="background-color:rgba(167, 158, 205, 0.28);font-weight:700;color:#00338D">
                                                    <button class="btn btn-outline-danger delete_row"
                                                        style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;float:right!important;margin-left:86%;margin-top: -3px!important;">X</button>
                                                </td>
                                            </tr>
                                            <tr data-id="3">
                                                <td data-field="control" class="td_roww"
                                                    style="font-weight: bold;color:#00338D;">
                                                    Control ID 1
                                                </td>
                                                <td data-field="control2" class="td_roww"
                                                    style="font-weight: bold;color:#00338D;">
                                                    Control Objective 1
                                                </td>
                                                <td data-field="control3" class="td_roww"
                                                style="font-weight: bold;color:#00338D;">
                                                Control 1
                                                </td>
                                                <td data-field="control4" class="td_roww"
                                                style="font-weight: bold;color:#00338D;">
                                                Risk 1
                                                </td>
                                                <td data-field="subprocess" class="td_roww2"
                                                    style="font-weight: bold;color:#00338D;">
                                                    Sub-Process 1
                                                </td>
                                                <td
                                                    style="background-color:rgba(167, 158, 205, 0.28);font-weight:700;color:#00338D">
                                                    <button class="btn btn-outline-danger delete_row"
                                                        style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;float:right!important;margin-left:86%;margin-top: -3px!important;">X</button>
                                                </td>
                                            </tr>



                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="row px-3"> <button type="submit" class="btn btn-blue text-center signup_btn" style="background-color: #470A68;margin-top: 10px!important;
                            margin-left: 700px!important;">Save & Proceed</button>
                            <button type="submit" class="btn btn-blue text-center signup_btn" style="background-color: #470A68;margin-left: 85.5%!important;
                                margin-top: -30.05px!important;">Submit</button>
                        </div>
                    </div>
                </div>
                <div class="modal" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content" style="height: 380px!important;">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Record Lookup</h4>
                                <form>
                                    <input type="text" name="q" placeholder="Enter query" id="myInput5"
                                        style="width:170px ;height:40px;margin-left: 150px;" />
                                    </form>
                                <button data-toggle="modal" data-target="#mymodal" id="showModal"
                                    style="display:none;"></button>

                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <table id="myTable" style="height:200px!important;width:700px!important;"
                                    class="table table-striped table-bordered table-responsive table-hover">
                                    <thead>
                                        <tr>
                                            <th style="text-align: center;">Select Control</th>
                                            <th style="text-align: center;">Control Objective ID</th>
                                            <th style="text-align: center;">Control Objective</th>
                                            <th style="text-align: center;">Controls</th>
                                            <th style="text-align: center;">Risk</th>
                                            <th style="text-align: center;">Sub-Process</th>
                                        </tr>
                                    </thead>
                                    <tbody id="myTableb">
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab1" /> </td>
                                            <td name="firstname" style="text-align: center;">Control ID 1</td>
                                            <td name="lastname" style="text-align: center;">Control Objective 1</td>
                                            <td name="email" style="text-align: center;">Control 1</td>
                                            <td name="email1" style="text-align: center;">Risk 1</td>
                                            <td name="email2" style="text-align: center;">Sub-Process 1</td>
                                        </tr>

                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab1" /> </td>
                                            <td name="firstname" style="text-align: center;">Control ID 1</td>
                                            <td name="lastname" style="text-align: center;">Control Objective 1</td>
                                            <td name="email" style="text-align: center;">Control 1</td>
                                            <td name="email1" style="text-align: center;">Risk 1</td>
                                            <td name="email2" style="text-align: center;">Sub-Process 1</td>
                                        </tr>

                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab1" /> </td>
                                            <td name="firstname" style="text-align: center;">Control ID 1</td>
                                            <td name="lastname" style="text-align: center;">Control Objective 1</td>
                                            <td name="email" style="text-align: center;">Control 1</td>
                                            <td name="email1" style="text-align: center;">Risk 1</td>
                                            <td name="email2" style="text-align: center;">Sub-Process 1</td>
                                        </tr>
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab1" /> </td>
                                            <td name="firstname" style="text-align: center;">Control ID 1</td>
                                            <td name="lastname" style="text-align: center;">Control Objective 1</td>
                                            <td name="email" style="text-align: center;">Control 1</td>
                                            <td name="email1" style="text-align: center;">Risk 1</td>
                                            <td name="email2" style="text-align: center;">Sub-Process 1</td>
                                        </tr>
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab1" /> </td>
                                            <td name="firstname" style="text-align: center;">Control ID 1</td>
                                            <td name="lastname" style="text-align: center;">Control Objective 1</td>
                                            <td name="email" style="text-align: center;">Control 1</td>
                                            <td name="email1" style="text-align: center;">Risk 1</td>
                                            <td name="email2" style="text-align: center;">Sub-Process 1</td>
                                        </tr>
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab1" /> </td>
                                            <td name="firstname" style="text-align: center;">Control ID 1</td>
                                            <td name="lastname" style="text-align: center;">Control Objective 1</td>
                                            <td name="email" style="text-align: center;">Control 1</td>
                                            <td name="email1" style="text-align: center;">Risk 1</td>
                                            <td name="email2" style="text-align: center;">Sub-Process 1</td>
                                        </tr>
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab1" /> </td>
                                            <td name="firstname" style="text-align: center;">Control ID 1</td>
                                            <td name="lastname" style="text-align: center;">Control Objective 1</td>
                                            <td name="email" style="text-align: center;">Control 1</td>
                                            <td name="email1" style="text-align: center;">Risk 1</td>
                                            <td name="email2" style="text-align: center;">Sub-Process 1</td>
                                        </tr>
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab1" /> </td>
                                            <td name="firstname" style="text-align: center;">Control ID 1</td>
                                            <td name="lastname" style="text-align: center;">Control Objective 1</td>
                                            <td name="email" style="text-align: center;">Control 1</td>
                                            <td name="email1" style="text-align: center;">Risk 1</td>
                                            <td name="email2" style="text-align: center;">Sub-Process 1</td>
                                        </tr>
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab1" /> </td>
                                            <td name="firstname" style="text-align: center;">Control ID 1</td>
                                            <td name="lastname" style="text-align: center;">Control Objective 1</td>
                                            <td name="email" style="text-align: center;">Control 1</td>
                                            <td name="email1" style="text-align: center;">Risk 1</td>
                                            <td name="email2" style="text-align: center;">Sub-Process 1</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" style="padding: 10px!important;"
                                    data-dismiss="modal" id="userEntry" onclick="transfer();">
                                    Select control
                                </button>
                                <button type="button" class="btn btn-danger" style="padding: 10px!important;"
                                    data-dismiss="modal">Close</button>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="modal" id="myModal4">
                    <div class="modal-dialog">
                        <div class="modal-content" style="height: 380px!important;">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Record Lookup</h4>
                                <form>
                                    <input type="text" name="q" placeholder="Enter query" id="myInput4"
                                        style="width:170px ;height:40px;margin-left: 150px;" />
                                     </form>
                                <button data-toggle="modal" data-target="#mymodal" id="showModal"
                                    style="display:none;"></button>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <table id="myTable4" style="height:200px!important;width:700px!important;"
                                    class="table table-striped table-bordered table-responsive table-hover">
                                    <thead>
                                        <tr>
                                            <th style="text-align: center;">Select Control</th>
                                            <th style="text-align: center;">Sub-Process</th>
                                            <th style="text-align: center;">Process</th>

                                        </tr>
                                    </thead>
                                    <tbody  id="myTableb4">
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab11" /> </td>
                                            <td name="firstname" style="text-align: center;">Sub-Process 1</td>
                                            <td name="email" style="text-align: center;">Process 1</td>
                                        </tr>

                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab11" /> </td>
                                            <td name="firstname" style="text-align: center;">Sub-Process 2</td>
                                            <td name="email" style="text-align: center;">Process 2</td>
                                        </tr>

                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab11" /> </td>
                                            <td name="firstname" style="text-align: center;">Sub-Process 3</td>

                                            <td name="email" style="text-align: center;">Process 3</td>
                                        </tr>
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab11" /> </td>
                                            <td name="firstname" style="text-align: center;">Sub-Process 4</td>

                                            <td name="email" style="text-align: center;">Process 4</td>
                                        </tr>
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab11" /> </td>
                                            <td name="firstname" style="text-align: center;">Sub-Process 5</td>

                                            <td name="email" style="text-align: center;">Process 5</td>
                                        </tr>
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab11" /> </td>
                                            <td name="firstname" style="text-align: center;">Sub-Process 6</td>

                                            <td name="email" style="text-align: center;">Process 6</td>
                                        </tr>
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab11" /> </td>
                                            <td name="firstname" style="text-align: center;">Sub-Process 7</td>

                                            <td name="email" style="text-align: center;">Process 7</td>
                                        </tr>
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab11" /> </td>
                                            <td name="firstname" style="text-align: center;">Sub-Process 8</td>

                                            <td name="email" style="text-align: center;">Process 8</td>
                                        </tr>
                                        <tr>
                                            <td name="control" style="width: 5%;"><input type="checkbox"
                                                    name="check-tab11" /> </td>
                                            <td name="firstname" style="text-align: center;">Sub-Process 9</td>

                                            <td name="email" style="text-align: center;">Process 9</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" style="padding: 10px!important;"
                                    data-dismiss="modal" id="userEntry" onclick="transfer4();">
                                    Select control
                                </button>
                                <button type="button" class="btn btn-danger" style="padding: 10px!important;"
                                    data-dismiss="modal">Close</button>
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


    <script>
        $(document).ready(function () {
            $('#editableTable1').dataTable();
            $('#editableTable2').dataTable();
            $('#editableTable3').dataTable();
            $('#editableTable4').dataTable();
            $('#editableTable5').dataTable();
        });
    </script>
    <script>
        $(document).ready(function () {
            $("#myInput1").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#myTable1 tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            }),
                $("#myInput2").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#myTable2 tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                }),
                $("#myInput3").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#myTable3 tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                }),
                $("#myInput4").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#myTableb4 tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                }),
                $("#myInput5").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#myTableb tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
        });
    </script>
    <script>
        $(document).ready(function () {

                       
            
            $('#add_row4').click(function () {
                //Add row
                row = '';
                row += '<tr><td class="td_roww" data-field="process"> <input type="text" class="form-control" style="margin-left: -2%;font-size:15px !important;font-weight:bolder !important;width:40%!important;margin-bottom: -30px!important;"></td><td class="td_roww2" data-field="Categorization"><input type="text" class="form-control" style="margin-left: 24%;width:40%!important;margin-bottom: -30px!important;"></td><td class="td"><button class="btn btn-outline-danger delete_row"  style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;margin-top: 6px!important;">X</button></td></tr>';

                // row += '<td><button class="btn btn-outline-danger delete_row">X</button></td></tr>';
                $("#editableTable4 > tbody").append(row);
            })

            $('#add_row5').click(function () {
                //Add row
                row = '';
                row += '<tr><td data-field="control" class="td_roww"><input type="text" class="form-control" style="margin-left: -3%;font-size:15px !important;font-weight:bolder !important;width:90%!important;margin-bottom: -30px!important;"></td><td data-field="control2" class="td_roww"><input type="text" class="form-control" style="margin-left: -4%;width:90%!important;margin-bottom: -30px!important;"></td><td data-field="subprocess" class="td_roww2"><input type="text" class="form-control" style="margin-left: -2%;width:90%!important;margin-bottom: -30px!important;"></td><td data-field="control3" class="td_roww"><input type="text" class="form-control" style="margin-left: -4%;width:90%!important;margin-bottom: -30px!important;"></td><td data-field="control4" class="td_roww"><input type="text" class="form-control" style="margin-left: -3%;width:70%!important;margin-bottom: -30px!important;"></td><td class="td"><button class="btn btn-outline-danger delete_row" style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;margin-top: 6px!important;">X</button></td></tr>';

                // row += '<td><button class="btn btn-outline-danger delete_row">X</button></td></tr>';
                $("#editableTable5 > tbody").append(row);
            })

            
            $("#editableTable4").on('click', '.delete_row', function () {
                $(this).closest('tr').remove();
            });
            $("#editableTable5").on('click', '.delete_row', function () {
                $(this).closest('tr').remove();
            });
            $('#editableTable1').dataTable();
            $('#editableTable2').dataTable();
            $('#editableTable3').dataTable();
            $('#editableTable4').dataTable();
            $('#editableTable5').dataTable();

        });

        function transfer() {
            var table1 = document.getElementById("myTable"),
                table2 = document.getElementById("editableTable5"),
                checkboxes = document.getElementsByName("check-tab1");
            console.log("Val1 = " + checkboxes.length);
            for (var i = 0; i < checkboxes.length; i++)
                if (checkboxes[i].checked) {
                    var newRow = table2.insertRow(table2.length),
                        cell1 = newRow.insertCell(0),
                        cell2 = newRow.insertCell(1),
                        cell3 = newRow.insertCell(2);
                    cell4 = newRow.insertCell(3);
                    cell5 = newRow.insertCell(4);
                    cell6 = newRow.insertCell(5);

                    // var d = table2.getElementsByTagName("tr")
                    newRow.style.borderBottom = '2px solid #00338D';
                    cell1.innerHTML = table1.rows[i + 1].cells[1].innerHTML;
                    cell1.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                    cell1.style.fontWeight = '700';
                    cell1.style.color = '#00338D';
                    // cell1.style.borderBottom='thick solid #00338D';
                    cell2.innerHTML = table1.rows[i + 1].cells[2].innerHTML;
                    cell2.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                    cell2.style.fontWeight = '700';
                    cell2.style.color = '#00338D';
                    cell3.innerHTML = table1.rows[i + 1].cells[3].innerHTML;
                    cell3.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                    cell3.style.fontWeight = '700';
                    cell3.style.color = '#00338D';

                    cell4.innerHTML = table1.rows[i + 1].cells[4].innerHTML;
                    cell4.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                    cell4.style.fontWeight = '700';
                    cell4.style.color = '#00338D';
                    cell5.innerHTML = table1.rows[i + 1].cells[5].innerHTML;
                    cell5.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                    cell5.style.fontWeight = '700';
                    cell5.style.color = '#00338D';
                    cell6.innerHTML = '<button class="btn btn-outline-danger delete_row" style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;margin-top: -3px!important;">X</button>';
                    cell6.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                    cell6.style.fontWeight = '700';
                    cell6.style.color = '#00338D';
                    var index = table1.rows[i + 1].rowIndex;
                    table1.deleteRow(index);
                    i--;
                    console.log(checkboxes.length);
                }
        }


        function transfer4() {
            var table1 = document.getElementById("myTable4"),
                table2 = document.getElementById("editableTable4"),
                checkboxes = document.getElementsByName("check-tab11");
            console.log("Val1 = " + checkboxes.length);
            for (var i = 0; i < checkboxes.length; i++)
                if (checkboxes[i].checked) {
                    var newRow = table2.insertRow(table2.length),
                        cell1 = newRow.insertCell(0),
                        cell2 = newRow.insertCell(1);
                    cell3 = newRow.insertCell(2);

                    newRow.style.borderBottom = 'thin solid #00338D';
                    cell1.innerHTML = table1.rows[i + 1].cells[1].innerHTML;
                    cell1.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                    cell1.style.fontWeight = '700';
                    cell1.style.color = '#00338D';
                    // cell1.style.borderBottom='thick solid #00338D';
                    cell2.innerHTML = table1.rows[i + 1].cells[2].innerHTML;
                    cell2.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                    cell2.style.fontWeight = '700';
                    cell2.style.color = '#00338D';
                    cell2.classList.add("subbprocess");

                    cell3.innerHTML = '<button class="btn btn-outline-danger delete_row" style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;margin-top: -3px!important;">X</button>';;
                    cell3.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                    cell3.style.fontWeight = '700';
                    cell3.style.color = '#00338D';

                    var index = table1.rows[i + 1].rowIndex;
                    table1.deleteRow(index);
                    i--;
                    console.log(checkboxes.length);
                }
        }

       

    </script>
</body>

</html>