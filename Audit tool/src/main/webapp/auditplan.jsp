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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script>
     function myfunction() {
    $('#posuvnik1').attr('size', $('a').length);
  }    
  </script>
  <!-- Fontawesome CSS -->
  <link rel="stylesheet" href="assets/css/font-awesome.min.css">

  <!-- Lineawesome CSS -->
  <link rel="stylesheet" href="assets/css/line-awesome.min.css">

  <!-- Chart CSS -->
  <link rel="stylesheet" href="assets/plugins/morris/morris.css">

  <!-- Main CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
  <!-- 
    <link rel="stylesheet" href="assets/css/AnalystDashboard.css"> -->
  <link rel="stylesheet" href="assets/css/Audit_Plan.css">

</head>

<body onload="myfunction()">
<%LoginBean currentUser = ((LoginBean) (session.getAttribute("currentSessionUser")));%>
  <!-- Main Wrapper -->
  <div class="main-wrapper">


    <!-- Sidebar -->
    <div class="sidebar" style="background-color: #00338D!important;width: 170px;" id="sidebar">
      <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
          <ul>
            <li class="nav-item main-drop">
              <span class="user-img"><img src="data:image/jpg;base64,<%= currentUser.getBase64Image()%>" id="image" style="border-radiius:100%!important;" width="50px" height="50px" alt="">
                <span class="status online"></span>
              </span>
              <div class="section">
                    <span style="color:#ffffff;margin-left:85px;font-size: 16px!important;"><%= currentUser.getFullname()%></span>
                    <span style="color:#ffffff;margin-left:85px;"><%= currentUser.getDepartment()%></span>
                    <span style="color:#ffffff;margin-left:85px;"><%= currentUser.getDesignation()%></span>
                  </div>
            </li>
             <li class="submenu">
                  <a class="btn-links btn-inactive" href="dashboard2.jsp"><i class="la la-dashboard"></i> <span> Home</span></a>
                </li>
                <li class="submenu">
                  <a class="btn-links btn-inactive" href="myAudits.jsp"><i class="la la-cube"></i> <span>My Audits</span></a>
                </li>
                                                                      <li class="submenu">
              <a class="btn-links btn-inactive" href="MyContacts.jsp"><i class="la la-user"></i> <span>My Contacts</span></a>
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

        <div class="topnavbar">
          <div class="compactnavbar">

            <nav class="Nav2 navbar-fixed-top" style="background-color:#E1ECF0!important;">
              <ul>
                <li><button type="button" class="boxx-shadow2 nav-1">Audit Background</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Data Request</button></li>
                <li><button type="button" class="boxx-shadow2 nav1" style="width:150px;">Risk and Controls</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Meeting Tracker</button></li>
                 <li><button type="button" class="boxx-shadow2 nav1">Client Details</button></li>

              </ul>

              <ul style="margin-left: 50px;margin-top: -11px;">
                <li style="width: 122px!important;"><a href="#"
                    class="hover-underline-animation nav-linkk boxx-shadow"
                    style="border-right: 1px solid #B7C1D3;width: 65px;margin-right: 19px;padding-right: 5px;color:#27C719!important">General</a>
                </li>
                <li style="width: 122px;margin-left: -18px;"><a href="#"
                    class="hover-underline-animation nav-linkk nav2 boxx-shadow"
                    style="width: 131px;padding-right: 5px;color:#27C719!important">Project objective</a></li>
                <li style="padding-left: 0px;width: 101px;"><a href="#"
                    class="nav-linkk nav-2 boxx-shadow" style="padding-right: 9px;">Milestones</a></li>
                <li style="width: 131px;"><a href="#" class="hover-underline-animation nav-linkk nav2 boxx-shadow"
                    style="padding-right: 9px;">Team Structure</a></li>
                
              </ul>


            </nav>
            <div class="recc boxx-shadow2">
                 <footer>
