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
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=0"
    />
    <meta name="description" content="Smarthr - Bootstrap Admin Template" />
    <meta
      name="keywords"
      content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects"
    />
    <meta name="author" content="Dreamguys - Bootstrap Admin Template" />
    <meta name="robots" content="noindex, nofollow" />
    <title>IA Accelerator</title>

    <!-- Favicon -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap-extended.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/fonts/simple-line-icons/style.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/colors.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
   
    <script>
      function myfunction() {
        $("#posuvnik1").attr("size", $("a").length);
      }
    </script>
    <script>
    $(document).ready(function() {

        var table = $('#example').DataTable({
        	scrollY: 200,
            scrollX: true,
            scrollCollapse: true,
            scroller: false,
            "lengthChange": false,
            "searching": false,
            "paging": false,
            "info": false,
           
            
        } );
        
        
        $('#example tbody').on('click', 'tr', function () {
            var data = table.row( this ).data();
            var id=data[0];
            var processid=data[1];
            var objectiveid=data[2];
            var controlriskid=data[3];
            var client=data[4];
            var review=data[5];
            var epname=data[6];
           
            window.location.href = "<%=request.getContextPath()%>/Data_Request.jsp?&id="+id+ "&processid=" + processid+ "&objid=" + objectiveid+ "&controlriskid=" + controlriskid+"&client="+client+"&review="+review+"&epname="+epname;
            
        } );
       
    } );
     
     
    </script>
    
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />

    <!-- Lineawesome CSS -->
    <link rel="stylesheet" href="assets/css/line-awesome.min.css" />

    <!-- Chart CSS -->
    <link rel="stylesheet" href="assets/plugins/morris/morris.css" />

    <!-- Main CSS -->
    <link rel="stylesheet" href="assets/css/style.css" />
    <!-- 
    <link rel="stylesheet" href="assets/css/AnalystDashboard.css"> -->
    <link rel="stylesheet" href="assets/css/myaudits.css" />
    <style>
    th, td{
    font-size:14px;
   
    }
    dl li, ol li, ul li {
   line-height: 1.4!important; 
}
tr:nth-child(odd) {
      background-color: #B7C1D3!important;

  } 

  tr:nth-child(even) {
      background-color: #E5E5E5!important;

  }
  table.dataTable.display tbody tr.odd>.sorting_1, table.dataTable.order-column.stripe tbody tr.odd>.sorting_1 {
    background-color: #B7C1D3!important;
}
 table.dataTable.display tbody tr.even>.sorting_1, table.dataTable.order-column.stripe tbody tr.even>.sorting_1 {
    background-color: #E5E5E5!important;
}
    </style>
    
  </head>

  <body>
  <%LoginBean currentUser = ((LoginBean) (session.getAttribute("currentSessionUser")));%>
  <c:set var="userdata" scope="session"
			value="<%= currentUser.getDesignation()%>" />
  <sql:setDataSource var = "snapshot" driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
         url = "jdbc:sqlserver://IN-AASHUYADAV;databaseName=Audit_tool"
         user = "aashu" password = "kpmgKPMG1"/>
		<sql:query dataSource = "${snapshot}" var = "resultset">
         SELECT count(distinct(megaprocess)) from audits where createdby=?;
         <sql:param value = "<%=currentUser.getEmail()%>" />
      	</sql:query>
      	<sql:query dataSource = "${snapshot}" var = "resultset1">
         SELECT count(distinct(Department)) from audits where createdby=?;
         <sql:param value = "<%=currentUser.getEmail()%>" />
      	</sql:query>
      	<sql:query dataSource = "${snapshot}" var = "resultset2">
         SELECT count(distinct(Name_of_client)) from audits where createdby=?;
         <sql:param value = "<%=currentUser.getEmail()%>" />
      	</sql:query>
      	<sql:query dataSource = "${snapshot}" var = "resultset3">
         SELECT count(*) from audits where createdby=?;
         <sql:param value = "<%=currentUser.getEmail()%>" />
      	</sql:query>
      	
     <!-- Sidebar -->
  <div class="sidebar" style="background-color: #00338D!important;width: 170px;" id="sidebar">
    <div class="sidebar-inner slimscroll">
      <div id="sidebar-menu" class="sidebar-menu">
        <ul>
          <li class="nav-item main-drop" style="margin-left: -28px">
            <span class="user-img"><img src="data:image/jpg;base64,<%= currentUser.getBase64Image()%>" id="image" style="border-radiius:100%!important;" width="50px" height="50px" alt="">
