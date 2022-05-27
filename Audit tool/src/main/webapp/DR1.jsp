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
  <title>Dashboard - KPMG Admin Portal</title>

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
  <script type="text/javascript">
 
  $(document).ready(function(){
$("#myTable").on('change','.request_date',function(){
var currentRow=$(this).closest("tr");

first_date = new Date(currentRow.find('.request_date').val());
output_f=new Date(first_date.setDate(first_date.getDate()+2)).toISOString().split('.');
output_s = output_f[0].split('T');
currentRow.find('.mydate').val(output_s[0]);
});
$("#myTable").on('change','.end_date',function(){
	var currentRow=$(this).closest("tr");

	start_date = new Date(currentRow.find('.mydate').val());
	end_date = new Date(currentRow.find('.end_date').val());
	var time_difference = end_date.getTime() - start_date.getTime();
	var days_difference = time_difference / (1000*3600*24);
	currentRow.find('.days').val(days_difference);
	});






  });




</script>  
<!-- Fontawesome CSS -->
  <link rel="stylesheet" href="assets/css/font-awesome.min.css">

  <!-- Lineawesome CSS -->
  <link rel="stylesheet" href="assets/css/line-awesome.min.css">

  <!-- Chart CSS -->
  <link rel="stylesheet" href="assets/plugins/morris/morris.css">

  <!-- Main CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <link rel="stylesheet" href="assets/css/DR1.css">
 
</head>

<body>
<%LoginBean currentUser=((LoginBean)
                                        (session.getAttribute("currentSessionUser")));
                                        AuditBean currentUsers=((AuditBean)
                                            (session.getAttribute("currentSessionUser6")));
                                        %>
  <!-- Main Wrapper -->
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
                <span style="color:#ffffff;margin-left:85px;font-size: 16px!important;">Yatin Gaind</span>
                <span style="color:#ffffff;margin-left:85px;">Associate Director</span>
                <span style="color:#ffffff;margin-left:85px;">GRCS Telecom</span>
              </div>
            </li>
            <li class="submenu">
              <a class="btn-links btn-inactive" href="dashboard2.jsp"><i class="la la-dashboard"></i> <span> Home</span></a>
            </li>
            <li class="submenu">
              <a class="btn-links btn-inactive" href="myAudits.jsp"><i class="la la-cube"></i> <span>My Audits</span></a>
            </li>
            <li class="submenu">
              <a class="btn-links btn-inactive" href="logout.jsp"><i class="la la-cube"></i> <span>My
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

            <nav class="Nav2 navbar-fixed-top" style="background-color:#E1ECF0!important;">
              <ul>
                <li><button type="button" class="boxx-shadow2 nav1">Audit Background</button></li>
                <li><button type="button" class="boxx-shadow2 nav-1" style="width: 130px;">Data Request</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Risk and Controls</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Meeting Tracker</button></li>

              </ul>

              <ul style="margin-left: 350px;margin-top: -43px;">
                <li style="width: 122px!important;"><a href="#" class="hover-underline-animation nav-linkk nav2 boxx-shadow" style="border-right: 1px solid #B7C1D3;width: 130px;margin-right: 19px;padding-right: 5px;
                        ">Create Data Items</a>
                </li>
                <li style="width: 122px;margin-left: -18px;"><a href="#" class="nav-linkk nav-2 boxx-shadow"
                        
                        style="width: 182px;padding-right: 5px;">Generate Data Request</a></li>
            </ul>

            </nav>
            
          </div>

        </div>

      </div>
      <div class="container" style="margin-top: 9%">
      
      </div>
     
                <div class="exportbtn">
                  <!-- <img src="assets/images/iconpicc.png"> -->
                  <button type="submit"
                  class="btn btn-blue text-center signup_btn"
                  style="background-color: #470A68;
                  margin-left: 890px!important;z-index: 111; margin-top: 10px !important;"> <i class="fa fa-list-alt" style="font-size:20px;padding-top:5px;" aria-hidden="true"></i>&nbsp;&nbsp;Export List</button>
                </div>
               
                <h3 style="color: #00338D;font-weight: bold;margin-top: -42px;">Data Request List</h3>
               
                <div class="Mytable" style="height:400px!important">
                    <table  class="table css-serial margin " id="myTable"  data-toggle="table" style="margin-right:0px!important;margin-bottom:0px!important" >
 <%
                                                                            try{
                                                                            	String x1=currentUsers.getDataid();
                                                                            	int[] a1=Arrays.stream(x1.split(",")).mapToInt(Integer::parseInt).toArray();  
                                                                                StringBuilder idList1 = new StringBuilder();
                                                                                		for (int id : a1) {
                                                                                		   if (idList1.length() > 0) {
                                                                                		     idList1.append(",");
                                                                                		   }
                                                                                		   idList1.append(id);
                                                                                		}
                                                                            	
                                                                                Connection connection=Dbconfig.getConnection();
                                                                                PreparedStatement psmt1=connection.prepareStatement("select data1,Process from datatable where dataid in ("+idList1+")");
                                                                               

                                                                                ResultSet resultset1 =psmt1.executeQuery() ;
                                                                        %>
                        <thead>
                          
                              
                          <tr><th>Sl.no.</th>
                        <th>Data items</th>
                        <th>Process</th>
                        <th>Period</th>
                        <th>Request-Type</th>
                        <th>Status</th>
                        <th>Date Of Request</th>
                        <th>Expected date</th>
                        <th>Actual Date</th>
                        <th>Delay</th></tr>
                        </thead>
                        <tbody style=" border-color: none!important;">
 <%  while(resultset1.next()){ %>
                          
                            <colgroup>
                                <col span="4" style="background-color:#E5E5E5!important">
                                
                              </colgroup>
                              <tr>
                              <td></td>
                             <td><%= resultset1.getString("data1")%></td>
                            <td><%= resultset1.getString("Process")%></td>
                            <td><select name="Period" id="Request-Type" class="form-control">
                            <option value="0">Choose Period</option>
                                <option value="Monthly">Monthly</option>
                                <option value="Quarterly">Quarterly</option>
                                <option value="Annually">Annually</option>
                                <option value="As on Date">As on Date</option>
                              </select>
                            </td>
                            <td><select name="Request-Type" id="Request-Type" class="form-control">
                            <option value="0">Request Type</option>
                                <option value="IDR">IDR</option>
                                <option value="ADR">ADR</option>
                              </select></td>
                              <td><select name="Status" id="Status" class="form-control">
                              <option value="0">Status</option>
                                <option value="Received">Received</option>
                                <option value="Pending">Pending</option>
                                <option value="Partially Received">Partially Received</option>
                                <option value="Not Applicable">Not Applicable</option>
                              </select></td>
                              <td><input type="date" style="background-color: white !important ;" id="request_date" class="request_date"></td>
                              <td><input type="date" style="background-color: white !important ;"  id="mydate" class="mydate" readonly ></td>
                            <td><input type="date" style="background-color: white !important ;" id="end_date"   class="end_date"></td>
                            <td><input type="text" id="days" style="background-color: white !important ;" class="days" readonly></td>
                            </tr>
                                                                   
            <% } 

        }
        catch(Exception e)
        {
             out.println("No Data");
        }
