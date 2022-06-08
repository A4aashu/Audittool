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
                                    <meta name="viewport"
                                        content="width=device-width, initial-scale=1.0, user-scalable=0">
                                    <meta name="description" content="Smarthr - Bootstrap Admin Template">
                                    <meta name="keywords"
                                        content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
                                    <meta name="author" content="Dreamguys - Bootstrap Admin Template">
                                    <meta name="robots" content="noindex, nofollow">
                                    <title>IA Accelerator</title>

                                    <!-- Favicon -->

                                    <!-- Bootstrap CSS -->
                                    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
                                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                                        rel="stylesheet"
                                        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                                        crossorigin="anonymous">
                                    <script
                                        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
                                        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
                                        crossorigin="anonymous"></script>
                                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
                                        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
                                        crossorigin="anonymous"></script>
                                    <link rel="stylesheet"
                                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
                                    <link rel="stylesheet"
                                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                                    <script
                                        src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
                                    <script
                                        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                                    <!-- Fontawesome CSS -->
                                    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
                                    <link rel="stylesheet"
                                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
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
                                    <link rel="stylesheet" href="assets/css/projjectobjective.css">
                                    <link
                                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
                                        rel="stylesheet">
                                    <link rel="stylesheet"
                                        href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">

                                    <script type="text/javascript"
                                        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
                                    <script type="text/javascript"
                                        src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"></script>
                                 
                                    <script type="text/javascript"
                                        src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


                                </head>

                                <body>

                                    <%LoginBean currentUser=((LoginBean)
                                        (session.getAttribute("currentSessionUser")));
                                        AuditBean currentUsers=((AuditBean)
                                            (session.getAttribute("currentSessionUsers")));
                                        AuditBean currentUsers1=((AuditBean)
                                                (session.getAttribute("megaprocess")));
                                        AuditBean currentUsers2=((AuditBean)
                                                (session.getAttribute("categorization")));
                                        AuditBean currentUsers3=((AuditBean)
                                                (session.getAttribute("process")));
                                            
                                        String process="";
                                        String editType = request.getParameter("infooo1");
                                        if(editType!=null && !editType.isEmpty()){
                                        	process=request.getParameter("infooo1");
                                        }
                                        String megaprocess="";
                                        String editType1 = request.getParameter("info1");
                                        if(editType1!=null && !editType1.isEmpty()){
                                        	megaprocess=request.getParameter("info1");
                                        }
                                            
                                            %>

                                            <div class="main-wrapper">


                                                <!-- Sidebar -->
                                                <div class="sidebar"
                                                    style="background-color: #00338D!important;width: 170px;"
                                                    id="sidebar">
                                                    <div class="sidebar-inner slimscroll">
                                                        <div id="sidebar-menu" class="sidebar-menu">
                                                            <ul>
                                                                <li class="nav-item main-drop">
                                                                    <span class="user-img"><img src="assets/images/profileimage.jpg" style="border-radiius:100%!important;" width="50px" height="50px" alt="">
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
                                                                    <a class="btn-links btn-inactive"
                                                                        href="dashboard2.jsp"><i
                                                                            class="la la-dashboard"></i> <span>
                                                                            Home</span></a>
                                                                </li>
                                                                <li class="submenu">
                                                                    <a class="btn-links btn-inactive" href="#"><i
                                                                            class="la la-cube"></i> <span>My
                                                                            Audits</span></a>
                                                                </li>
                                                                            <li class="submenu">
              <a class="btn-links btn-inactive" href="#"><i class="la la-user"></i> <span>My Contacts</span></a>
            </li>
                
                <li class="submenu">
                  <a class="btn-links down" style="margin-top:220px!important;" href="logout.jsp"><i class="la la-user"></i> <span> Logout
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


                                                        <!-- top nav bar -->

                                                        <div class="topnavbar"  >
                                                            <div class="compactnavbar">

                                                                <nav class="Nav2 navbar-fixed-top" style="background-color:#E1ECF0!important;">
                                                                    <ul>
                                                                        <li><button type="button"
                                                                                class="boxx-shadow2 nav-1">Audit
                                                                                Background</button></li>
                                                                        <li><button type="button"
                                                                                class="boxx-shadow2 nav1">Data
                                                                                Request</button></li>
                                                                        <li><button type="button"
                                                                                class="boxx-shadow2 nav1"
                                                                                style="width:152px;">Risk and
                                                                                Controls</button></li>
                                                                        <li><button type="button"
                                                                                class="boxx-shadow2 nav1">Meeting
                                                                                Tracker</button></li>
                                                                                <li><button type="button" class="boxx-shadow2 nav1">Client Details</button></li>

                                                                    </ul>

                                                                    <ul style="margin-left: 50px;margin-top: -11px;">
                                                                        <li style="width: 122px!important;"><a href="#"
                                                                                class="nav-linkk nav-2 " style="border-right: 1px solid #B7C1D3;width: 65px;margin-right: 19px;padding-right: 5px;color: #27C719!important;
                                        ">General</a>
                                                                        </li>
                                                                        <li style="width: 122px;margin-left: -18px;"><a
                                                                                href="#"
                                                                                class="hover-underline-animation nav-linkk nav2 boxx-shadow"
                                                                                style="width: 133px;padding-right: 5px;">Project
                                                                                objective</a></li>
                                                                        <li style="padding-left: 0px;width: 101px;"><a
                                                                                href="#"
                                                                                class="nav-linkk nav2 boxx-shadow hover-underline-animation"
                                                                                style="padding-right: 9px;">Milestones</a>
                                                                        </li>
                                                                        <li style="width: 131px;"><a href="#"
                                                                                class="hover-underline-animation nav-linkk nav2 boxx-shadow"
                                                                                style="padding-right: 9px;">Team
                                                                                Structure</a></li>

                                                                    </ul>


                                                                </nav>
                                                                               <div class="recc boxx-shadow2">
                
                 <footer>
