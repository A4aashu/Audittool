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
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
    integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
    integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
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
  <link rel="stylesheet" href="assets/css/MeetingTracker.css">

<!-- table links -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>


<link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
  
<style>
.sidebar .sidebar-menu > ul > li > a span {
    font-weight:500;}
    .nav1{
    font-size: 14px;
  font-weight: 550;
  }
  .nav-1{
  font-size: 14px;
  font-weight: 550;
  }

  #example_wrapper{
      position: absolute;
  }

  th {

      background-color: #00338d !important;

      color: white;

  }

  tr{
  width: 30px !important;
 }


  tr:nth-child(odd) {
      background-color: #B7C1D3!important;

  } 

  tr:nth-child(even) {
      background-color: #E5E5E5!important;

  }


  div.dataTables_wrapper {
      width: 1100px;
      height:200px;
      margin: 0 auto;
      margin-bottom: 70px;
      margin-top: -10px;
  }
  h3{
    color: #00338D;
    margin-bottom: 10px;
    font-weight: bolder;
    font-size: 23px;
  }
  .css-serial {
    counter-reset: serial-number;  /* Set the serial number counter to 0 */
  }
  
  .css-serial td:first-child:before {
    counter-increment: serial-number;  /* Increment the serial number counter */
    content: counter(serial-number);  /* Display the counter */
  }
  .dataTables_empty{
  display:none;
  }
   table{
table-layout:fixed;
}
td{
overflow:hidden;
text-overflow:ellipsis;
}
</style>
  
</head>

<body>
<%LoginBean currentUser=((LoginBean)(session.getAttribute("currentSessionUser")));
String currentUser1=session.getAttribute("auditid").toString();
String test = session.getAttribute("client").toString();
pageContext.setAttribute("test", test);
String test1 = session.getAttribute("review").toString();
pageContext.setAttribute("test1", test1);
String test2 = session.getAttribute("epname").toString();
pageContext.setAttribute("test2", test2);
%>
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
              <a class="btn-links btn-inactive" href="dashboard2.jsp"><i class="la la-dashboard"></i> <span> Home</span></a>
            </li>
            <li class="submenu">
              <a class="btn-links btn-inactive" href="myAudits.jsp"><i class="la la-cube"></i> <span>My Audits</span></a>
            </li>
            <li class="submenu">
            <a class="btn-links btn-inactive" href="MyContacts.jsp"><i class="la la-cube"></i> <span>My
                Contacts</span></a>
          </li>
          <li class="submenu">
            <a class="btn-links" style="margin-top:225px!important;width:135px" href="logout.jsp"><i class="la la-user"></i> <span> Logout
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

              <nav class="Nav2 navbar-fixed-top" style="height:120px!important;background-color:#E1ECF0!important;">
                        <ul style="margin-top:-6px;margin-bottom: 2px;">
                        <li>
                        <marquee  behavior="alternate" scrollamount="5" direction="left" style="padding-top: 7px;margin-right: 10px;margin-left: -33px;color: #00338d;font-weight: 700;">Client Name: <c:out value="${test}" escapeXml="false" /> | Review Name: <c:out value="${test1}" escapeXml="false" /> | Engagement Partner:  <c:out value="${test2}" escapeXml="false" /></marquee>
                        </li>
                        </ul>
              <ul>
                <li><button type="button" class="boxx-shadow2 nav1">Audit Background</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Data Request</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Risk and Controls</button></li>
                <li><button type="button" class="boxx-shadow2 nav-1">Meeting Tracker</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Client Details</button></li>

              </ul>

            


            </nav>
            
          </div>

        </div>

      </div>
      <div class="container" style="margin-top: 9%;margin-bottom:12% ">
      
      </div>

               
      
      <h3 style="margin-top: -28px;
    margin-bottom: 25px;">List of meetings conducted during the review</h3>
      <button class="btn btn-outline-success" id="add_row" class="add" style=" color: #00338D !important;
      background-color: white !important ;margin-left: 85% !important ; margin-top: -20px !important ; border: none; font-weight: bold;"> + New Meeting
      </button>
         <form action="GeneralServlet" method="POST">         
      <table id="example" class="css-serial" style="width:100%">
        <thead>
            <tr style="text-align: center!important;">
                <th style="text-align: center!important;width:50px">SI.No.</th>
                <th style="text-align: center!important;">Meeting Name</th>
                <th style="text-align: center!important;">Expected meeting date</th>
                <th style="text-align: center!important;">Actual meeting date</th>
                <th style="text-align: center!important;">Minutes of Meeting</th>
                <th style="text-align: center!important;">Comments</th>
            </tr>
        </thead>
        <tbody>
        																<% try{
                                                                            	String auditidx=session.getAttribute("auditid").toString();
                                                                            	
                                                                            	
                                                                            	  Connection connection=Dbconfig.getConnection();
                                                                            	
                                                                            		 PreparedStatement psmt2=connection.prepareStatement("select * from Audit_Meetings where audit_id="+auditidx);
                                                                            		 ResultSet resultset2 =psmt2.executeQuery() ;
                                                                            	

                                                                                
                                                                        %>
                                                                         <%  while(resultset2.next()){ %>
           <tr>
          <td style="text-align: center!important"></td>
          <td style="text-align: center!important"><input type="text" name="meetingname"style="border:none;border-radius:5px;resize: none;text-align: center!important;" value="<%= resultset2.getString("Meeting_Name")%>"readonly></input></td>
          <td style="text-align: center!important"><input type="date" name="emd" style="border:none;border-radius:5px;resize: none;text-align: center!important;" value="<%= resultset2.getDate("EMD")%>"></td>
          <td style="text-align: center!important"><input type="date" name="amd" style="border:none;border-radius:5px;resize: none;text-align: center!important;" value="<%= resultset2.getDate("AMD")%>"></td>
          
          <td style="text-align: center!important"><select name="mom" id="mom" style="border:none;border-radius:5px;resize: none;text-align: center!important;height:22px!important;width:100px!important">
                              <option value="<%= resultset2.getString("mom")%>"><%= resultset2.getString("mom")%></option>
                                <option value="Yes">Yes</option>
                                <option value="No">No</option>
                              </select></td>
          <td style="text-align: center!important"><input type="text" name="comments"  style="border:none;border-radius:5px;resize: none;text-align: center!important;"value="<%= resultset2.getString("comments")%>"></input></td>
        </tr>
       
                                 <% } 

        }
        catch(Exception e)
        {
             out.println("");
        }
