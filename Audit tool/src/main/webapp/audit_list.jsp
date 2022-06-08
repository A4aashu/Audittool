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
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
  <meta name="description" content="Smarthr - Bootstrap Admin Template" />
  <meta name="keywords"
    content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects" />
  <meta name="author" content="Dreamguys - Bootstrap Admin Template" />
  <meta name="robots" content="noindex, nofollow" />
  <title>IA Accelerator</title>

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
  <script src="https://cdn.jsdelivr.net/npm/chart.js@3.0.0-beta/dist/chart.min.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

  <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">

  <script>
    function myfunction() {
      $("#posuvnik1").attr("size", $("a").length);
    }
  </script>
  <!-- Fontawesome CSS -->
  <link rel="stylesheet" href="assets/css/font-awesome.min.css" />

  <!-- Lineawesome CSS -->
  <link rel="stylesheet" href="assets/css/line-awesome.min.css" />

  <!-- Chart CSS -->
  <link rel="stylesheet" href="assets/plugins/morris/morris.css" />

  <!-- Main CSS -->
  <link rel="stylesheet" href="assets/css/style.css" />

  <link rel="stylesheet" href="assets/css/audit_list1.css" />
  <style>
    /* #example {
        position: absolute!important;
        margin-top: 10px!important;
        width: 1140px !important;
    } */
    #example_wrapper {
      position: absolute;
      z-index: 11 !important;
    }
select
{
width:200px!important;
}
    th {
      background-color: #00338d !important;
      color: white;
    }

    td,
    th {
      padding: 20px;
      text-align: center;      
    }

    /* tr:nth-child(even) input {
        background-color: #E5E5E5;

    }*/

    tr:nth-child(odd) {
      background-color: #B7C1D3 !important;

    }

    tr:nth-child(even) {
      background-color: #E5E5E5 !important;

    }

    /* td{
      text-align: center!important;
    } */

    div.dataTables_wrapper {
      width: 1140px;
      height: 200px!important;
      margin: 0 auto;
    }

    .dataTable {
      margin-left: 0px !important;
      margin-bottom: 17px !important;

    }

    /* .dataTables_scrollHead{
        margin-bottom: -20px!important;
    } */
    /* 
    table {
        table-layout: fixed;
    }

    td {
        overflow: hidden;
        text-overflow: ellipsis;
    }

    tr:nth-child(odd) {
        background-color: #B7C1D3;
    } */
  </style>
</head>

<body>
<%LoginBean currentUser=((LoginBean)(session.getAttribute("currentSessionUser")));%>
  <sql:setDataSource var = "snapshot" driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
         url = "jdbc:sqlserver://IN-AASHUYADAV;databaseName=Audit_tool"
         user = "aashu" password = "kpmgKPMG1"/>
		<sql:query dataSource = "${snapshot}" var = "resultset">
         SELECT count(distinct(megaprocess)) from audits;
      	</sql:query>
      	<sql:query dataSource = "${snapshot}" var = "resultset1">
         SELECT count(distinct(Department)) from audits;
      	</sql:query>
      	<sql:query dataSource = "${snapshot}" var = "resultset2">
         SELECT count(distinct(Name_of_client)) from audits;
      	</sql:query>
  <!-- Sidebar -->
  <div class="sidebar" style="background-color: #00338D!important;width: 170px;" id="sidebar">
    <div class="sidebar-inner slimscroll">
      <div id="sidebar-menu" class="sidebar-menu">
        <ul>
          <li class="nav-item main-drop" style="margin-left: -28px">
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

  <div class="content-right">
    <img class="bg-img" src="assets/images/bg-1.png" alt="" />
    <p class="chart-text">List of Review</p>
    <!-- (A) DONUT CHART -->
    <div class="donut">
      <div class="chartBox2">
        <canvas id="myChart2" style="height: 280px;
        width: 280px;
        margin-top: 15px;
        margin-left: 40px"></canvas>
      </div>
    </div>
  </div>
  <div class="content-left">
    <div class="cards-left">
      <img class="blue" src="assets/images/card1.png" alt="" />
      <img class="icon1" src="assets/images/icon1.png" alt="" />
      <h5 class="icon-tag-2" style="margin-left:25px;">No. of <br />Mega Process</h5>
      <h1 class="icon-tag-2" style="margin-top:50px;margin-left:78px;font-size: 30px;">${resultset.rowsByIndex[0][0]}</h1>

      <img class="icon2" src="assets/images/icon2.png" alt="" />
      <img class="red" src="assets/images/card2.png" alt="" />
      <h5 class="icon-tag">No. of <br />Categorization</h5>
      <h1 class="icon-tag-2" style="margin-top:50px;margin-left:335px;font-size: 30px;">${resultset1.rowsByIndex[0][0]}</h1>

      <img class="darkblue" src="assets/images/card3.png" alt="" />
      <img class="icon3" src="assets/images/icon3.png" alt="" />
      <h5 class="icon-tag-1">No. of Clients</h5>
      <h5 class="icon-tag-1" style="font-size: 30px;">${resultset2.rowsByIndex[0][0]}</h5>
    </div>
    <div class="text-left">
      <div class="dropdown1">
        <h5>Mega Process</h5>
        <div class="dropdown dropdowncss">
         <select class="form-control dropdowncss filter" onchange="filter_rows()" id="dropdownMenuButton1" name="process" style="color:#495057!important;">