<span style="margin-left:-30px;">2/4</span>
        <div id="barInside" class="barInside"></div>

        <div class="barBorder">

          <div class="segment1"></div>

          <div class="segment"></div>

          <div class="segment12"></div>

          <!-- <div class="segment"></div> -->

          <!-- <div class="segment"></div>

          <div class="segment"></div>

          <div class="segment"></div>

          <div class="segment"></div>

          <div class="segment"></div>

          <div class="segment"></div> -->

        </div>

      </footer>
                </div> 
                                                            </div>

                                                        </div>

                                                    </div>
                                                    <div class="container" style="margin-top: 9%;">
                                                        <div class=""
                                                            style="font-size: 25px;margin-top: 2%;margin-left: -5%;z-index: -1;color:#00338D;font-weight: bold;">
                                                            Project Objective
                                                            <hr class="hrr">
                                                        </div>
                                                    </div>
                                                    <div class="container-fluid"
                                                        style="margin-top: 2%;margin-left: -3%;">
                                                        <div class="card border-0">
                                                            <div class="row d-flex">
                                                                <div class="col-lg-12"
                                                                    style="background-color: #ffffff; color: #00338D!important;">
                                                                    <div class="row upperblock">
                                                                        <div class="col-md-12">
                                                                            <h5 style="color:#00338D!important;margin-bottom: -22px;
                                    margin-top: 7px;">Mega-Process</h5>
                                    										 <button
                                                                                class="btn btn-default pull-right add-row"
                                                                                id="next" onclick="xyz()" 
                                                                                style="font-weight: bold!important;color:#00338D!important; font-size: 21px!important;"name="btn_megaprocess">Next</button>
                                                                            <button
                                                                                class="btn btn-default pull-right add-row"
                                                                                style="font-weight: bold!important;color:#00338D!important; font-size: 21px!important; border-right: 5px solid #00338D;"
                                                                                data-toggle="modal"
                                                                                data-target="#myModal1">Lookup</button>
                                                                            
                                                                                 </div>
                                                                    </div>

                                                                    <div class="row Lowerblock">
                                                                        <div class="col-md-12">

                                                                            <table class="table" style="border-radius: 20px;overflow: hidden;" id="editableTable1" data-toggle="table"
                                                                                data-mobile-responsive="true">
                                                                                <thead>
                                                                                    <tr>
                                                                                    <th class="th"
                                                                                            style="font-weight:bold!important;font-size:20px!important;display:none">
                                                                                            Id</th>
                                                                                        <th class="th"
                                                                                            style="font-weight:bold!important;font-size:20px!important;">
                                                                                            Mega Process</th>
                                                                                            
                                                                                        <th class="th"></th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>

                                                                                    <tr data-id="1">
                                                                                    <td data-field="mega"
                                                                                            class="td "
                                                                                            style="font-weight: bold;color:#00338D;display:none">00</td>
                                                                                        <td data-field="mega"
                                                                                            class="td "
                                                                                            style="font-weight: bold;color:#00338D;"><%=currentUsers.getMegaProcess()%></td>
                                                                                            
                                                                                        <td
                                                                                            style="background-color:rgba(167, 158, 205, 0.28);font-weight:700;color:#00338D">
                                                                                        </td>
                                                                                    </tr>

                                                                                </tbody>
                                                                            </table>

                                                                        
                                                                           
                                                                            <form action="GeneralServlet" method="POST"
                                                                                id="submit-form">
                                                                                <input id="megaprocessid" value="<%=megaprocess%>" name="info1" hidden
                                                                                    >
                                                                               
                                                                            </form>

                                                                            <div class="row upperblock">
                                                                                <div class="col-md-12">
                                                                                    <h5 style="color:#00338D!important;margin-bottom: -22px;
                                            margin-top: 7px;">Categorization</h5>
                                            									<button
                                                                                class="btn btn-default pull-right add-row"
                                                                                id="next" onclick="xyz1()" 
                                                                                style="font-weight: bold!important;color:#00338D!important; font-size: 21px!important;">Next</button>
                                                                                    <button
                                                                                        class="btn btn-default pull-right"
                                                                                        style="font-weight: bold!important;color:#00338D!important; font-size: 21px!important;border-right: 5px solid #00338D;"
                                                                                        data-toggle="modal"
                                                                                        data-target="#myModal2">Lookup</button>
                                                                                    
                                                                                </div>
                                                                            </div>

                                                                            <table class="table" id="editableTable2"
                                                                                data-toggle="table"
                                                                                data-mobile-responsive="true" style="border-radius: 20px;overflow: hidden;">
                                                                                <thead>
                                                                                    <tr>
                                                                                    <th class="roww"
                                                                                            style="font-weight:bold!important;font-size:20px!important;display:none">
                                                                                            Id</th>
                                                                                        <th class="roww"
                                                                                            style="font-weight:bold!important;font-size:20px!important;">
                                                                                            Categorization</th>
                                                                                        <th class="roww2"
                                                                                            style="font-weight:bold!important;font-size:20px!important;">
                                                                                            Mega Process</th>
                                                                                        <th class="th">
                                                                                        </th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <tr data-id="1">
																						<td data-field="category"
                                                                                            class="td_roww"
                                                                                            style="font-weight: bold;color:#00338D;display:none">000</td>
                                                                                        <td data-field="category"
                                                                                            class="td_roww"
                                                                                            style="font-weight: bold;color:#00338D;"><%= currentUsers.getDepartment()%></td>
                                                                                        <td data-field="mega"
                                                                                            class="td_roww2"
                                                                                            style="font-weight: bold;color:#00338D;"><%= currentUsers.getMegaProcess()%></td>
                                                                                        <td
                                                                                            style="background-color:rgba(167, 158, 205, 0.28);font-weight:700;color:#00338D">
                                                                                            <button
                                                                                                class="btn btn-outline-danger delete_row"
                                                                                                style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;float:right!important;margin-left:86%;margin-top: -3px!important;">X</button>
                                                                                        </td>
                                                                                    </tr>

                                                                                </tbody>
                                                                            </table>

                                                                           
<form action="GeneralServlet" method="POST" id="submit-form1">
<input id="departmentid" value="" name="infoo1" hidden >
</form>





