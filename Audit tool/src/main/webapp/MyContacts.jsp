<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
	<%@ page language="java" import="com.tool.bean.LoginBean"%>
	<%@ page language="java" import="com.tool.config.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
    <link rel="stylesheet" href="./assets/css/MyContacts.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">

    <style>
      /* #example {
          position: absolute!important;
          margin-top: 10px!important;
          width: 1140px !important;
      } */
      #example_wrapper{
          position: absolute;
      }
      .dropdown2 {
  margin-left: 50px;
  margin-bottom: 10px;
}

      th {

          background-color: #00338d !important;
          color: white;

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
<%LoginBean currentUser = ((LoginBean) (session.getAttribute("currentSessionUser")));%>
 <sql:setDataSource var = "snapshot" driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
         url = "jdbc:sqlserver://IN-AASHUYADAV;databaseName=Audit_tool"
         user = "aashu" password = "kpmgKPMG1"/>
		<sql:query dataSource = "${snapshot}" var = "resultset">
         SELECT count(distinct(Spoc_name)) from contactdetails;
      	</sql:query>
      	
      	<sql:query dataSource = "${snapshot}" var = "resultset2">
         SELECT count(*) from contactdetails;
      	</sql:query>
    <!-- Sidebar -->
    <div class="sidebar" style="background-color: #00338D!important;width: 170px;" id="sidebar">
        <div class="sidebar-inner slimscroll">
          <div id="sidebar-menu" class="sidebar-menu">
            <ul>
               <a href="MyDetailsFinal.jsp">
          <li class="nav-item main-drop" style="margin-top:5px;margin-left:-28px;">
                <span class="user-img"><img src="data:image/jpg;base64,<%= currentUser.getBase64Image()%>" id="image" style="border-radiius:100%!important;" width="50px" height="50px" alt="">
                  <span class="status online"></span>
                </span>
                <div class="section">
              		<span style="color:#ffffff;margin-left:85px;font-size: 16px!important;"><%= currentUser.getFullname()%></span>
                    <span style="color:#ffffff;margin-left:85px;"><%= currentUser.getDepartment()%></span>
                    <span style="color:#ffffff;margin-left:85px;"><%= currentUser.getDesignation()%></span>
            	</div>
              </li>
              </a>
              <li class="submenu">
                <a class="btn-links btn-inactive" href="dashboard2.jsp"><i class="la la-dashboard"></i> <span>
                        Home</span></a>
            </li>
            <li class="submenu">
                <a class="btn-links btn-inactive" href="myAudits.jsp"><i class="la la-cube"></i> <span>My
                        Audits</span></a>
            </li>

             <li class="submenu">
                <a class="btn-links" href="MyContacts.jsp"><i class="la la-cube"></i> <span>My
                        Contacts</span></a>
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
        <img class="bg-img" src="assets/images/bg-1.png" alt="" height="650px!important"/>

        <img class="bg-img-1" src="assets/images/6.png" alt="" />

    </div>
    <div class="content-left">
        <div class="cards-left">
            
            <img class="bluecard" src="assets/images/card1.png" alt="" />
            <img class="icon1card" src="assets/images/7.png" alt="">
            <h5 class="icontag">Number of <br />Engagements</h5>
            <p class="cardtext">${resultset2.rowsByIndex[0][0]}</p>
            <img class="icon2card" src="assets/images/icon3.png" alt="">
            <img class="darkbluecard" src="assets/images/card3.png" alt="" />
            <h5 class="icontag1">Number of Clients</h5>
            <p class="cardtext1">${resultset.rowsByIndex[0][0]}</p>

        </div>
        <p class="ptext">Please select Client and Review Name</p>
        <div class="text-left">
            
            <div class="dropdown1">
                <h5>Client Name</h5>
                <div class="dropdown dropdowncss" >
                <i class="fa fa-caret-down" aria-hidden="true" style="width: 35px!important;
    font-size: 25px;
    cursor: pointer;
    position: absolute;
    top: 4px;
    left: 127px;"></i>
                     <select class="form-control dropdowncss filter" onchange="filter_rows()" id="dropdownMenuButton1"
            name="NameoftheClient" style="color:#495057!important;width:150px;">
            <option value="" style="color:black!important;"selected>Choose Value</option>
            </select>
                </div>

            </div>
            <div class="dropdown2">
                <h5>Review Name</h5>
                <div class="dropdown dropdowncss" >
                    <i class="fa fa-caret-down" aria-hidden="true" style="width: 35px!important;
    font-size: 25px;
    cursor: pointer;
    position: absolute;
    top: 4px;
    left: 127px;"></i>
                     <select class="form-control dropdowncss filter" onchange="filter_rows()" id="dropdownMenuButton2"
            name="NameoftheClient" style="color:#495057!important;width:150px;">
            <option value="" style="color:black!important;"selected>Choose Value</option>
            </select>
                </div>
            </div>
        </div>
            <h4 class="tableheader"> List of Contacts</h4>
            <table id="example" class="css-serial" style="width:100%">
              <thead>
                  <tr>
                    <th style="text-align: center;">SI.No.</th>
                    <th style="text-align: center; width:100px">Client Name</th>
                    <th style="text-align: center; width:300px;">Review Name</th>
                    <th style="text-align: center; width:100px">Country</th>
                    <th style="text-align: center; width:200px">SPOC Name</th>
                    <th style="text-align: center; width:100px">Designation</th>
                    <th style="text-align: center; width:100px">Department</th>
                    <th style="text-align: center; width:200px">E-mail</th>
                    <th style="text-align: center; width:100px">Contact</th>
                    <th style="text-align: center; width:100px">Country</th>
                    <th style="text-align: center; width:200px">Reporting To </th>
                    <th style="text-align: center; width:100px">Designation</th>
                    <th style="text-align: center; width:100px">Department</th>
                    <th style="text-align: center; width:200px">E-mail</th>
                    <th style="text-align: center; width:100px">Contact</th>
                  </tr>
              </thead>
              <tbody>
                 
                <%
                                                                            try{
                                                                            	
                                                                                Connection connection=Dbconfig.getConnection();
                                                                                PreparedStatement psmt1=connection.prepareStatement("select contactDetails.*,audits.Name_of_client,audits.Engagement_name from contactDetails left join Audits on contactdetails.Auditid=Audits.Initiative_id;;");
                                                                                

                                                                                ResultSet resultset1 =psmt1.executeQuery() ;
                                                                        %>
            
             <%  while(resultset1.next()){ %>
       																			 <tr>
                                                                                    	<td style="text-align: center;"></td>
                                                                                       <td style="text-align: center;"
                                                                                    class="client" data-client="<%= resultset1.getString("Name_of_client")%>" >
                                                                                        <%= resultset1.getString("Name_of_client")%></td>
                                                                                        <td style="text-align: center;"
                                                                                     class="review" data-review="<%= resultset1.getString("Engagement_name")%>"   >
                                                                                        <%= resultset1.getString("Engagement_name")%></td>
                                                                                    <td style="text-align: center;"><%= resultset1.getString("Country")%></td>
                                                                                    <td style="text-align: center;"><%= resultset1.getString("Spoc_name")%></td>
                                                                                    <td style="text-align: center;"><%= resultset1.getString("Designation")%></td>
                                                                                    <td style="text-align: center;"><%= resultset1.getString("department")%></td>
                                                                                    <td style="text-align: center;"><%= resultset1.getString("email")%></td>
                                                                                    <td style="text-align: center;"><%= resultset1.getString("contact")%></td>
                                                                                    <td style="text-align: center;"><%= resultset1.getString("rCountry")%></td>
                                                                                    <td style="text-align: center;"><%= resultset1.getString("reportingto")%></td>
                                                                                    <td style="text-align: center;"><%= resultset1.getString("rDesignation")%></td>
                                                                                    <td style="text-align: center;"><%= resultset1.getString("rdepartment")%></td>
                                                                                     <td style="text-align: center;"><%= resultset1.getString("remail")%></td>
                                                                                      <td style="text-align: center;"><%= resultset1.getString("rcontact")%></td>
                                                                                       
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

	useNthColumn(2);
	
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

		useNthColumns(3);






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
          else if (companyValue == $(this).find('td.client').data('client')) {
              companyFlag = 1;       //if value is same display row
          }
          else {
              companyFlag = 0;
          }


          if (contactValue == 0) {
              contactFlag = 1;
          }
          else if (contactValue == $(this).find('td.review').data('review')) {
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