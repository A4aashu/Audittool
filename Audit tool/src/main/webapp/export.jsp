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
    <!-- 
    <link rel="stylesheet" href="assets/css/AnalystDashboard.css"> -->
    <link rel="stylesheet" href="assets/css/export_docs.css" />
    <style>
        /* #example {
            position: absolute!important;
            margin-top: 10px!important;
            width: 1140px !important;
        } */
        #example_wrapper{
            position: absolute;
        }

        th {

            background-color: #00338d !important;

            color: white;

        }
select
{
width:200px!important;
}
        /* tr:nth-child(even) input {
            background-color: #E5E5E5;

        }*/

        tr:nth-child(odd) {
            background-color: #B7C1D3!important;

        } 

        tr:nth-child(even) {
            background-color: #E5E5E5!important;

        }

        div.dataTables_wrapper {
            width: 1140px;
            height:200px;
            margin: 0 auto;
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
            <a class="btn-links btn-inactive" href="MyContacts.jsp"><i class="la la-cube"></i> <span>My
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

        <img class="bg-img-1" src="assets/images/Picture3.png" alt="" />

    </div>
    <div class="content-left">
        <div class="cards-left">

            <img class="blue" src="assets/images/card1.png" alt="" />
            <img class="icon1" src="assets/images/icon1.png" alt="">
            <h5 class="icon-tag-2">No. of <br />Mega Process</h5>
            <h1 class="icon-tag-2" style="margin-top:50px;margin-left:78px;font-size: 30px;">${resultset.rowsByIndex[0][0]}</h1>
            <img class="icon2" src="assets/images/icon2.png" alt="">
            <img class="red" src="assets/images/card2.png" alt="" />
            <h5 class="icon-tag">No. of <br>Departments</h5>
            <h1 class="icon-tag-2" style="margin-top:50px;margin-left:335px;font-size: 30px;">${resultset1.rowsByIndex[0][0]}</h1>

        </div>
        <p>Please select Mega- Process and Department</p>
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
<select class="form-control dropdowncss filter" onchange="filter_rows()" id="dropdownMenuButton2" name="process" style="color:#495057!important;margin-bottom: 20px;
  background-color: #b9b4cf !important;
  border-radius: 30px !important;
  color: #495057!important;
  font-weight: bold;
  height: 30px;
  font-size: 14px;">
<option value="" style="color:black!important;">Choose Value</option>
</select>
                </div>
            </div>
        </div>
        <h4> List of Reviews</h4>
        <table id="example" class="" style="width:100%">
            <thead>
                <tr>
                    <th style="text-align: center;">Audit Id</th>
                    <th style="text-align: center;">Client Name</th>
                    <th style="text-align: center;">Review Name</th>
                    <th style="text-align: center;" hidden>mega</th>
                    <th style="text-align: center;" hidden>categorization</th>
                    <th style="text-align: center;">Opening Meeting Deck</th>
                    <th style="text-align: center;">RACM</th>
                    <th style="text-align: center;">IDR</th>
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
                                                                                    <td style="text-align: center;" ><%= resultset1.getString("Initiative_id")%></td>
                                                                                        <td  style="text-align: center;"  > <%= resultset1.getString("Name_of_client")%></td>
                                                                                        <td style="text-align: center;"  > <%= resultset1.getString("Engagement_name")%></td>
                                                                                       <td style="text-align: center;" hidden class="mega" data-mega="<%= resultset1.getString("MegaProcess")%>" >
                                                                                        <%= resultset1.getString("MegaProcess")%></td>
                                                                                        <td style="text-align: center;" hidden
                                                                                     class="department" data-department="<%= resultset1.getString("Department")%>"   >
                                                                                        <%= resultset1.getString("Department")%></td>
                                                                                       
                                                                                       <td style="text-align: center;"><a href="exportppt.jsp?auditid=<%= resultset1.getString("Initiative_id")%>&objectiveid=<%= resultset1.getString("objectiveid")%>">Export.ppt</a></td>
                    																		<td style="text-align: center;"><a href="#">Export.xlsx</a></td>
                   																		 <td style="text-align: center;"><a href="idrdownload.jsp?idrid=<%= resultset1.getString("Initiative_id")%>">Export.xlsx</a></td>
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
        });
        const btn = document.getElementById("dropdownMenuButton1");

        btn.addEventListener("click", function onClick() {
            btn.style.marginBottom = "30px";
            btn.style.color = "white";
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

	useNthColumn(4);
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

		useNthColumns(5);
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
</body>

</html>