<div class="row upperblock">
                                                                                <div class="col-md-12">
                                                                                    <h5 style="color:#00338D!important;margin-bottom: -22px;
                                            margin-top: 7px;">Process</h5>
                                            									<button
                                                                                class="btn btn-default pull-right add-row"
                                                                                id="next" onclick="xyz2()" 
                                                                                style="font-weight: bold!important;color:#00338D!important; font-size: 21px!important;">Next</button>
                                                                                
                                                                                    <button
                                                                                        class="btn btn-default pull-right"
                                                                                        style="font-weight: bold!important;color:#00338D!important; font-size: 21px!important;border-right: 5px solid #00338D;"
                                                                                        data-toggle="modal"
                                                                                        data-target="#myModal3">Lookup</button>
                                                                                    
                                                                                </div>
                                                                            </div>

                                                                            <table class="table" id="editableTable3"
                                                                                data-toggle="table"
                                                                                data-mobile-responsive="true" style="border-radius: 20px;
                                        overflow: hidden;">
                                                                                <thead>
                                                                                    <tr>
                                                                                    <th class="roww"
                                                                                            style="font-weight:bold!important;font-size:20px!important;display:none">
                                                                                            Id</th>
                                                                                        <th class="roww"
                                                                                            style="font-weight:bold!important;font-size:20px!important;">
                                                                                            Process</th>
                                                                                        <th class="roww2"
                                                                                            style="font-weight:bold!important;font-size:20px!important;">
                                                                                            Categorization</th>
                                                                                        <th class="th">
                                                                                        </th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <tr data-id="1">
																						<td data-field="category"
                                                                                            class="td_roww"
                                                                                            style="font-weight: bold;color:#00338D;display:none">0000</td>
                                                                                        <td data-field="category"
                                                                                            class="td_roww"
                                                                                            style="font-weight: bold;color:#00338D;"><%= currentUsers.getProcess()%></td>
                                                                                        <td data-field="mega"
                                                                                            class="td_roww2"
                                                                                            style="font-weight: bold;color:#00338D;"><%= currentUsers.getDepartment()%></td>
                                                                                        <td
                                                                                            style="background-color:rgba(167, 158, 205, 0.28);font-weight:700;color:#00338D">
                                                                                            <button
                                                                                                class="btn btn-outline-danger delete_row"
                                                                                                style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;float:right!important;margin-left:86%;margin-top: -3px!important;">X</button>
                                                                                        </td>
                                                                                    </tr>

                                                                                </tbody>
                                                                            </table>

                                                                            