%>


</tbody>
                         
                          
                        
                      </table>
                </div>
               
            
          
          
          <div class="savebtn">
            <button type="submit"
            class="btn btn-blue text-center signup_btn"
            style="background-color: #470A68;
            margin-left: 900px!important;z-index: 111; margin-top:0px !important;">Save & Submit</button>
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
  <!-- script for add new row -->
  <!-- <script>
    $(document).ready(function () {

        $('#add_row').click(function () {
            //Add row
            row = '';
            row += '<tr><td></td><td><input type="text" class="form-control"></td> <td><input type="date" class="form-control"></td><td><input type="date" class="form-control"></td>';
            $("tbody").append(row);
        })

       

    });
</script> -->


<!-- Test for date  -->
<!-- <script type = "text/javascript" >
    // JavaScript program to illustrate 
    // calculation of no. of days between two date 
  
    // To set two dates to two variables
    var date1 = new Date("myDate");
var date2 = new Date("myDate1");
  
// To calculate the time difference of two dates
var Delay = date2.getTime() - date1.getTime();
 var del = document.getElementById("delay");
 del.value = Delay;
  
</script> -->

<!-- <script>
    function myFunction() {
      var x = document.getElementById("myDate").value;
      document.getElementById("demo").innerHTML = x;

      var y = document.getElementById("myDate1").value;
      document.getElementById("demo").innerHTML = y;

      var z = y.value - x.value;
      var delay = document.getElementById("delay");
      delay.value = z.innerHTML;
    }
    </script> -->
    <!-- <script>
    var DateDiff = {

      inDays: function(d1, d2) {
          var t2 = d2.getTime("myDate1");
          var t1 = d1.getTime("myDate");
  
          return parseInt((t2-t1)/(24*3600*1000));
      }
    }
    var d1 = new Date("delay");
var d2 = new Date();
var delay = document.getElementById("delay");
del.value = DateDiff.value;
DateDiff.inDays
</script> -->
<script>

  //formula for 
// function getDays(){
 
//   var start_date = new Date(document.getElementById('start_date').value);
//   var end_date = new Date(document.getElementById('end_date').value);
//   //Here we will use getTime() function to get the time difference
//   var time_difference = end_date.getTime() - start_date.getTime();
//   //Here we will divide the above time difference by the no of miliseconds in a day
//   var days_difference = time_difference / (1000*3600*24);
//   //alert(days);
//   document.getElementById('days').value = days_difference;
// }

 


</script>
<script type="text/javascript">

function date_chng(){
first_date = new Date($('.request_date').val().first());
output_f=new Date(first_date.setDate(first_date.getDate()+2)).toISOString().split('.');
output_s = output_f[0].split('T');
$('.mydate').val(output_s[0]).first();
}
$('.request_date').onchange(function(){

    $(this).closest('tr').next('.mydate').onchange(function(){
    	first_date = new Date($(this).closest('td').prev('.request_date').val());
    	output_f=new Date(first_date.setDate(first_date.getDate()+2)).toISOString().split('.');
    	output_s = output_f[0].split('T');
    	$(this).closest('td').next('.mydate').val(output_s[0]);
    })
    
});

$(".request_date").onchange(function() {
	  // row instance to use `find()` for the other input classes
	  var $row = $(this).closest('tr');

	  var date = new Date($row.find(".request_date").val()),
	    

	  if (!isNaN(date.getTime())) {
	    date.setDate(date.getDate() + 2);

	    $row.find(".mydate").val(date.toInputFormat());
	  } else {
	    alert("Invalid Date");
	  }
	});



</script>


</body>

</html>