<span class="status online"></span>
</span>
            <div class="section">
              <span style="color:#ffffff;margin-left:85px;font-size: 16px!important;"><%= currentUser.getFullname()%></span>
                    <span style="color:#ffffff;margin-left:85px;"><%= currentUser.getDepartment()%></span>
                    <span style="color:#ffffff;margin-left:85px;"><%= currentUser.getDesignation()%></span>
            </div>
          </li>
         <c:if test="${userdata == 'Analyst'||userdata == 'Associate Consultant' ||userdata == 'Consultant' || userdata == 'Assistant Manager'}">
          <li class="submenu">
            <a class="btn-links btn-inactive" href="dashboard1.jsp"><i class="la la-dashboard"></i> <span>
                Home</span></a>
          </li>
          </c:if>
          <c:if test="${userdata == 'Manager' || userdata == 'Partner' ||userdata == 'Director' || userdata == 'Associate Director'}">
          <li class="submenu">
            <a class="btn-links btn-inactive" href="dashboard2.jsp"><i class="la la-dashboard"></i> <span>
                Home</span></a>
          </li>
          </c:if>
          <li class="submenu">
            <a class="btn-links" href="myAudits.jsp" ><i class="la la-cube"></i> <span>My
                Audits</span></a>
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
    <div class="content-right">
      <img class="bg-img" src="assets/images/bg-1.png" alt="" />
      <p class="chart-text">On-Going vs Completed Engagements</p>
      <div class="piechart">
        <div class="chartBox">
            <canvas id="myChart"></canvas>
        </div>
      </div>
  </div>
    </div>
    <div class="content-left">
      <div class="cards-left1">
        <img class="blue" src="assets/images/card1.png" alt="" />
        <img class="icon1" src="assets/images/icon1.png" alt="" />
        <h5 class="icon-tag-2" style="margin-left:38px;">No. of <br />Mega Process</h5>
        <h1 class="icon-tag-2" style="margin-top:50px;margin-left:78px;font-size: 30px;">${resultset.rowsByIndex[0][0]}</h1>
        
        <img class="icon2" src="assets/images/icon2.png" alt="" />
        <img class="red" src="assets/images/card2.png" alt="" />
   <h5 class="icon-tag-2" style="margin-left:300px">No. of <br />Departments</h5>
         <h1 class="icon-tag-2" style="margin-top:50px;margin-left:335px;font-size: 30px;">${resultset1.rowsByIndex[0][0]}</h1>
      </div>
      <div class="cards-left2">

        <img class="darkblue" src="assets/images/card3.png" alt="" />
        <img class="icon3" src="assets/images/icon3.png" alt="" />
        <h5 class="icon-tag-1">No. of Clients</h5>
        <h5 class="icon-tag-1"  style="font-size: 30px;">${resultset2.rowsByIndex[0][0]}</h5>
        

        <img class="icon4" style="margin-top:-50px"src="assets/images/icon4.png" alt="" />
        <img class="purple" src="assets/images/card4.png" alt="" />
        <h5 class="icon-tag-3"style="margin-top:-20px" >No. of Completed <br/> Engagements</h5>
        <h5 class="icon-tag-3" style="font-size: 30px;">0</h5>
      </div>

      <div class="tableanddrp">
        <div class="tablelist1">
          <h4>List of Reviews</h4>
          <div class="table-responsive tablecss">
                <div class="data-table">
                    <table id="example" class="display nowrap" style="width:100%">
               <%
                                                                            try{
                                                                            	
                                                                                Connection connection=Dbconfig.getConnection();
                                                                                PreparedStatement psmt1=connection.prepareStatement("select * from audits where createdby=?;");
                                                                                psmt1.setString(1,currentUser.getEmail());

                                                                                ResultSet resultset1 =psmt1.executeQuery() ;
                                                                        %>
                <thead>
                  <tr>
                    <th style="text-align: center;">Audit ID</th>
                    <th style="text-align: center;" hidden>Processid</th>
                    <th style="text-align: center;" hidden>objectiveid</th>
                    <th style="text-align: center;" hidden>controlriskid</th>
                    <th style="text-align: center;">Client Name</th>
                    <th style="text-align: center;">Review Name</th>
                    <th style="text-align: center;" hidden>epname</th>
                    <th style="text-align: center;">Start Date</th>
                    <th style="text-align: center;">End Date</th>
                    <th style="text-align: center;">Progress</th>
                    <th style="text-align: center;">Last Modified By</th>
                  </tr>
                </thead>
                <tbody>
                  
                 <%  while(resultset1.next()){ %>
       																			 <tr>
                                                                                    <td 
                                                                                        style="text-align: center;">
                                                                                        <%= resultset1.getString("Initiative_id")%></td>
                                                                                        <td 
                                                                                        style="text-align: center;"hidden>
                                                                                        <%= resultset1.getString("processid")%></td>
                                                                                         <td 
                                                                                        style="text-align: center;"hidden>
                                                                                        <%= resultset1.getString("objectiveid")%></td>
                                                                                        <td 
                                                                                        style="text-align: center;"hidden>
                                                                                        <%= resultset1.getString("controlriskid")%></td>
                                                                                    <td 
                                                                                        style="text-align: center;">
                                                                                        <%= resultset1.getString("Name_of_client")%></td>
                                                                                        <td 
                                                                                        style="text-align: center;">
                                                                                        <%= resultset1.getString("Engagement_name")%></td>
                                                                                        <td 
                                                                                        style="text-align: center;" hidden>
                                                                                        <%= resultset1.getString("epname")%></td>
                                                                                    <td 
                                                                                        style="text-align: center;">
                                                                                        <%= resultset1.getString("Audit_start_date")%></td>
                                                                                        <td 
                                                                                        style="text-align: center;">
                                                                                        <%= resultset1.getString("Audit_end_date")%></td>
                                                                                    <td 
                                                                                        style="text-align: center;">
                                                                                        Ongoing</td>
                                                                                        <td 
                                                                                        style="text-align: center;">
                                                                                        <%= resultset1.getString("createdby")%></td>
                                                                                    
                                                                                </tr>
            <% } 

        }
        catch(Exception e)
        {
             out.println("No DATA");
        }