<form action="GeneralServlet" method="POST" id="submit-form2">
<input id="processid" value="<%=process%>" name="infooo1" hidden >
</form>

 <div class="row upperblock">
                                                                                <div class="col-md-12">
                                                                                    <h5 style="color:#00338D!important;margin-bottom: -22px;
                                            margin-top: 7px;">Sub-Process</h5>
                                            
                                                                                    <button
                                                                                        class="btn btn-default pull-right"
                                                                                        style="font-weight: bold!important;color:#00338D!important; font-size: 21px!important;"
                                                                                        data-toggle="modal"
                                                                                        data-target="#myModal4">Lookup</button>
                                                                                    
                                                                                </div>
                                                                            </div>

                                                                            <table class="table " id="editableTable4"
                                                                                data-toggle="table"
                                                                                data-mobile-responsive="true" style="border-radius: 20px;
                                        overflow: hidden;">
                                                                                <thead>
                                                                                    <tr>
                                                                                        <th class="roww"
                                                                                            style=" padding-right: 284px!important;font-weight:bold!important;font-size:20px!important;">
                                                                                            Sub-Process</th>
                                                                                        <th class="roww2"
                                                                                            style=" padding-right: 110px!important;font-weight:bold!important;font-size:20px!important;padding-left: 8%;">
                                                                                            Process</th>
                                                                                        <th class="th">
                                                                                        </th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <tr data-id="1">

                                                                                    </tr>



                                                                                </tbody>
                                                                            </table>


                                                                            <div class="row upperblock">
                                                                                <div class="col-md-12">
                                                                                    <h5 style="color:#00338D!important;margin-bottom: -22px;
                                            margin-top: 7px;">Control Objective</h5>
                                                                                    <button
                                                                                        class="btn btn-default pull-right"
                                                                                        style="font-weight: bold!important;color:#00338D!important; font-size: 21px!important;"
                                                                                        data-toggle="modal"
                                                                                        data-target="#myModal">Lookup</button>
                                                                                   
                                                                                </div>
                                                                            </div>

                                                                            <table class="table" id="editableTable5"
                                                                                data-toggle="table"
                                                                                data-mobile-responsive="true" style="border-radius: 20px;
                                        overflow: hidden;">
                                                                                <thead>
                                                                                    <tr>
                                                                                    <th class="rowww1"
                                                                                            style=" padding-right: 26px!important;font-weight:bold!important;font-size:20px!important;" hidden>
                                                                                            ID</th>
                                                                                        <th class="rowww1"
                                                                                            style=" padding-right: 26px!important;font-weight:bold!important;font-size:20px!important;">
                                                                                            Control Objective ID</th>
                                                                                        <th class="rowww"
                                                                                            style=" padding-right: 60px!important;font-weight:bold!important;font-size:20px!important;">
                                                                                            Control Objective</th>
                                                                                        <th class="rowww2"
                                                                                            style=" padding-right: 127px!important;font-weight:bold!important;font-size:20px!important;">
                                                                                            Process</th>
                                                                                        <th class="th">
                                                                                        </th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                   
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row px-3"> <button 
                                                                        class="btn btn-blue text-center signup_btn"
                                                                        style="background-color: #470A68;margin-top: 10px!important;
                            margin-left: 920px!important;" onclick="xyz3()">Save & Proceed</button>
                            
                                                                 
                                                                </div>
                                                                <form action="GeneralServlet" method="POST" id="submit-form3" >
                                                                <input id="objectiveid" value="" name="infoooo1" hidden>
                                                                
                                                                </form>
                                                            </div>
                                                        </div>
                                                       
                                                       
                                                       <div class="modal" id="myModal">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content"
                                                                    style="height: 500px!important;width: 720px!important;margin-left: -91px;">

                                                                    <!-- Modal Header -->
                                                                    <div class="modal-header">
                                                                        <h4 class="modal-title">Record Lookup</h4>
                                                                        <form>
                                                                            <input type="text" name="q"
                                                                                placeholder="Search"
                                                                                style="width:170px ;height:40px;margin-left:300px;"id="myInput5" />
                                                                           
                                                                        </form>
                                                                        <button data-toggle="modal"
                                                                            data-target="#mymodal" id="showModal"
                                                                            style="display:none;"></button>

                                                                        <button type="button" class="close"
                                                                            data-dismiss="modal">&times;</button>
                                                                    </div>

                                                                    <!-- Modal body -->
                                                                    <div class="modal-body">
                                                                        <table id="myTable"
                                                                            style="height:300px!important;width:100%!important;"
                                                                            class="table table-striped table-bordered table-responsive table-hover">
                                                                            <%
                                                                            try{
                                                                            	String x1=currentUsers3.getProcessid();
                                                                            	int[] a1=Arrays.stream(x1.split(",")).mapToInt(Integer::parseInt).toArray();  
                                                                                StringBuilder idList1 = new StringBuilder();
                                                                                		for (int id : a1) {
                                                                                		   if (idList1.length() > 0) {
                                                                                		     idList1.append(",");
                                                                                		   }
                                                                                		   idList1.append(id);
                                                                                		}
                                                                            	
                                                                                Connection connection=Dbconfig.getConnection();
                                                                                PreparedStatement psmt1=connection.prepareStatement("select ControlobjectiveID,ControlObjective,Process,DepartmentCategorisation,MegaProcess,min(id) as id,min(Subprocess) as subprocess from racm where Process = ? OR Process in (select distinct(Process) from racm where Id in ("+idList1+")) group by ControlobjectiveID,ControlObjective,Process,DepartmentCategorisation,MegaProcess;");
                                                                                psmt1.setString(1,currentUsers.getProcess());

                                                                                ResultSet resultset1 =psmt1.executeQuery() ;
                                                                        %>
                                                                            <thead>
                                                                                <tr>
                                                                                    <th style="text-align: left;">
                                                                                        Select Control</th>
                                                                                    <th style="text-align: left;">
                                                                                        Control Objective ID</th>
                                                                                    <th style="text-align: left;">
                                                                                        Control Objective</th>
                                                                                    <th style="text-align: left;">
                                                                                        Process</th>
                                                                                        <th style="text-align: left;" hidden>
                                                                                        Id</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody id="myTableb">
                                                                                
 <%  while(resultset1.next()){ %>
       																			 <tr>
                                                                                    <td name="control"
                                                                                        style="width: 5%;"><input
                                                                                            type="checkbox"
                                                                                            name="check-tab1" /> </td>
                                                                                    <td name="firstname"
                                                                                        style="text-align: left;">
                                                                                        <%= resultset1.getString("ControlobjectiveID")%></td>
                                                                                    <td name="lastname"
                                                                                        style="text-align: left;">
                                                                                        <%= resultset1.getString("ControlObjective")%></td>
                                                                                    <td name="email"
                                                                                        style="text-align: left;">
                                                                                        <%= resultset1.getString("Process")%></td>
                                                                                        <td name="email"
                                                                                        style="text-align: left;" hidden><%= resultset1.getString("id")%></td>
                                                                                </tr>
            <% } 

        }
        catch(Exception e)
        {
             out.println("Pass from the previous table to preview this");
        }
%>
                                                                                
                                                                            </tbody>
                                                                        </table>
                                                                    </div>

                                                                    <!-- Modal footer -->
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-primary"
                                                                            style="padding: 10px!important;"
                                                                            data-dismiss="modal" id="userEntry"
                                                                            onclick="transfer();">
                                                                            Select control
                                                                        </button>
                                                                        <button type="button" class="btn btn-danger"
                                                                            style="padding: 10px!important;"
                                                                            data-dismiss="modal">Close</button>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="modal" id="myModal4">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content"
                                                                    style="height: 500px!important;width: 720px!important;margin-left: -91px;">

                                                                    <!-- Modal Header -->
                                                                    <div class="modal-header">
                                                                        <h4 class="modal-title">Record Lookup</h4>
                                                                        <form>
                                                                            <input type="text" name="q"
                                                                                placeholder="Search"
                                                                                style="width:170px ;height:40px;margin-left:300px;"id="myInput4" />
                                                                            
                                                                        </form>
                                                                        <button data-toggle="modal"
                                                                            data-target="#mymodal" id="showModal"
                                                                            style="display:none;"></button>
                                                                        <button type="button" class="close"
                                                                            data-dismiss="modal">&times;</button>
                                                                    </div>

                                                                    <!-- Modal body -->
                                                                    <div class="modal-body">
                                                                        <table id="myTable4"
                                                                            style="height:300px!important;width:100%!important;"
                                                                            class="table table-striped table-bordered table-responsive table-hover">
                                                                             <%
                                                                            try{
                                                                            	String x1=currentUsers3.getProcessid();
                                                                            	int[] a1=Arrays.stream(x1.split(",")).mapToInt(Integer::parseInt).toArray();  
                                                                                StringBuilder idList1 = new StringBuilder();
                                                                                		for (int id : a1) {
                                                                                		   if (idList1.length() > 0) {
                                                                                		     idList1.append(",");
                                                                                		   }
                                                                                		   idList1.append(id);
                                                                                		}
                                                                            	
                                                                                Connection connection=Dbconfig.getConnection();
                                                                                PreparedStatement psmt1=connection.prepareStatement("select Subprocess,Process,min(id) as id from racm where Process = ? OR Process in (select distinct(Process) from racm where Id in ("+idList1+")) group by Subprocess,Process;");
                                                                                psmt1.setString(1,currentUsers.getProcess());

                                                                                ResultSet resultset1 =psmt1.executeQuery() ;
                                                                        %>
                                                                            <thead>
                                                                                <tr>
                                                                                    <th style="text-align: left;">
                                                                                        Select Control</th>
                                                                                    <th style="text-align: left;">
                                                                                        Sub-Process</th>
                                                                                    <th style="text-align: left;">
                                                                                        Process</th>
                                                                                        <th style="text-align: left;" hidden>
                                                                                        id</th>

                                                                                </tr>
                                                                            </thead>
                                                                            <tbody id="myTableb4">
                                                                                
                                                                                <%  while(resultset1.next()){ %>
       																			 <tr>
                                                                                    <td name="control"
                                                                                        style="width: 5%;"><input
                                                                                            type="checkbox"
                                                                                            name="check-tab11" /> </td>
                                                                                    <td name="firstname"
                                                                                        style="text-align: left;">
                                                                                        <%= resultset1.getString("Subprocess")%></td>
                                                                                    <td name="email"
                                                                                        style="text-align: left;">
                                                                                        <%= resultset1.getString("Process")%></td>
                                                                                           <td name="email"
                                                                                        style="text-align: left;" hidden>
                                                                                        <%= resultset1.getString("id")%></td>
                                                                                </tr>
            <% } 

        }
        catch(Exception e)
        {
             out.println("Pass from the previous table to preview this");
        }