<option value="" style="color:black!important;">Choose Value</option>
</select>
        </div>
      </div>
      <div class="dropdown2">
        <h5>Categorization</h5>
        <div class="dropdown dropdowncss">
          <select class="form-control dropdowncss filter" onchange="filter_rows()" id="dropdownMenuButton2" name="process" style=" margin-bottom: 20px;
  background-color: #b9b4cf !important;
  border-radius: 30px !important;
  color:#495057!important;
  font-weight: bold;
  height: 30px;
  font-size: 14px;
  border: none !important;">
<option value="" style="color:black!important;">Choose Value</option>
</select>
        </div>
      </div>
    </div>

    <div class="tableanddrp" style="margin-top: -25px;">
      <div class="tablelist1">
        <h4>Audit History</h4>

        <table id="example" class="display nowrap css-serial" style="width: 100%">
          <thead>
            <tr class="filters">
              <th style="text-align: center;">Audit Id</th>
              <th style="text-align: center;">Review Name</th>
              <th style="text-align: center;">Mega Process</th>
              <th style="text-align: center;">Categorization</th>
              <th style="text-align: center;">Engagement Manager</th>
            </tr>
          </thead>
          <tbody>
          <%
                                                                            try{
                                                                            	
                                                                                Connection connection=Dbconfig.getConnection();
                                                                                PreparedStatement psmt1=connection.prepareStatement("select * from audits;");
                                                                                

                                                                                ResultSet resultset1 =psmt1.executeQuery() ;
                                                                        %>
            
             <%  while(resultset1.next()){ %>
       																			 <tr>
                                                                                    <td 
                                                                                        >
                                                                                        <%= resultset1.getString("Initiative_id")%></td>
                                                                                        <td 
                                                                                       >
                                                                                        <%= resultset1.getString("Engagement_name")%></td>
                                                                                         <td 
                                                                                    class="mega" data-mega="<%= resultset1.getString("MegaProcess")%>" >
                                                                                        <%= resultset1.getString("MegaProcess")%></td>
                                                                                        <td 
                                                                                     class="department" data-department="<%= resultset1.getString("Department")%>"   >
                                                                                        <%= resultset1.getString("Department")%></td>
                                                                                    <td 
                                                                                       >
                                                                                        <%= resultset1.getString("emname1")%></td>
                                                                                       
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

    <img class="bg-img-2" src="assets/images/bg-2.png" alt="" />

    <div class="content2">
      <div class="dropdown3">
        <h5>Mega Process</h5>
        <div class="dropdown dropdowncss">
          <select class="form-control dropdowncss filter1" onchange="filter_rows1()" id="dropdownMenuButton3" name="process" style="color:#495057!important;width:20%!important; margin-bottom: 20px;
  background-color: #b9b4cf !important;
  border-radius: 30px !important;
  color: #00338d;
  font-weight: bold;
  height: 30px;
  font-size: 14px;
  border: none !important;">
<option value="" style="color:black!important;">Choose Value</option>
</select>
        </div>
      </div>
      <div class="dropdown4">
        <h5>Categorization</h5>
        <div class="dropdown dropdowncss">
          <select class="form-control dropdowncss filter1" onchange="filter_rows1()" id="dropdownMenuButton4" name="process" style="color:#495057!important;width:20%!important; margin-bottom: 20px;
  background-color: #b9b4cf !important;
  border-radius: 30px !important;
  color: #00338d;
  font-weight: bold;
  height: 30px;
  font-size: 14px;
  border: none !important;">
<option value="" style="color:black!important;">Choose Value</option>
</select>
        </div>
      </div>
      <div class="chartCard" style="display: flex;flex-direction:column">
        <h4 style="font-size:23px;margin-left:100px!important;">No of sub-processes covered under Mega Process</h4>
        <div class="chartBox">
          <canvas id="myChart"></canvas>
        </div>
      </div>

    </div>

    <div class="tableanddrp">
      <div class="tablelist1">
        <h4>List of Potential Reviews</h4>
        <div class="tablecss">
          <div class="data-table">
            <table id="example1" class="table" style="width: 1100px!important;
            margin-left: 0px">
              <thead>
                <tr class="filters">
                  <th style="text-align: center;">SI.No.</th>
                  <th style="text-align: center;">Review Name</th>
                  <th style="text-align: center;">Mega Process</th>
                  <th style="text-align: center;">Categorization</th>
                </tr>
              </thead>
              <tbody>
                <%
                                                                            try{
                                                                            	
                                                                                Connection connection=Dbconfig.getConnection();
                                                                                PreparedStatement psmt1=connection.prepareStatement("select * from audits;");
                                                                                

                                                                                ResultSet resultset1 =psmt1.executeQuery() ;
                                                                        %>
            
             <%  while(resultset1.next()){ %>
       																			 <tr>
                                                                                    <td 
                                                                                        >
                                                                                        <%= resultset1.getString("Initiative_id")%></td>
                                                                                        <td 
                                                                                       >
                                                                                        <%= resultset1.getString("Engagement_name")%></td>
                                                                                         <td 
                                                                                    class="mega1" data-mega1="<%= resultset1.getString("MegaProcess")%>"  >
                                                                                        <%= resultset1.getString("MegaProcess")%></td>
                                                                                        <td 
                                                                                       class="department1" data-department1="<%= resultset1.getString("Department")%>" >
                                                                                        <%= resultset1.getString("Department")%></td>
                                                                                 
                                                                                       
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/chartjs-plugin-datalabels/2.0.0/chartjs-plugin-datalabels.min.js"
    integrity="sha512-R/QOHLpV1Ggq22vfDAWYOaMd5RopHrJNMxi8/lJu8Oihwi4Ho4BRFeiMiCefn9rasajKjnx9/fTQ/xkWnkDACg=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

  <script>

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
          legend: {
            display: false,
          },
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
        },
        plugins: {
          legend: {
            display: false
          },
          datalabels: {
            anchor: 'end',
            align: 'right',
            fontStyle: 'bolder',
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
      labels: ['Mega Processes', 'Categorization', 'Clients'],
      datasets: [{
        label: 'Tasks',
        data: [${resultset.rowsByIndex[0][0]}, ${resultset1.rowsByIndex[0][0]}, ${resultset2.rowsByIndex[0][0]}],
        backgroundColor: [
          'rgba(0, 145, 218, 0.9)',
          'rgba(188, 32, 75, 0.9)',
          'rgba(0, 51, 141, 0.9)',

        ],
        borderColor: [
          'rgba(0, 145, 218, 0.9)',
          'rgba(188, 32, 75, 0.9)',
          'rgba(0, 51, 141, 0.9)',

        ],
        borderWidth: 1
      }]
    };

    // config 
    const config2 = {
      type: 'doughnut',
      data: data2,
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
    const myChart2 = new Chart(
      document.getElementById('myChart2'),
      config2
    );
  </script>
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
      }),
        $('#example1').DataTable({
          scrollY: 200,
          scrollX: true,
          scrollCollapse: true,
          scroller: false,
          "lengthChange": false,
          "searching": false,
          "paging": false,
          "info": false,
        });
    });
  </script>
<script>
function useNthColumn(n) {

	   var data = [],
	       i,
	       yourSelect,
	       unique;

	   $("#example tr td:nth-child("+n+")").each(function () {
	        data.push($(this).text());           
	   });

	   // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter
	   // Use this function if your table is not large as the time complexity is O(n^2)
	   unique = data.filter(function(item, i, arr) {
	       return i == arr.indexOf(item);
	   });

	   yourSelect = $('#dropdownMenuButton1');
	   for (i = 0; i < unique.length; i += 1) {
	        yourSelect.append("<option>"+unique[i]+"</option>");
	   }
	}

	useNthColumn(3);
	function useNthColumns(n) {

		   var data = [],
		       i,
		       yourSelect,
		       unique;

		   $("#example tr td:nth-child("+n+")").each(function () {
		        data.push($(this).text());           
		   });

		   // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter
		   // Use this function if your table is not large as the time complexity is O(n^2)
		   unique = data.filter(function(item, i, arr) {
		       return i == arr.indexOf(item);
		   });

		   yourSelect = $('#dropdownMenuButton2');
		   for (i = 0; i < unique.length; i += 1) {
		        yourSelect.append("<option>"+unique[i]+"</option>");
		   }
		}

		useNthColumns(4);
		function useNthColumnss(n) {

			   var data = [],
			       i,
			       yourSelect,
			       unique;

			   $("#example1 tr td:nth-child("+n+")").each(function () {
			        data.push($(this).text());           
			   });

			   // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter
			   // Use this function if your table is not large as the time complexity is O(n^2)
			   unique = data.filter(function(item, i, arr) {
			       return i == arr.indexOf(item);
			   });

			   yourSelect = $('#dropdownMenuButton3');
			   for (i = 0; i < unique.length; i += 1) {
			        yourSelect.append("<option>"+unique[i]+"</option>");
			   }
			}

			useNthColumnss(3);
			function useNthColumnsss(n) {

				   var data = [],
				       i,
				       yourSelect,
				       unique;

				   $("#example1 tr td:nth-child("+n+")").each(function () {
				        data.push($(this).text());           
				   });

				   // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter
				   // Use this function if your table is not large as the time complexity is O(n^2)
				   unique = data.filter(function(item, i, arr) {
				       return i == arr.indexOf(item);
				   });

				   yourSelect = $('#dropdownMenuButton4');
				   for (i = 0; i < unique.length; i += 1) {
				        yourSelect.append("<option>"+unique[i]+"</option>");
				   }
				}

				useNthColumnsss(4);
</script>
<script>
  $('.filter').change(function () {

      filter_function();

      //calling filter function each select box value change

  });

  $('#example tbody tr').show(); //intially all rows will be shown

  function filter_function() {
      $('#example tbody tr').hide(); //hide all rows

      var companyFlag = 0;
      var companyValue = $('#dropdownMenuButton1').val();
      var contactFlag = 0;
      var contactValue = $('#dropdownMenuButton2').val();
      
      //setting intial values and flags needed

      //traversing each row one by one
      $('#example tbody tr').each(function () {

          if (companyValue == 0) {   //if no value then display row
              companyFlag = 1;
          }
          else if (companyValue == $(this).find('td.mega').data('mega')) {
              companyFlag = 1;       //if value is same display row
          }
          else {
              companyFlag = 0;
          }


          if (contactValue == 0) {
              contactFlag = 1;
          }
          else if (contactValue == $(this).find('td.department').data('department')) {
              contactFlag = 1;
          }
          else {
              contactFlag = 0;
          }
         
          if (companyFlag && contactFlag) {
              $(this).show();  //displaying row which satisfies all conditions
          }

      });




  }
</script>
<script>
$('.filter1').change(function () {

    filter_function1();

    //calling filter function each select box value change

});

$('#example1 tbody tr').show(); //intially all rows will be shown

function filter_function1() {
    $('#example1 tbody tr').hide(); //hide all rows

    var companyFlag = 0;
    var companyValue = $('#dropdownMenuButton3').val();
    var contactFlag = 0;
    var contactValue = $('#dropdownMenuButton4').val();
    
    //setting intial values and flags needed

    //traversing each row one by one
    $('#example1 tbody tr').each(function () {

        if (companyValue == 0) {   //if no value then display row
            companyFlag = 1;
        }
        else if (companyValue == $(this).find('td.mega1').data('mega1')) {
            companyFlag = 1;       //if value is same display row
        }
        else {
            companyFlag = 0;
        }


        if (contactValue == 0) {
            contactFlag = 1;
        }
        else if (contactValue == $(this).find('td.department1').data('department1')) {
            contactFlag = 1;
        }
        else {
            contactFlag = 0;
        }
       
        if (companyFlag && contactFlag) {
            $(this).show();  //displaying row which satisfies all conditions
        }

    });




}
</script>
</body>

</html>