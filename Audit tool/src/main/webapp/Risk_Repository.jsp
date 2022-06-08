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
  <link rel="stylesheet" href="assets/css/Risk_Repository.css">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
  <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">

  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"></script>
  <link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
  <script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


</head>

<body>
<%LoginBean currentUser=((LoginBean)(session.getAttribute("currentSessionUser")));%>
<sql:setDataSource var = "snapshot" driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
         url = "jdbc:sqlserver://IN-AASHUYADAV;databaseName=Audit_tool"
         user = "aashu" password = "kpmgKPMG1"/>
		<sql:query dataSource = "${snapshot}" var = "resultset">
         SELECT count(distinct(MegaProcess)) from racm;
      	</sql:query>
      	<sql:query dataSource = "${snapshot}" var = "resultset1">
         SELECT count(distinct(DepartmentCategorisation)) from racm;
      	</sql:query>
      	<sql:query dataSource = "${snapshot}" var = "resultset2">
         SELECT count(distinct(Process)) from racm;
      	</sql:query>
      	<sql:query dataSource = "${snapshot}" var = "resultset3">
         SELECT count(distinct(Subprocess)) from racm;
      	</sql:query>
      	<sql:query dataSource = "${snapshot}" var = "resultset4">
         SELECT count(distinct(Control)) from racm;
      	</sql:query>
      	<sql:query dataSource = "${snapshot}" var = "resultset5">
         SELECT count(distinct(Risks)) from racm;
      	</sql:query>
  <div class="main-wrapper">


    <!-- Sidebar -->
    <div class="sidebar" style="background-color: #00338D!important;width: 170px;" id="sidebar">
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
            <a class="btn-links" style="margin-top:235px!important;width:135px" href="logout.jsp"><i class="la la-user"></i> <span> Logout
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

            <nav class="Nav2 navbar-fixed-top">

              <ul style="margin-left: 380px;margin-top: 4px;">

                <li style="width: 122px!important;color:#00338D!important;"><a href="#" class=" nav-linkk nav-2 boxx-shadow" style="color:#00338D!important;width: 135px;
                    margin-right: 15px;  padding-right: 0px; text-decoration: solid!important;">RAC Dashboard</a>

                </li>

                <li style="border-left: 1px solid black;width: 122px;margin-left: -1px;color:#00338D!important;"><a href="RAC_Library.jsp" class="hover-underline-animation nav-linkk nav2 boxx-shadow"
                    style="width: 140px;padding-right: 5px;padding-left: 15px;color: #00338D!important;">RAC Library</a></li>
              </ul>


            </nav>
            <!-- <div class="recc boxx-shadow2">
                  <h5>Name of Client</h5>
                  <h5>Engagement Name</h5>
                </div> -->
          </div>

        </div>

      </div>

      <div class="container-fluid" style="margin-top: 3%;margin-left: -6%;">
        <div class="card border-0">
          <div class="row d-flex">
            <div class="col-lg-12" style="background-color: #ffffff; color: #00338D!important;">
              <div class="cards-left" style="margin-top: 25px;">
                <img class="blue" src="assets/images/cardpic1.png" alt="" />
                <img class="icon1" src="assets/images/1.png" alt="" />
                <h5 class="icon-tag-2">No of Mega Processes<br> Covered</h5>
                <h5 class="icon-tag-2" style="margin-top: 45px;
                                font-size: 30px!important;">${resultset.rowsByIndex[0][0]}</h5>

                <img class="red" src="assets/images/cardpic2.png" alt="" />
                <img class="icon2" src="assets/images/2.png" alt="" />
                <h5 class="icon-tag">No of Departments<br> Covered</h5>
                <h5 class="icon-tag" style="margin-top: 45px;
                                font-size: 30px!important;">${resultset1.rowsByIndex[0][0]}</h5>

                <img class="darkblue" src="assets/images/cardpic3.png" alt="" />
                <img class="icon3" src="assets/images/3.png" alt="" />
                <h5 class="icon-tag-1">No of Processes<br> Covered</h5>
                <h5 class="icon-tag-1" style="font-size: 30px!important;">${resultset2.rowsByIndex[0][0]}</h5>

                <img class="purple" src="assets/images/cardpic4.png" alt="" />
                <img class="icon4" src="assets/images/4.png" alt="" />
                <h5 class="icon-tag-4">No of Sub-Processes<br> Covered</h5>
                <h5 class="icon-tag-4" style="font-size: 30px!important;">${resultset3.rowsByIndex[0][0]}</h5>

                <img class="five" src="assets/images/cardpic6.png" alt="" />
                <img class="icon5" src="assets/images/5.png" alt="" />
                <h5 class="icon-tag-5">No of Controls<br> Covered</h5>
                <h5 class="icon-tag-5" style="font-size: 30px!important;">${resultset4.rowsByIndex[0][0]}</h5>

                <img class="six" src="assets/images/cardpic5.png" alt="" />
                <img class="icon6" src="assets/images/6.png" alt="" />
                <h5 class="icon-tag-6">No of Risks Covered</h5>
                <h5 class="icon-tag-6" style="font-size: 30px!important;">${resultset5.rowsByIndex[0][0]}</h5>
              </div>
            </div>
            <div class="chartCard">
              <h4 style="font-size:23px;margin-left:8px!important;">No of sub-processes covered under Mega Process</h4>
              <div class="chartBox" style="display: flex;flex-direction:row;margin-top:-50px;">
                <div class="" style="display: flex;flex-direction:column;padding-right: 110px;">
                  <h5 style="color: #00338d!important;font-size: 20px!important;">No. of sub-processes covered under Mega Process</h5>
                  <br>
                  <canvas id="myChart" style="width:500px;height:300px;"></canvas>
                </div>
                <div class="" style="display: flex;flex-direction:column;margin-top: -130px;">
                  <h5 style="color: #00338d!important;font-size: 20px!important;text-align:center;">No. of Risks and Controls covered under Mega Process</h5>
                  <br>
                  <canvas id="myChart2" style="width:500px;height:370px;"></canvas>
                </div>
              </div>
              <!-- <div class="chartBox">
                              <canvas id="myChart2"></canvas>
                            </div> -->


            </div>
            <!-- <div class="row px-3"> <button type="submit" class="btn btn-blue text-center signup_btn" style="background-color: #470A68;margin-top: 10px!important;
                            margin-left: 700px!important;">Save & Proceed</button>
                            <button type="submit" class="btn btn-blue text-center signup_btn" style="background-color: #470A68;margin-left: 85.5%!important;
                                margin-top: -30.05px!important;">Submit</button>
                        </div> -->
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/chartjs-plugin-datalabels/2.0.0/chartjs-plugin-datalabels.min.js"
    integrity="sha512-R/QOHLpV1Ggq22vfDAWYOaMd5RopHrJNMxi8/lJu8Oihwi4Ho4BRFeiMiCefn9rasajKjnx9/fTQ/xkWnkDACg=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script>
    // setup 
    const data = {
      labels: ['Operations', 'Finance & Accounts', 'Legal', 'Network & IT'],
      datasets: [{
        label: 'No of sub-processes covered under Mega Process',
        data: [15, 6, 3, 2],
        backgroundColor: [
          'rgba(74,10,104, 0.9)',
          'rgba(72,54,152, 0.9)',
          'rgba(0,51,141, 0.9)',
          'rgba(0, 145, 218, 0.9)',
        ],
        borderColor: [
          'rgba(74,10,104, 0.7)',
          'rgba(72,54,152, 0.7)',
          'rgba(0,51,141, 0.7)',
          'rgba(0, 145, 218, 0.7)',

        ],
        borderWidth: 1
      }]
    };

    // config 
    const config = {
      type: 'bar',
      data,
      plugins: [ChartDataLabels],
      options: {
        plugins: {
          datalabels: {
            anchor: 'end',
            align: 'right',
            fontStyle: 'bolder',
          }, legend: {
            display: false,
          }
        },
        indexAxis: 'y',
        scales: {
        	y: {
                display: true,
                ticks: {
                  color: '#00338D',
                },
                font:{
                  size:12,
                },
            grid: {
              drawOnChartArea: false,
              drawBorder: false
            },
            title: {
              display: true,
              text: 'Mega-Process',
              color: '#00338D',
              font: {
                size: 20,
                style: 'normal',
                lineHeight: 1.2
              },
              padding: { top: 30, left: 0, right: 0, bottom: 0 }
            }
          }, x: {
            display: true,
            grid: {
              drawOnChartArea: false,
              drawBorder: false
            }
          }
        }
      }
    };

    // render init block
    const myChart = new Chart(
      document.getElementById('myChart'),
      config
    );
  </script>
  <script>
    // setup 
    const data2 = {
      labels: ['Operations', 'Finance & Accounts', 'Legal', 'Network & IT'],
      datasets: [{
        label: 'No of Risks',
        data: [46, 12, 12, 2],
        backgroundColor: [
          'rgba(0,51,141, 0.9)',

        ],
        borderColor: [
          'rgba(0,51,141, 0.7)',
        ],
        borderWidth: 1
      },
      {
        label: 'No of Controls',
        data: [46, 12, 12, 2],
        backgroundColor: [
          'rgba(0, 145, 218, 0.9)',
        ],
        borderColor: [
          'rgba(0, 145, 218, 0.7)',

        ],
        borderWidth: 1
      },
      ]
    };

    // config 
    const config2 = {
      type: 'bar',
      plugins: [ChartDataLabels],
      data: data2,
      options: {
        plugins: {
          datalabels: {
            anchor: 'end',
            align: 'right',
            fontStyle: 'bolder',
          }
        },
        indexAxis: 'y',
        scales: {
        	y: {
                display: true,
                ticks: {
                  color: '#00338D',
                },
                font:{
                  size:12,
                  weight:'bold',
                },
            grid: {
              drawOnChartArea: false,
              drawBorder: false
            },
            title: {
              display: true,
              text: 'Mega-Process',
              color: '#00338D',
              font: {
                size: 20,
                style: 'normal',
                lineHeight: 1.2
              },
              padding: { top: 30, left: 0, right: 0, bottom: 0 }
            }
          }, x: {
            display: true,
            grid: {
              drawOnChartArea: false,
              drawBorder: false
            }
          }
        }
      }
    };

    // render init block
    const myChart2 = new Chart(
      document.getElementById('myChart2'),
      config2
    );
  </script>


</body>

</html>