%>

                                                                                
                                                                            </tbody>
                                                                        </table>
                                                                    </div>

                                                                    <!-- Modal footer -->
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-primary"
                                                                            style="padding: 10px!important;"
                                                                            data-dismiss="modal" id="userEntry"
                                                                            onclick="transfer4();">
                                                                            Select control
                                                                        </button>
                                                                        <button type="button" class="btn btn-danger"
                                                                            style="padding: 10px!important;"
                                                                            data-dismiss="modal">Close</button>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                       
                                                       
                                                       
                                                       
                                                       
                                                       
                                                       
                                                       
                                                       
                                                       
                                                        <div class="modal" id="myModal3">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content"
                                                                    style="height: 500px!important;width: 720px!important;margin-left: -101px;">

                                                                    <!-- Modal Header -->
                                                                    <div class="modal-header">
                                                                        <h4 class="modal-title">Record Lookup</h4>
                                                                        <form>
                                                                            <input type="text" name="q"
                                                                                placeholder="Search"
                                                                                style="width:170px ;height:40px;margin-left:300px;" id="myInput3"/>
                                                                           
                                                                        </form>
                                                                        <button data-toggle="modal"
                                                                            data-target="#mymodal" id="showModal"
                                                                            style="display:none;"></button>
                                                                        <button type="button" class="close"
                                                                            data-dismiss="modal">&times;</button>
                                                                    </div>

                                                                    <!-- Modal body -->
                                                                    <div class="modal-body">
                                                                        <table id="myTable3"
                                                                            style="height:300px!important;width:100%!important;"
                                                                            class="table table-striped table-bordered table-responsive table-hover">
                                                                  
                                                                            <%
                                                                            try{
                                                                            	String x1=currentUsers2.getCategorizationid();
                                                                            	int[] a1=Arrays.stream(x1.split(",")).mapToInt(Integer::parseInt).toArray();  
                                                                                StringBuilder idList1 = new StringBuilder();
                                                                                		for (int id : a1) {
                                                                                		   if (idList1.length() > 0) {
                                                                                		     idList1.append(",");
                                                                                		   }
                                                                                		   idList1.append(id);
                                                                                		}
                                                                            	
                                                                                Connection connection=Dbconfig.getConnection();
                                                                                PreparedStatement psmt1=connection.prepareStatement("select Process,DepartmentCategorisation,megaprocess,min(id) as id from racm where DepartmentCategorisation = ? OR DepartmentCategorisation in (select distinct(DepartmentCategorisation) from racm where Id in ("+idList1+")) group by Process,DepartmentCategorisation,MegaProcess;");
                                                                                psmt1.setString(1,currentUsers.getDepartment());

                                                                                ResultSet resultset1 =psmt1.executeQuery() ;
                                                                        %>
                                                                           
        
                                      
                                                                            <thead>
                                                                                <tr>
                                                                                    <th style="text-align: left;">
                                                                                        Select Control</th>
                                                                                    <th style="text-align: left;">
                                                                                        Process</th>
                                                                                    <th style="text-align: left;">Categorization</th>
                                                                                        <th style="text-align: left;display:none">Id</th>


                                                                                </tr>
                                                                            </thead>
                                                                            <tbody id="myTableb3">
                                                                                
                                                   
                                                                                
                                                                                
                                                                                
                                                                                <%  while(resultset1.next()){ %>
        
            <tr >
                                                                                <td name="control"
                                                                                        style="width: 5%;"><input
                                                                                            type="checkbox"
                                                                                            name="check-tab1111" /></td>
                                                                                <td name="firstname" style="text-align: left;"><%= resultset1.getString("Process")%></td>
                                                                                <td name="email" style="text-align: left;"><%= resultset1.getString("DepartmentCategorisation")%></td>
                                                                                <td name="email" style="text-align: left;display:none"><%= resultset1.getString("id")%></td>

                                                                                </tr>
            <% } 

        }
        catch(Exception e)
        {
             out.println("Pass from the previous table to preview this");
        }