%>
        </tbody>
    </table>  
                
               
               
                
                
              
            
          
          </div>
          <div class="savebtn">
            <input id="auditid" value="<%=session.getAttribute("auditid").toString()%>" name="auditid" hidden>
             <button type="submit"
            class="btn btn-blue text-center signup_btn"
            style="background-color: #470A68;
                margin-left: 1120px!important;
   
    margin-top: 290px !important;background-color: #470A68;
    z-index: 111; border-radius: 60px !important; color: #fff !important;
    padding: 4px !important;
    width: 180px !important;
    font-weight: bold !important;    height: 31px;">Save & Proceed</button>
          </div>
          </form>
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
  <!-- <script src="assets/js/jquery-3.5.1.min.js"></script> -->

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
  <!-- <script>
    $(document).ready(function () {

        $('#add_row').click(function () {
            //Add row
            row = '';
            row += '<tr><td></td><td><input type="text" class="    "></td> <td><input type="date" class="    "></td><td><input type="date" class="    "></td><td><input type="checkbox" style=" float:right" ></td><td><input type="text" class="    "></td>';
            $("tbody").append(row);
        })

       

    });
    
</script> -->

<script>
  $(document).ready(function () {
      $('#example').DataTable({
          scrollY: 200,
          scrollX: true,
          scrollCollapse: true,
          scroller: false,
          "lengthChange": false,
          "searching": false,
          "paging": false,
          "info": false,
          
      });
      $('#add_row').click(function () {
            //Add row
            row = '';
            row += '<tr><td style="text-align: center!important"></td><td style="text-align: center!important"><input type="text" class="    " style="border:none;border-radius:5px;resize: none;text-align: center!important;" name="meetingname"></td> <td style="text-align: center!important"><input type="date" class="    " style="border:none;border-radius:5px;resize: none;text-align: center!important;" name="emd"></td><td style="text-align: center!important"><input type="date" class="    " style="border:none;border-radius:5px;resize: none;text-align: center!important;" name="amd"></td><td style="text-align: center!important"><select name="mom" id="mom" class="    "  style="border:none;border-radius:5px;resize: none;text-align: center!important;height:22px!important;width:100px!important"><option value="">Status</option><option value="Yes">Yes</option><option value="No">No</option></select></td><td style="text-align: center!important"><input type="text" class="    "  style="border:none;border-radius:5px;resize: none;text-align: center!important;"name="comments"></td>';
            $("tbody").append(row);
        })
  });
  
</script>

</body>

</html>