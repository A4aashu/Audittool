<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
	<%@ page language="java" import="com.tool.bean.LoginBean"%>
	<%@ page language="java" import="com.tool.config.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
    <meta name="description" content="Smarthr - Bootstrap Admin Template" />
    <meta name="keywords"
        content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects" />
    <meta name="author" content="Dreamguys - Bootstrap Admin Template" />
    <meta name="robots" content="noindex, nofollow" />
    <title>Dashboard - KPMG Admin Portal</title>

    <!-- Favicon -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>

    <script>
        function myfunction() {
            $("#posuvnik1").attr("size", $("a").length);
        }
    </script>
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="./assets/css/font-awesome.min.css" />

    <!-- Lineawesome CSS -->
    <link rel="stylesheet" href="./assets/css/line-awesome.min.css" />

    <!-- Chart CSS -->
    <link rel="stylesheet" href="./assets/plugins/morris/morris.css" />

    <!-- Main CSS -->
    <link rel="stylesheet" href="./assets/css/style.css" />
    <!-- 
    <link rel="stylesheet" href="assets/css/AnalystDashboard.css"> -->
    <link rel="stylesheet" href="assets/css/export_docs.css" />
</head>

<body>
<%LoginBean currentUser = ((LoginBean) (session.getAttribute("currentSessionUser")));%>
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
                <a class="btn-links btn-inactive" href="dashboard2.jsp"><i class="la la-dashboard"></i> <span>
                        Home</span></a>
            </li>
            <li class="submenu">
                <a class="btn-links btn-inactive" href="#"><i class="la la-cube"></i> <span>My
                        Audits</span></a>
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
 
    <div class="content-right">
        <img class="bg-img" src="assets/images/bg-1.png" alt="" />

        <img class="bg-img-1" src="assets/images/Picture3.png" alt="" />

    </div>
    <div class="content-left">
        <div class="cards-left">
            
            <img class="blue" src="assets/images/card1.png" alt="" />
            <img class="icon1" src="assets/images/icon1.png" alt="">
            <h5 class="icon-tag-2">No. of <br />Mega Process</h5>
            <img class="icon2" src="assets/images/icon2.png" alt="">
            <img class="red" src="assets/images/card2.png" alt="" />
            <h5 class="icon-tag">No. of  <br>Departments</h5>

        </div>
        <p>Please select Mega- Process and Department</p>
        <div class="text-left">
            
            <div class="dropdown1">
                <h5>Mega Process</h5>
                <div class="dropdown dropdowncss" >
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown button
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </div>

            </div>
            <div class="dropdown2">
                <h5>Categorization</h5>
                <div class="dropdown dropdowncss" >
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown button
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </div>
            </div>
        </div>
            <h4> List of Reviews</h4>
            <div class="table-responsive tablecss">
                <div class="data-table">
                    <table id="example" class="table " style="width:100%">
                        <thead>
                            <tr>
                                <th>SI.No.</th>
                                <th>Client Name</th>
                                <th>Review Name</th>
                                <th>Opening Meeting Deck</th>
                                <th>RACM</th>
                                <th>IDR</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                                <td><a href="#">Export.xlsx</a></td>
                            </tr>
                           
                          
                </div>
            </div>
      
    </div>

    <!-- <script>
        function changeStyle(){
            var element2 = document.getElementsById("btn-1");
            element2.style.marginBottom = "30px";


    
        };
    
        </script> -->

<script>
    $('#example').DataTable( {
        "scrollY": 200,
        "paging": false,
        "info":false,
        "autoWidth": false,
        "searching":false,
    } );
    const btn = document.getElementById("dropdownMenuButton1");

    btn.addEventListener("click", function onClick() {
      btn.style.marginBottom ="30px";
      btn.style.color = "white";
    });
  </script>

</body>

</html>