%>
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                            </tbody>
                                                                        </table>
                                                                    </div>

                                                                    <!-- Modal footer -->
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-primary"
                                                                            style="padding: 10px!important;"
                                                                            data-dismiss="modal" id="userEntry"
                                                                            onclick="transfer3();">
                                                                            Select control
                                                                        </button>
                                                                        <button type="button" class="btn btn-danger"
                                                                            style="padding: 10px!important;"
                                                                            data-dismiss="modal">Close</button>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                        

                                                        <div class="modal" id="myModal2">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content"
                                                                    style="height: 500px!important; width: 720px!important; margin-left: -101px;">

                                                                    <!-- Modal Header -->
                                                                    <div class="modal-header">
                                                                        <h4 class="modal-title">Record Lookup</h4>
                                                                        <form>
                                                                            <input type="text" name="q"
                                                                                placeholder="Search"
                                                                                style="width:170px ;height:40px;margin-left:300px;" id="myInput2"/>
                                                                            
                                                                        </form>
                                                                        <button data-toggle="modal"
                                                                            data-target="#mymodal" id="showModal"
                                                                            style="display:none;"></button>
                                                                        <button type="button" class="close"
                                                                            data-dismiss="modal">&times;</button>
                                                                    </div>

                                                                    <!-- Modal body -->
                                                                    <div class="modal-body">
                                                                        <table id="myTable2"
                                                                            style="height:300px!important;width:100%!important;"
                                                                            class="table table-striped table-bordered table-responsive table-hover">
                                                                  
                                                                            <%
    try{
    	String x=currentUsers1.getMegaprocessid();
    	int[] a=Arrays.stream(x.split(",")).mapToInt(Integer::parseInt).toArray();  
        StringBuilder idList = new StringBuilder();
        		for (int id : a) {
        		   if (idList.length() > 0) {
        		     idList.append(",");
        		   }
        		   idList.append(id);
        		}
    	String query="select distinct(DepartmentCategorisation),megaprocess from racm where MegaProcess in (select distinct(megaprocess) from racm where Id(?));";
    	Connection connection1=Dbconfig.getConnection();
        PreparedStatement psmt=connection1.prepareStatement("select DepartmentCategorisation,megaprocess,min(id) as id from racm where Megaprocess = ? OR MegaProcess in (select distinct(megaprocess) from racm where Id in ("+idList+")) group by DepartmentCategorisation,MegaProcess;");
        psmt.setString(1,currentUsers.getMegaProcess());

        ResultSet resultset =psmt.executeQuery() ;
%>
        
                                      
                                                                            <thead>
                                                                                <tr>
                                                                                    <th style="text-align: left;">
                                                                                        Select Control</th>
                                                                                    <th style="text-align: left;">
                                                                                        Categorization</th>
                                                                                    <th style="text-align: left;">Mega
                                                                                        Process</th>
                                                                                        <th style="text-align: left;display:none">Id</th>


                                                                                </tr>
                                                                            </thead>
                                                                            <tbody id="myTableb2">
                                                                                
                                                   
                                                                                
                                                                                
                                                                                
                                                                                <%  while(resultset.next()){ %>
        
            <tr >
                                                                                <td name="control"
                                                                                        style="width: 5%;"><input
                                                                                            type="checkbox"
                                                                                            name="check-tab1111" /></td>
                                                                                <td name="firstname" style="text-align: left;"><%= resultset.getString("DepartmentCategorisation")%></td>
                                                                                <td name="email" style="text-align: left;"><%= resultset.getString("Megaprocess")%></td>
                                                                                <td name="email" style="text-align: left;display:none"><%= resultset.getString("id")%></td>

                                                                                </tr>
            <% } 

        }
        catch(Exception e)
        {
             out.println("Pass from the previous table to preview this");
        }
