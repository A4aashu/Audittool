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
  <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
  <link rel="stylesheet" href="assets/css/line-awesome.min.css">

  <!-- Chart CSS -->
  <link rel="stylesheet" href="assets/plugins/morris/morris.css">

  <!-- Main CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
  <!-- 
    <link rel="stylesheet" href="assets/css/AnalystDashboard.css"> -->
  <link rel="stylesheet" href="assets/css/RAC_Library.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@3.0.0-beta/dist/chart.min.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
    
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
              <a class="btn-links btn-inactive" href="#"><i class="la la-dashboard"></i> <span>
                  Home</span></a>
            </li>
            <li class="submenu">
              <a class="btn-links btn-inactive" href="#"><i class="la la-cube"></i> <span>My
                  Audits</span></a>
            </li>
            <li class="submenu">
              <a class="btn-links btn-inactive" href="#"><i class="la la-cube"></i> <span>My
                  Contacts</span></a>
            </li>

            <li class="submenu">
              <a class="btn-links down" href="#"><i class="la la-user"></i> <span> Logout
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

        <div class="topnavbar">
          <div class="compactnavbar">

            <nav class="Nav2 navbar-fixed-top">

              <ul style="margin-left: 380px;margin-top: 4px;">
                <li style="width: 122px!important;"><a href="#"
                    class="hover-underline-animation nav-linkk nav2 " style="border-right: 1px solid black;width: 135px;
                    margin-right: 15px;
                    padding-right: 1px;">RAC Dashboard</a>
                </li>
                <li style="width: 122px;margin-left: -5px;"><a href="#" class="nav-linkk nav-2 boxx-shadow"
                    style="width: 97px;padding-right: 5px;">RAC Library</a></li>
              </ul>


            </nav>
            <!-- <div class="recc boxx-shadow2">
                  <h5>Name of Client</h5>
                  <h5>Engagement Name</h5>
                </div> -->
          </div>

        </div>

      </div>

      <div class="container-fluid" style="margin-top: 8%;margin-left: -6%;">
        <div class="border-0">
          <div class="text-left">
            <div class="dropdown1">
              <h5 style="margin-left: 40px; margin-top: 38px !important;">Mega Process</h5>
              <div class="dropdown dropdowncss">

                <select class="form-control input_process" id="dropdownMenuButton1" name="process" style="color: #00338D!important;
                            width: 250px!important;
                            margin-left: 35px!important;">
                  <option value="" class='arrow'>Choose Value</option>
                  <option value="Finance and Accounts">Finance and Accounts</option>
                  <option value="Human Resource">Human Resource</option>
                  <option value="IT & Networks">IT & Networks</option>
                  <option value="Legal">Legal</option>
                  <option value="Marketing">Marketing</option>
                  <option value="Operations">Operations</option>
                  <option value="Security">Security</option>
                </select>
              </div>
              <i class="arrow2 down3" style="color: #00338D !important"></i>
            </div>
            <div class="dropdown2">
              <h5 style="margin-left: 128px; margin-top: 38px !important;">Categorization</h5>
              <div class="dropdown dropdowncss">
                <select class="form-control input_process" id="dropdownMenuButton1" name="process" style="color: #00338D!important;
                            width: 250px!important;
                            margin-left: 122px!important;">
                  <option value="">Choose Value</option>
                  <option value="Finance and Accounts">Finance and Accounts</option>
                  <option value="Human Resource">Human Resource</option>
                  <option value="IT & Networks">IT & Networks</option>
                  <option value="Legal">Legal</option>
                  <option value="Marketing">Marketing</option>
                  <option value="Operations">Operations</option>
                  <option value="Security">Security</option>
                </select>
              </div>
              <i class="arrow1 down2" style="color: #00338D !important"></i>
            </div>
            <div class="dropdown2">
              <h5 style="    margin-left: 107px!important; margin-top: 38px !important;">Process</h5>
              <div class="dropdown dropdowncss">
                <select class="form-control input_process " id="dropdownMenuButton1" name="process" style="color: #00338D!important;
                                width: 250px!important;
                                margin-left: 102px!important;">
                  <option value="">Choose Value </option>
                  <option value="Finance and Accounts">Finance and Accounts</option>
                  <option value="Human Resource">Human Resource</option>
                  <option value="IT & Networks">IT & Networks</option>
                  <option value="Legal">Legal</option>
                  <option value="Marketing">Marketing</option>
                  <option value="Operations">Operations</option>
                  <option value="Security">Security</option>
                </select>
                
                
              </div>
              <i class="arrow down1" style="color: #00338D !important" ></i>
            </div>
          </div>

          <h4 style="margin-left: 35px;margin-bottom: 25px;color:#00338D; margin-top: 25px !important;font-weight:bold; font-size: 25px !important;">Risk and Control Matrix
          </h4>
          <div class="tableanddrp css-serial">
            <div class="tablelist1">
              
              <div class="tablecss css-serial">
                <div class="data-table">
                  <table id="example1" class="table display nowrap" style="width: 100%">
                    <thead>
                      <tr>
                        <th>Sl.no.</th>
                        <th>Sub Process</th>
                        <th>Control Objective</th>
                        <th>Control</th>
                        <th>Risk</th>
                      </tr>
                    </thead>
                    <tbody >
                      
                      <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
              
                      </tr>
                      <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
              
                      </tr>
                      <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
              
                      </tr>
                      <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
              
                      </tr>
                     
                      
                    </tbody>
                  </table>
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
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js"></script>

  <script>
    $('#example1').DataTable({
      "scrollY": 100,
      "paging": false,
      "info": false,
      "autoWidth": false,
      "searching": false,
    });
  </script>
</body>

</html>