%>
                 
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
   <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chartjs-plugin-datalabels/2.0.0/chartjs-plugin-datalabels.min.js" integrity="sha512-R/QOHLpV1Ggq22vfDAWYOaMd5RopHrJNMxi8/lJu8Oihwi4Ho4BRFeiMiCefn9rasajKjnx9/fTQ/xkWnkDACg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
// setup
const data = {
labels: ['On-going Engagements', 'Completed Engagements'],
datasets: [{
label: 'Tasks',
data: [${resultset3.rowsByIndex[0][0]},20],
backgroundColor: [
'rgba(74, 10, 104, 0.9)',
'rgba(188, 32, 75, 0.9)',
],
borderColor: [
'rgba(74, 10, 104, 0.9)',
'rgba(188, 32, 75, 0.9)',
'rgba(255, 255, 255, 0.9)'
],
borderWidth: 1
}]
};



// config
const config = {

                                        type: 'pie',

                                        data,

                                        plugins: [ChartDataLabels],

                                        options: {

                                            plugins: {



                                                datalabels: {



                                                    fontColor: '#ffffff',

                                                    color: '#ffffff',

                                                    fontStyle: 'bolder',

                                                }

                                            },

                                            indexAxis: 'y',

                                        }

                                    };



// render init block
const myChart = new Chart(
document.getElementById('myChart'),
config
);
</script>
  </body>
</html>