%>
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                            </tbody>
                                                                        </table>
                                                                    </div>

                                                                    <!-- Modal footer -->
                                                                    <div class="modal-footer" style="width: 100% !important;">
                                                                        <button type="button" class="btn btn-primary"
                                                                            style="padding: 10px!important;"
                                                                            data-dismiss="modal" id="userEntry"
                                                                            onclick="transfer2();">
                                                                            Select control
                                                                        </button>
                                                                        <button type="button" class="btn btn-danger"
                                                                            style="padding: 10px!important;"
                                                                            data-dismiss="modal">Close</button>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="modal" id="myModal1">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content"
                                                                    style="height: 500px!important;width: 520px!important;margin-left: -31px;">

                                                                    <!-- Modal Header -->
                                                                    <div class="modal-header" style="width: 100% !important;">
                                                                        <h4 class="modal-title">Record Lookup</h4>
                                                                        <form>
                                                                            <input type="text" name="q"
                                                                                placeholder="Search"
                                                                                style="width:170px ;height:40px;margin-left:80%"id="myInput1" />
                                                                           
                                                                        </form>
                                                                        <button data-toggle="modal"
                                                                            data-target="#mymodal" id="showModal"
                                                                            style="display:none;"></button>
                                                                        <button type="button" class="close"
                                                                            data-dismiss="modal">&times;</button>
                                                                    </div>

                                                                    <!-- Modal body -->
                                                                    <div class="modal-body" style="width: 100% !important;">
                                                                        <table id="myTable1"
                                                                            style="height: 330px!important;"
                                                                            class="table table-striped table-bordered table-responsive table-hover">
                                                                            <sql:setDataSource var = "snapshot" driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
                                                                            url = "jdbc:sqlserver://IN-AASHUYADAV;databaseName=Audit_tool"
                                                                            user = "aashu" password = "kpmgKPMG1"/>
                                                                            <sql:query dataSource = "${snapshot}" var = "resultset">
                                                                            SELECT MegaProcess,min(id) as id from RACM group by megaprocess order by Megaprocess;
                                                                            </sql:query>
                                                                            <thead>
                                                                                <tr>
                                                                                    <th style="text-align:center;" >
                                                                                        Select</th>
                                                                                    <th style="text-align: left;">Mega
                                                                                        Process</th>
                                                                                        <th style="text-align: left;display:none">ID</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody class="tbodymodal" id="myTableb1">
                                                                                
                                                                                <c:forEach var = "row" items = "${resultset.rows}">
                                                                                <tr  >
                                                                                <td style="text-align: left;" name="control" ><input type="checkbox"
                                                                                name="check-tab11111"  /></td>
                                                                                
                                                                                <td style="text-align: left;"><c:out value = "${row.MegaProcess}"/></td>
																					<td style="text-align: left;display:none"><c:out value = "${row.id}"/></td>
                                                                                </tr>
                                                                                </c:forEach>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>

                                                                    <!-- Modal footer -->
                                                                    <div class="modal-footer" style="width: 100% !important;">
                                                                        <button type="button" class="btn btn-primary"
                                                                            style="padding: 10px!important;"
                                                                            data-dismiss="modal" id="userEntry"
                                                                            onclick="transfer1();">
                                                                            Select control
                                                                        </button>
                                                                        <button type="button" class="btn btn-danger"
                                                                            style="padding: 10px!important;"
                                                                            data-dismiss="modal">Close</button>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                           

                                            <!-- /Page Content -->

                                            
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
                                                    $('#editableTable3').dataTable()
                                                    $('#editableTable4').dataTable()
                                                    $('#editableTable5').dataTable()
                                                });
                                            </script>
                                            <script>
        $(document).ready(function(){
          $("#myInput1").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTableb1 tr").filter(function() {
              $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
          }),
          $("#myInput2").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTableb2 tr").filter(function() {
              $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
          }),
          $("#myInput3").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTableb3 tr").filter(function() {
              $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
          }),
          $("#myInput4").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTableb4 tr").filter(function() {
              $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
          }),
          $("#myInput5").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTableb tr").filter(function() {
              $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
          });
        });
    </script>
                                            
                                            <script>
                                            
                                                $(document).ready(function () {

                                                  /*   $('#add_row').click(function () {
                                                        //Add row
                                                        row = '';
                                                        row += '<tr><td class="td" data-field="mega" ><input type="text" class="form-control" style="width:80%!important; font-size:15px !important;font-weight:bolder !important; margin-bottom: -29px!important;"></td><td class="td"><button class="btn btn-outline-danger delete_row" style="margin-top: 6px!important;border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;">X</button></td></tr>';

                                                        // row += '<td><button class="btn btn-outline-danger delete_row">X</button></td></tr>';
                                                        $("#editableTable1 > tbody").append(row);
                                                        editText(this)
                                                    });

                                                    $('#add_row1').click(function () {
                                                        //Add row
                                                        row = '';
                                                        row += '<tr><td class="td_roww" data-field="category"> <input type="text" class="form-control" style="margin-left: -2%;font-size:15px !important;font-weight:bolder !important;margin-bottom: -30px!important;"></td><td class="td_roww2" data-field="mega"><input type="text" class="form-control" style="margin-left: -2%;width:40%!important;margin-bottom: -30px!important;"></td><td class="td"><button class="btn btn-outline-danger delete_row"  style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;margin-top: 6px!important;">X</button></td></tr>';

                                                        // row += '<td><button class="btn btn-outline-danger delete_row">X</button></td></tr>';
                                                        $("#editableTable2 > tbody").append(row);
                                                    });
 */
                                                   
                                                    $("#editableTable1").on('click', '.delete_row', function () {
                                                        $(this).closest('tr').remove();
                                                    });
                                                    $("#editableTable2").on('click', '.delete_row', function () {
                                                        $(this).closest('tr').remove();
                                                    });
                                                    $("#editableTable3").on('click', '.delete_row', function () {
                                                        $(this).closest('tr').remove();
                                                    });
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

                                                            // var d = table2.getElementsByTagName("tr")
                                                            newRow.style.borderBottom = '2px solid #00338D';
                                                            cell1.innerHTML = table1.rows[i + 1].cells[4].innerHTML;
                                                            cell1.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell1.style.fontWeight = '700';
                                                            cell1.style.color = '#00338D';

                                                            cell1.style.display = 'none';
                                                            // cell1.style.borderBottom='thick solid #00338D';
                                                            cell2.innerHTML = table1.rows[i + 1].cells[1].innerHTML;
                                                            cell2.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell2.style.fontWeight = '700';
                                                            cell2.style.color = '#00338D';
                                                            cell3.innerHTML = table1.rows[i + 1].cells[2].innerHTML;
                                                            cell3.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell3.style.fontWeight = '700';
                                                            cell3.style.color = '#00338D';
                                                            cell4.innerHTML = table1.rows[i + 1].cells[3].innerHTML;
                                                            cell4.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell4.style.fontWeight = '700';
                                                            cell4.style.color = '#00338D';
                                                            cell5.innerHTML = '<button class="btn btn-outline-danger delete_row" style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;margin-top: -3px!important;">X</button>';
                                                            cell5.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell5.style.fontWeight = '700';
                                                            cell5.style.color = '#00338D';
                                                           
                                                            console.log(checkboxes.length);
                                                        }
                                                        $('input[type="checkbox"]').prop('checked', false);
                                                }
                                                var person3=[];

                                                function showTableData3() {

                                                var xyz=document.getElementById("objectiveid");
                                                var myTab = document.getElementById('editableTable5');
                                                for (j = 1; j < myTab.rows.length; j++) {
                                                var objCells = myTab.rows.item(j).cells;
                                                person3[j-1]=objCells.item(0).innerHTML;
                                                }
                                                xyz.value =person3;
                                                }
                                                function xyz3(){
                                                showTableData3();
                                                document.getElementById("submit-form3").submit();
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

                                                            
                                                            console.log(checkboxes.length);
                                                        }
                                                        $('input[type="checkbox"]').prop('checked', false);
                                                }

              
                                                
                                                function transfer3() {
                                                    var table1 = document.getElementById("myTable3"),
                                                        table2 = document.getElementById("editableTable3"),
                                                        checkboxes = document.getElementsByName("check-tab1111");
                                                    console.log("Val1 = " + checkboxes.length);
                                                    for (var i = 0; i < checkboxes.length; i++)
                                                        if (checkboxes[i].checked) {
                                                            var newRow = table2.insertRow(table2.length),
                                                                cell1 = newRow.insertCell(0),
                                                                cell2 = newRow.insertCell(1);
                                                            cell3 = newRow.insertCell(2);
                                                            cell4 = newRow.insertCell(3);

                                                            newRow.style.borderBottom = 'thin solid #00338D';
                                                            cell1.innerHTML = table1.rows[i + 1].cells[3].innerHTML;
                                                            cell1.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell1.style.fontWeight = '700';
                                                            cell1.style.color = '#00338D';
                                                            cell1.style.display = 'none';
                                                            // cell1.style.borderBottom='thick solid #00338D';
                                                            cell2.innerHTML = table1.rows[i + 1].cells[1].innerHTML;
                                                            cell2.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell2.style.fontWeight = '700';
                                                            cell2.style.color = '#00338D';
                                                            
                                                            cell3.innerHTML = table1.rows[i + 1].cells[2].innerHTML;
                                                            cell3.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell3.style.fontWeight = '700';
                                                            cell3.style.color = '#00338D';

                                                            cell4.innerHTML = '<button class="btn btn-outline-danger delete_row" style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;margin-top: -3px!important;">X</button>';;
                                                            cell4.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell4.style.fontWeight = '700';
                                                            cell4.style.color = '#00338D';

                                                            
                                                            console.log(checkboxes.length);
                                                        }
                                                        $('input[type="checkbox"]').prop('checked', false);

                                                        
                                                }
