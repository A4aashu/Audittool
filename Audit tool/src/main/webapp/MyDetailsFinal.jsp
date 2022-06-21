<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>     
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
    <link href=https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <script src=https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src=https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href=https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css />
    <link rel="stylesheet" href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css />
    <script src=https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js></script>
    <script src=https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>
    <script src=https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js></script>
    <script src=https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js></script>

    
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
   
    <script src=https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="assets/css/MyDetailsfinal.css" />
       <style type="text/css">
       .section{
              /*margin-top: -50px!important;*/
              margin-top:-54px!important;
              margin-left: 14px!important;
              font-size: 10px !important;
       }
       .main-drop .user-img img {
  border-radius: 50%;
  width: 53px !important;
  height: 53px!important;
}
.form-control{
       color: gray!important;
}
.bg-img {
  float: right;
  position: relative;
  top: 0;
  left: 0;
  height: 650px;
  width: 660px;
  margin-top: -40px;
  object-fit: cover;
}
       </style>
</head>
       
<body>

  <%LoginBean currentUser = ((LoginBean) (session.getAttribute("currentSessionUser")));%>
  <c:set var="email" scope="session" value="<%= currentUser.getEmail()%>"/>
   <sql:setDataSource var = "snapshot" driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
         url = "jdbc:sqlserver://IN-AASHUYADAV;databaseName=Audit_tool"
         user = "aashu" password = "kpmgKPMG1"/>
		<sql:query dataSource = "${snapshot}" var = "resultset">
         SELECT * from tbl_user where user_email=?;
         <sql:param value = "${email}" />
      	</sql:query>
    <!-- Sidebar -->
    <div class="sidebar" style="background-color: #00338D!important;width: 170px;" id="sidebar">
        <div class="sidebar-inner slimscroll">
          <div id="sidebar-menu" class="sidebar-menu">
            <ul>
              <li class="nav-item main-drop" style="margin-left: -28px;margin-top:5px;">
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
            <a class="btn-links btn-inactive" href="dashboard2.jsp" style="width:135px"><i class="la la-dashboard"></i> <span>
                Home</span></a>
          </li>
          <li class="submenu">
            <a class="btn-links" href="myAudits.jsp" style="background-color:#B7C1D3 !important;width:135px"><i class="la la-cube"></i> <span>My
                Audits</span></a>
          </li>
          <li class="submenu">
            <a class="btn-links btn-inactive" href="MyContacts.jsp"><i class="la la-cube"></i> <span>My
                Contacts</span></a>
          </li>
          <li class="submenu">
            <a class="btn-links" style="margin-top:220px!important;width:135px" href="logout.jsp"><i class="la la-user"></i> <span> Logout
              </span></a>
          </li>
  
            </ul>
          </div>
        </div>
      </div>
      <!-- /Sidebar -->

    <div class="content-right">
        <img class="bg-img" src="assets/images/background-div.png" alt="" />

        <img class="bg-img-1" src="assets/images/Pictures2.png" alt="" />
        

    </div>
    <div class="content-left ">
    <c:forEach var = "row" items = "${resultset.rows}">
        <h3>My Profile</h3>
        <form style="padding-left: -20%; width: 800px;" class="Myform" action="ProfileServlet" method="POST" enctype="multipart/form-data">
        <div class="row  Row1">
            <div class="col-md-6"><label class="labels ">Name</label><input type="text" class="form-control" placeholder="Enter name" value="${row.user_fullname}" readonly></div>
            <div class="col-md-6 "><label class="labels colDiff">Email ID</label><input id="txtEmail" name="email" type="email" class="form-control colDiff" value="${row.user_email}" placeholder="Enter email" onchange="buttonclick()" readonly></div>
        </div>
       
        <div class="row mt-2 ">
            <div class="col-md-6"><label class="labels">Location</label>
              <div class="dropdown">
                <i class="fa fa-caret-down" aria-hidden="true" style="width: 35px!important;
    font-size: 25px;
    cursor: pointer;
    position: absolute;
    top: 10px;
    left: 262px;"></i>
                
          
          <select class="form-control ms-Dropdown-select" id="dropdownMenuButton" name="location" >
                             <option value="${row.user_location}">${row.user_location}</option>
                                <option value="Ahmedabad">Ahmedabad</option>
                                <option value="Bengaluru">Bengaluru</option>
                                <option value="Chandigarh">Chandigarh</option>
                                <option value="Chennai">Chennai</option>
                                <option value="Gurugram">Gurugram</option>
                                <option value="Hyderabad">Hyderabad</option>
                                <option value="Jaipur">Jaipur</option>
                                <option value="Kochi">Kochi</option>
                                <option value="Kolkata">Kolkata</option>
                                <option value="Mumbai">Mumbai</option>
                                <option value="Mumbai_Lodha_Excelus">Mumbai Lodha Excelus</option>
                                <option value="Mumbai(Vikhroli)">Mumbai(Vikhroli)</option>
                                <option value="Navi_Mumbai">Navi Mumbai</option>
                                <option value="Noida">Noida</option>
                                <option value="Pune">Pune</option>
                                <option value="Pune_PEBC">Pune PEBC (Commerzone)</option>
                                <option value="Pune_Quibix">Pune Quibix IT Park</option> 
                                <option value="Vadodara">Vadodara</option>
                                <option value="Vijayawada">Vijayawada</option>                                
             </select>
          
              </div>
            </div>
            
            <div class="col-md-6"><label class="labels colDiff">Department</label><input type="text" class="form-control colDiff" value="${row.user_department}" placeholder="Enter department" name="department"></div>
        </div>
        
        <div class="row mt-3 ">
            <div class="col-md-8" style="margin-top: -13px;
    margin-bottom: 12px;"><label class="labels">Designation</label>
            <i class="fa fa-caret-down" aria-hidden="true" style="width: 35px!important;
    font-size: 25px;
    cursor: pointer;
    position: absolute;
    top: 50px;
    left: 276px;"></i>
    
            <select class="form-control" onchange="filter_rows()" id="dropdownMenuButton"
            name="designation" ><i class="arrow1 down1"></i>
            <option value="${row.user_designation}" selected>${row.user_designation}</option>
            <option style="color:black!important;">Director</option>
            <option style="color:black!important;">Manager</option>
            <option style="color:black!important;">Assistant Manager</option>
            <option style="color:black!important;">Consultant</option>
            <option style="color:black!important;">Analyst</option>
                        
          </select>
            </div>
            <div class="col-md-8"><label class="labels">Contact No.</label><input type="text" class="form-control" placeholder="Enter number" value="${row.contactno}" pattern="[1-9]{1}[0-9]{9}" name="phone"></div>
            <div class="col-md-8" style="margin-top: 3px;"><label class="labels">Upload Profile Photo</label><input type="file" id="photo" class="form-control"  name="myimg">    
        
              </div>
             
               
        </div>
    
    <div class="row px-3"> 
    
    
    <button type="submit"
      class="btn btn-blue text-center signup_btn"
      style="background-color: #470A68;margin-top: -25px!important;width: 150px; color: white; border-radius: 30px;
      margin-left: 910px!important;z-index: 111;">Save</button>
      
   
    </div>
    </form>
</c:forEach>
    </div>


<script>
  function buttonclick(){
       var email = document.getElementById('txtEmail');
             var filter=/^[a-z0-9]+(?!.*(?:\+{2,}|\-{2,}|\.{2,}))(?:[\.+\-]{0,1}[a-z0-9])*@kpmg\.com$/
       if (!filter.test(email.value)) {
              alert('Please provide valid KPMG Email Id!')
              email.value="";
           email.focus;
              return false;
       
       }
       
       return true;
       
    }
</script>
    

</body>

</html>
