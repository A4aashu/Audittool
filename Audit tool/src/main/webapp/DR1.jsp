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
	if(days_difference>0)
	currentRow.find('.days').val(days_difference);
	else
		currentRow.find('.days').val(0);	
	});

var trs = $('tr').not(':eq(0)');
$.each(trs, function() {
	 var $this = $(this);
	 var currentRow=$(this).closest("tr");
     if (((currentRow.find('#Status').val() == 'Pending') || (currentRow.find('#Status').val() == 'Partially Received'))) {
        
     }
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
</style>

<body>
<%LoginBean currentUser=((LoginBean)
                                        (session.getAttribute("currentSessionUser")));
                                        AuditBean currentUsers=((AuditBean)
                                            (session.getAttribute("currentSessionUser6")));
                                        String test = session.getAttribute("client").toString();
                                        pageContext.setAttribute("test", test);
                                        String test1 = session.getAttribute("review").toString();
                                        pageContext.setAttribute("test1", test1);
                                        String test2 = session.getAttribute("epname").toString();
                                        pageContext.setAttribute("test2", test2);
                                        %>
  <c:set var="userdata" scope="session"
			value="<%= currentUser.getDesignation()%>" />
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

          <nav class="Nav2 navbar-fixed-top" style="height:130px!important;width:120%;background-color:#E1ECF0!important;">
                        <ul style="margin-top:-6px;margin-bottom: -5px;">
                        <li>
                        <marquee  behavior="alternate" scrollamount="5" direction="left" style="padding-top: 8px;
    padding-bottom: 2px;margin-right: 10px;margin-left: -33px;color: #00338d;font-weight: 700;">Client Name: <c:out value="${test}" escapeXml="false" /> | Review Name: <c:out value="${test1}" escapeXml="false" /> | Engagement Partner:  <c:out value="${test2}" escapeXml="false" /></marquee>
                        </li>
                        </ul>
                        <ul>
                <li><button type="button" class="boxx-shadow2 nav1">Audit Background</button></li>
                <li><button type="button" class="boxx-shadow2 nav-1" style="width: 130px;">Data Request</button></li>
                <li><button type="button" class="boxx-shadow2 nav1" style="width:152px;">Risk and Controls</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Meeting Tracker</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Client Details</button></li>
                

              </ul>

              <ul style="margin-left: 380px;margin-top: -47px;">
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
      <div class="container" style="margin-top: 11%;margin-bottom:10%">
      
      </div>
     
                <div class="exportbtn">
                  <!-- <img src="assets/images/iconpicc.png"> -->
                  <form action="idrdownload.jsp" method="POST">
                  <input value="<%=request.getParameter("id")%>"  name="idrid" hidden >
                  <input value="<%=request.getParameter("objid")%>"  name="objid" hidden >
                 <!--  <button type="submit"
                  class="btn btn-blue text-center signup_btn"
                  style="background-color: #470A68;
                  margin-left: 895px!important;z-index: 111; margin-top: 10px !important;" id="btnExcel" > <i class="fa fa-list-alt" style="font-size:20px;padding-top:5px;" aria-hidden="true"></i>&nbsp;&nbsp;Export List</button>
                --> </form>
                </div>
               
                <h3 style="color: #00338D;font-weight: bold;margin-top: -42px;margin-bottom: 15px;">Data Request List</h3>
               
                <div class="Mytable" style="height:400px!important;">
               <form action="GeneralServlet" method="POST">
                    <table  class="table css-serial margin " id="myTable"  data-toggle="table" style="margin-right:0px!important;margin-bottom:0px!important" >
 <%
                                                                            try{
                                                                            	String auditid=request.getParameter("id");
                                                                            	String x1=request.getParameter("dataid");
                                                                            	ResultSet resultset1=null;
                                                                            	ResultSet resultset2=null;
                                                                            	  Connection connection=Dbconfig.getConnection();
                                                                            	if(x1!="")
                                                                            	{
                                                                            	int[] a1=Arrays.stream(x1.split(",")).mapToInt(Integer::parseInt).toArray();  
                                                                                StringBuilder idList1 = new StringBuilder();
                                                                                		for (int id : a1) {
                                                                                		   if (idList1.length() > 0) {
                                                                                		     idList1.append(",");
                                                                                		   }
                                                                                		   idList1.append(id);
                                                                                		}
                                                                            	
                                                                              System.out.println("done");
                                                                                PreparedStatement psmt1=connection.prepareStatement("select data1,Process from datatable where dataid in ("+idList1+")");
                                                                                
                                                                                PreparedStatement psmt2=connection.prepareStatement("select data,Process,period,requesttype,status,rd,ed,ad,delay from IDR_TABLE where auditid="+auditid);
                                                                                resultset1 =psmt1.executeQuery() ;
                                                                                resultset2 =psmt2.executeQuery() ;
                                                                            	}
                                                                            	else
                                                                            	{
                                                                            		System.out.println("done1");
                                                                            		 PreparedStatement psmt2=connection.prepareStatement("select data,Process,period,requesttype,status,rd,ed,ad,delay from IDR_TABLE where auditid="+auditid);
                                                                                     resultset2 =psmt2.executeQuery() ;
                                                                            	}

                                                                                
                                                                        %>
                        <thead >
                          
                              
                          <tr><th style="text-align: center!important">Sl.no.</th>
                        <th style="text-align: center!important">Data items</th>
                        <th style="text-align: center!important">Process</th>
                        <th style="text-align: center!important">Period</th>
                        <th style="text-align: center!important">Request-Type</th>
                        <th style="text-align: center!important">Status</th>
                        <th style="text-align: center!important">Date Of Request</th>
                        <th style="text-align: center!important">Expected date</th>
                        <th style="text-align: center!important">Actual Date</th>
                        <th style="text-align: center!important">Delay (Days)</th></tr>
                        </thead>
                        <tbody style=" border-color: none!important;">
                         
                        <%  while(resultset2.next()){ %>
                        
                       <colgroup>
                                <col span="10" style="background-color:#E5E5E5!important;text-align: center!important">
                                
                              </colgroup>
                        
                         <tr>
                              <td style="text-align: center!important"></td>
                             <td style="text-align: center!important"><textarea name="data" rows="auto" cols="25"  style="border:none;border-radius:5px;resize: none;text-align: center!important;" readonly><%= resultset2.getString("data")%></textarea></td>
                            <td style="text-align: center!important"><textarea  name="process" rows="auto" cols="25" style="border:none;border-radius:5px;resize: none;text-align: center!important" readonly><%= resultset2.getString("Process")%></textarea></td>
                            <td ><select name="Period" id="Period" class="form-control" style="text-align: center!important">
                            <option value="<%= resultset2.getString("period")%>"><%= resultset2.getString("period")%></option>
                                <option value="Monthly">Monthly</option>
                                <option value="Quarterly">Quarterly</option>
                                <option value="Annually">Annually</option>
                                <option value="As on Date">As on Date</option>
                              </select>
                            </td>
                            <td ><select name="Request-Type" id="Request-Type" class="form-control" style="text-align: center!important">
                            <option value="<%= resultset2.getString("requesttype")%>"><%= resultset2.getString("requesttype")%></option>
                                <option value="IDR">IDR</option>
                                <option value="ADR">ADR</option>
                              </select></td>
                              <td ><select name="Status" id="Status" class="form-control" style="text-align: center!important">
                              <option value="<%= resultset2.getString("status")%>"><%= resultset2.getString("status")%></option>
                                <option value="Received">Received</option>
                                <option value="Pending">Pending</option>
                                <option value="Partially Received">Partially Received</option>
                                <option value="Not Applicable">Not Applicable</option>
                              </select></td>
                              <td><input type="date" name="request_date" style="background-color: white !important ;border:none;border-radius:5px;text-align: center!important" id="request_date" class="request_date" value="<%= resultset2.getDate("RD")%>"></td>
                              <td ><input type="date" name="mydate" style="background-color: white !important ;border:none;border-radius:5px;text-align: center!important"  id="mydate" class="mydate" value="<%= resultset2.getDate("ED")%>" readonly ></td>
                            <td ><input type="date" name="end_date" style="background-color: white !important ;border:none;border-radius:5px;text-align: center!important" id="end_date"   class="end_date" value="<%= resultset2.getDate("AD")%>"></td>
                            <td ><input type="text" name="days" id="days" style="background-color: white !important ;width:96px!important;border:none;border-radius:5px;text-align: center!important" class="days" value="<%= resultset2.getString("delay")%>" readonly></td>
                            </tr>
                        
                        
                        
                        
                               <% } 

%>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
 <%  while(resultset1.next()){ %>
                          <colgroup>
                                <col span="10" style="text-align: center!important">
                                
                              </colgroup>
                            
                              <tr>
                              <td style="text-align: center!important"></td>
                             <td style="text-align: center!important"><textarea name="data" rows="auto" cols="25"  style="border:none;border-radius:5px;resize: none;text-align: center!important;" readonly><%= resultset1.getString("data1")%></textarea></td>
                            <td style="text-align: center!important"><textarea  name="process" rows="auto" cols="25" style="border:none;border-radius:5px;resize: none;text-align: center!important" readonly><%= resultset1.getString("Process")%></textarea></td>
                            <td ><select name="Period" id="Request-Type" class="form-control" style="text-align: center!important">
                            <option value="">Choose Period</option>
                                <option value="Monthly">Monthly</option>
                                <option value="Quarterly">Quarterly</option>
                                <option value="Annually">Annually</option>
                                <option value="As on Date">As on Date</option>
                              </select>
                            </td>
                            <td ><select name="Request-Type" id="Request-Type" class="form-control" style="text-align: center!important">
                            <option value="">Request Type</option>
                                <option value="IDR">IDR</option>
                                <option value="ADR">ADR</option>
                              </select></td>
                              <td ><select name="Status" id="Status" class="form-control" style="text-align: center!important">
                              <option value="">Status</option>
                                <option value="Received">Received</option>
                                <option value="Pending">Pending</option>
                                <option value="Partially Received">Partially Received</option>
                                <option value="Not Applicable">Not Applicable</option>
                              </select></td>
                              <td><input type="date" name="request_date" style="background-color: white !important ;border:none;border-radius:5px;text-align: center!important" id="request_date" class="request_date"></td>
                              <td ><input type="date" name="mydate" style="background-color: white !important ;border:none;border-radius:5px;text-align: center!important"  id="mydate" class="mydate"  readonly ></td>
                            <td ><input type="date" name="end_date" style="background-color: white !important ;border:none;border-radius:5px;text-align: center!important" id="end_date"   class="end_date" ></td>
                            <td ><input type="text" name="days" id="days" style="background-color: white !important ;width:96px!important;border:none;border-radius:5px;text-align: center!important" class="days" readonly></td>
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
               
            
          
          <input id="auditid" value="<%=request.getParameter("id")%>" name="auditid" hidden>
          <input id="auditid" value="<%=request.getParameter("objid")%>" name="objid" hidden>
          <div class="savebtn">
          
            <button type="submit" 
            class="btn btn-blue text-center signup_btn"
            style="background-color: #470A68;
            margin-left: 900px!important;z-index: 111; margin-top:10px !important;border-radius: 60px !important; color: #fff !important;
    padding: 4px !important;
    width: 180px !important;
    font-weight: bold !important;    height: 31px;">Save & Proceed</button>
     </form>
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
<!-- <script>
$(document).ready(function() {
    var trs = $('tr').not(':eq(0)');
    $.each(trs, function() {
        var $this = $(this);
        if ($this.find('>td#Period').text() == 'Monthly')  {
        alert("aashu");
        }
    });
});
</script>
 -->
</body>

</html>