var person2=[];

function showTableData2() {

var xyz=document.getElementById("processid");
var myTab = document.getElementById('editableTable3');
for (i = 1; i < myTab.rows.length; i++) {
var objCells = myTab.rows.item(i).cells;
person2[i-1]=objCells.item(0).innerHTML;
}
xyz.value =person2;
}
function xyz2(){
showTableData2();
document.getElementById("submit-form2").submit();
}

                                                
                                                function transfer2() {
                                                    var table1 = document.getElementById("myTable2"),
                                                        table2 = document.getElementById("editableTable2"),
                                                        checkboxes = document.getElementsByName("check-tab1111");
                                                    console.log("Val1 = " + checkboxes.length);
                                                    for (var i = 0; i < checkboxes.length; i++)
                                                        if (checkboxes[i].checked) {
                                                            var newRow = table2.insertRow(table2.length),
                                                                cell1 = newRow.insertCell(0),
                                                                cell2 = newRow.insertCell(1);
                                                            cell3 = newRow.insertCell(2);
                                                            cell4 = newRow.insertCell(3);

                                                            newRow.style.borderBottom = 'thin solid #00338D';
                                                            cell1.innerHTML = table1.rows[i + 1].cells[3].innerHTML;
                                                            cell1.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell1.style.fontWeight = '700';
                                                            cell1.style.color = '#00338D';
                                                            cell1.style.display = 'none';
                                                            // cell1.style.borderBottom='thick solid #00338D';
                                                            cell2.innerHTML = table1.rows[i + 1].cells[1].innerHTML;
                                                            cell2.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell2.style.fontWeight = '700';
                                                            cell2.style.color = '#00338D';
                                                            
                                                            cell3.innerHTML = table1.rows[i + 1].cells[2].innerHTML;
                                                            cell3.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell3.style.fontWeight = '700';
                                                            cell3.style.color = '#00338D';

                                                            cell4.innerHTML = '<button class="btn btn-outline-danger delete_row" style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;margin-top: -3px!important;">X</button>';;
                                                            cell4.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';
                                                            cell4.style.fontWeight = '700';
                                                            cell4.style.color = '#00338D';

                                                            
                                                            console.log(checkboxes.length);
                                                        }
                                                        $('input[type="checkbox"]').prop('checked', false);

                                                        
                                                }
var person1=[];

function showTableData1() {

var xyz=document.getElementById("departmentid");
var myTab = document.getElementById('editableTable2');
for (i = 1; i < myTab.rows.length; i++) {
var objCells = myTab.rows.item(i).cells;
person1[i-1]=objCells.item(0).innerHTML;
}
xyz.value =person1;

}
function xyz1(){
showTableData1();
document.getElementById("submit-form1").submit();
}


                                                function transfer1() {
                                                    var table1 = document.getElementById("myTable1"),
                                                        table2 = document.getElementById("editableTable1"),
                                                        checkboxes = document.getElementsByName("check-tab11111");
                                                    console.log("Val1 = " + checkboxes.length);
                                                    for (var i = 0; i < checkboxes.length; i++)
                                                        if (checkboxes[i].checked) {
                                                            var newRow = table2.insertRow(table2.length),
                                                            cell1 = newRow.insertCell(0);
                                                            cell2 = newRow.insertCell(1);
                                                            cell3=newRow.insertCell(2);


                                                            newRow.style.borderBottom = '2px solid #00338D';
                                                            // cell1.innerHTML = table1.rows[i+1].cells[1].innerHTML;
                                                            // cell1.style.backgroundColor='rgba(167, 158, 205, 0.28)';
                                                            // cell1.style.fontWeight='700';
                                                            // cell1.style.color='#00338D';
                                                            // cell1.style.borderBottom='thick solid #00338D';
                                                            cell1.innerHTML = table1.rows[i + 1].cells[2].innerHTML;

                                                            cell1.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';

                                                            cell1.style.fontWeight = '700';

                                                            cell1.style.color = '#00338D';
                                                            cell1.style.display = 'none';
                                                            cell2.innerHTML = table1.rows[i + 1].cells[1].innerHTML;

                                                            cell2.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';

                                                            cell2.style.fontWeight = '700';

                                                            cell2.style.color = '#00338D';


                                                            cell3.innerHTML = '<button class="btn btn-outline-danger delete_row" style="border-radius: 20px;background-color: #C4C4C4;color: black;border-color: black!important;float:right!important;margin-left:86%;margin-top: -3px!important;">X</button>';

                                                            cell3.style.backgroundColor = 'rgba(167, 158, 205, 0.28)';

                                                            cell3.style.fontWeight = '700';

                                                            cell3.style.color = '#00338D';

                                                       



                                                            console.log(checkboxes.length);
                                                        }
                                                        $('input[type="checkbox"]').prop('checked', false);
}
var person=[];

function showTableData() {

var xyz=document.getElementById("megaprocessid");
var myTab = document.getElementById('editableTable1');
for (i = 1; i < myTab.rows.length; i++) {
var objCells = myTab.rows.item(i).cells;
person[i-1]=objCells.item(0).innerHTML;
}
xyz1.value =i-1;
xyz.value =person;

}
function xyz(){
showTableData();
document.getElementById("submit-form").submit();
}
                                               

                                            </script>
                                </body>

                                </html>