<span style="margin-left:-30px;">3/4</span>
        <div id="barInside" class="barInside"></div>

        <div class="barBorder">

          <div class="segment"></div>

          <div class="segment1"></div>

          <div class="segment1"></div>

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
        <div class="" style="font-size: 25px;margin-top: 2%;margin-left: -5%;z-index: -1;color:#00338D!important;font-weight: bold;">
          Milestones
          <hr class="hrr">
        </div>
      </div>
      <div class="container-fluid" style="margin-top: 2%;z-index: -1;margin-left: -6%;">
        <div class="">
          <div class="row d-flex">
            <div class="col-lg-8" style="background-color: #ffffff; color: #00338D!important;">
  
                <!-- Audit plan section -->
                <form  action="" method="POST">
                <div class="audit_plan_dropdown">
                  <div class="drpdowncss">
                    <button type="button" disabled onload="myFunction()" class="btn btn-primary dropdown-toggle buttonscss button1"
                      data-toggle="dropdown" style="background-color:#470a68!important;margin-top: 1px;font-size: 12px!important;" id="posuvnik1">
                      Planning
                    </button>
                    <div class="dropdown-menu" style="margin-top: -400px;
                    margin-left: 29px;">
                      <a class="dropdown-item" href="#">1) Audit Announcement/ Kick off Meeting
                        <span><input class="date-field" type="date" id="date1" name="auditannounce" required/></span>
                      </a>
                      <a class="dropdown-item" href="#">2) Information Request to Audit Scope
                        <span><input class="date-field" type="date" id="date2" name="irauditscrop" required/></span>
                      </a>
                      <a class="dropdown-item" href="#">3) Intial discussion with all auditees and set expectations
                        <span><input class="date-field" type="date" id="date3" name="discussiondate" required/></span>
                      </a>
                      <a class="dropdown-item" href="#">4) Walkthrough Session
                        <span><input class="date-field" type="date" id="date4" name="walktrhoughsession" required/></span>
                      </a>
                    </div>
                  </div>

                  <div class="btn-group dropdown drpdowncss">
                    <button type="button" disabled class="btn dropdown-toggle btn-primary buttonscss button2"
                      data-toggle="dropdown" style="margin-top: 5px;font-size: 12px!important;" id="posuvnik2">
                      Fieldwork
                    </button>
                    <div class="dropdown-menu disabled" style="margin-left: 11px;margin-top: 17px;">
                      <div class="text-div">
                        <a class="dropdown-item text-div" href="#"> Initial data request and Validation of existing controls design & effectiveness 
                        <span><input class="date-field" type="date" id="date5" name="datarequest" required/></span>
                        </a>
                       
                      </div>


                    </div>
                  </div>

                  <div class="dropdown open drpdowncss">
                    <button type="button" disabled class="btn btn-primary dropdown-toggle buttonscss dropbtn button3"
                      data-toggle="dropdown" style="margin-top:-30px;font-size: 12px!important;" id="posuvnik3">
                      Discussion with Stakeholders
                    </button>
                    <div class="dropdown-menu dropdown-content" style="margin-left: 14px;
                    margin-top: -10px;">
                      <a class="dropdown-item text-div" href="#">AQM Discussion with the stakeholders
                      </a>
                      <a class="dropdown-item text-div" href="#"> / Interim status update on findings
                        <span><input class="date-field" type="date" id="date6" name="aqm" required/></span>
                      </a>
                      <a class="dropdown-item text-div" href="#"> / Preperation of Draft Report and obtain initial
                        management
                        comments
                      </a>
                    </div>
                  </div>

                  <div class="btn-group dropdown open drpdowncss">
                    <button type="button" disabled class="btn btn-primary dropdown-toggle buttonscss button4"
                      data-toggle="dropdown" id="posuvnik4" style="margin-top: -13px!important;font-size: 12px!important;">
                      Audit Closure
                    </button>
                    <div class="dropdown-menu" style="margin-top:-18px;margin-left: 14px;">
                      <a class="dropdown-item" href="#">1) Provide Draft Report to Stakeholders
                        <span><input class="date-field" type="date" id="date7" name="draftreport" required /></span>
                      </a>
                      <a class="dropdown-item" href="#">2) Exit Meeting
                        <span><input class="date-field" type="date" id="date8" name="exitmeeting"  required/></span>
                      </a>
                      <a class="dropdown-item" href="#">3) Release Final Report
                        <span><input class="date-field" type="date" id="date9" name="releasefinalreport" required /></span>
                      </a>
                    </div>



                  </div>
                </div>
              </div>
              <div class="col-lg-4" style="background-color: #fff;">
                <img src="assets/images/background-div.png" width="450px" height="464px"
                    style="margin-left: -20px!important;margin-top:0px;margin-bottom:-80px;" alt="">
                <img src="assets/images/Picture3.png" style="width: 300px;
                margin-top: -139%;
                height: 270px;
                margin-left: 14%;
                " alt="">
                
            </div>
            <div class="row px-3"> <button type="submit"
              class="btn btn-blue text-center signup_btn"
              style="background-color: #470A68;margin-top: -10px!important;
              margin-left: 990px!important;z-index: 111;" formaction="GeneralServlet" name="btn_auditplan" id="btn_auditplan">Save & Proceed</button>
              
              </form>
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
       
       $("#date5").change(function () {
              var error=""
           var date1= document.getElementById("date1").value;
           var date2= document.getElementById("date2").value;
        var date3= document.getElementById("date3").value;
           var date4= document.getElementById("date4").value;
           var date5= document.getElementById("date5").value;
           var date6= document.getElementById("date6").value;
           var date7= document.getElementById("date7").value;
           var date8= document.getElementById("date8").value;
           var date9= document.getElementById("date9").value;
          

           if ((Date.parse(date1) >= Date.parse(date5))||(Date.parse(date2) >= Date.parse(date5))||(Date.parse(date3) >= Date.parse(date5))) {
               alert(error + "Fieldwork Phase dates are always after the Planning Phase dates.\n");
               document.getElementById("date5").value = "";
               
           }      
           
           
           
       }),
       $("#date6").change(function () {
              var error=""
           var date1= document.getElementById("date1").value;
           var date2= document.getElementById("date2").value;
        var date3= document.getElementById("date3").value;
           var date4= document.getElementById("date4").value;
           var date5= document.getElementById("date5").value;
           var date6= document.getElementById("date6").value;
           var date7= document.getElementById("date7").value;
           var date8= document.getElementById("date8").value;
           var date9= document.getElementById("date9").value;
          
           if ((Date.parse(date5) >= Date.parse(date6)) || (Date.parse(date4) > Date.parse(date6)) || (Date.parse(date3) > Date.parse(date6))||(Date.parse(date2) > Date.parse(date6))||(Date.parse(date1) > Date.parse(date6))) {
               alert(error + "Discussion with stakeholders Phase dates are always after Fieldwork and Planning Phase dates. \n");
               document.getElementById("date6").value = "";
               
           }       
              
           
       }),
       $("#date7").change(function () {
              var error=""
           var date1= document.getElementById("date1").value;
           var date2= document.getElementById("date2").value;
        var date3= document.getElementById("date3").value;
           var date4= document.getElementById("date4").value;
           var date5= document.getElementById("date5").value;
           var date6= document.getElementById("date6").value;
           var date7= document.getElementById("date7").value;
           var date8= document.getElementById("date8").value;
           var date9= document.getElementById("date9").value;
          
           if ((Date.parse(date6) >= Date.parse(date7))||(Date.parse(date5) >= Date.parse(date7))||(Date.parse(date4) >= Date.parse(date7))||(Date.parse(date3) >= Date.parse(date7))||(Date.parse(date2) >= Date.parse(date7))||(Date.parse(date1) >= Date.parse(date7))) {
               alert(error + "Audit closure dates are always after Discussion with stakeholders, Fieldwork and Planning Phase dates.\n");
               document.getElementById("date7").value = "";
           }     
              
           
       }),
       $("#date8").change(function () {
              var error=""
           var date1= document.getElementById("date1").value;
           var date2= document.getElementById("date2").value;
        var date3= document.getElementById("date3").value;
           var date4= document.getElementById("date4").value;
           var date5= document.getElementById("date5").value;
           var date6= document.getElementById("date6").value;
           var date7= document.getElementById("date7").value;
           var date8= document.getElementById("date8").value;
           var date9= document.getElementById("date9").value;
          
           if ((Date.parse(date7) >= Date.parse(date8))||(Date.parse(date6) >= Date.parse(date8))||(Date.parse(date5) >= Date.parse(date8))||(Date.parse(date4) >= Date.parse(date8))||(Date.parse(date3) >= Date.parse(date8))||(Date.parse(date2) >= Date.parse(date8))||(Date.parse(date1) >= Date.parse(date8))) {
               alert(error + "Audit closure dates are always after Discussion with stakeholders, Fieldwork and Planning Phase \n");
               document.getElementById("date8").value = "";
           }     
              
           
       }),
       $("#date9").change(function () {
              var error=""
                  var date1= document.getElementById("date1").value;
                  var date2= document.getElementById("date2").value;
               var date3= document.getElementById("date3").value;
                  var date4= document.getElementById("date4").value;
                  var date5= document.getElementById("date5").value;
                  var date6= document.getElementById("date6").value;
                  var date7= document.getElementById("date7").value;
                  var date8= document.getElementById("date8").value;
                  var date9= document.getElementById("date9").value;
                 
                  if ((Date.parse(date8) >= Date.parse(date9))||(Date.parse(date7) >= Date.parse(date9))||(Date.parse(date6) >= Date.parse(date9))||(Date.parse(date5) >= Date.parse(date9))||(Date.parse(date4) >= Date.parse(date9))||(Date.parse(date3) >= Date.parse(date9))||(Date.parse(date2) >= Date.parse(date9))||(Date.parse(date1) >= Date.parse(date9))) {
                      alert(error + "Audit closure dates are always after Discussion with stakeholders, Fieldwork and Planning Phase dates.\n");
                      document.getElementById("date9").value = "";
                  }     
                     
                  
              });
       
       </script>

	
</body>

</html>