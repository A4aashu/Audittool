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
    <title>Dashboard - KPMG Admin Portal</title>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Lineawesome CSS -->
    <link rel="stylesheet" href="assets/css/line-awesome.min.css">

    <!-- Chart CSS -->
    <link rel="stylesheet" href="assets/plugins/morris/morris.css">

    <!-- Main CSS -->
    <link rel="stylesheet" href="assets/css/style.css">

    <link rel="stylesheet" href="assets/css/AnalystDashboard.css">
    <link rel="stylesheet" href="assets/css/Create_New_Audit.css">

</head>

<body>
  <%LoginBean currentUser = ((LoginBean) (session.getAttribute("currentSessionUser")));
  
                                               String client_name="";
                                                String editType = request.getParameter("client_name");
                                                if(editType!=null && !editType.isEmpty()){
                                                	client_name=request.getParameter("client_name");
                                                }
                                                	String engagement_name="";
                                                    String editType1 = request.getParameter("engagement_name");
                                                    if(editType1!=null && !editType1.isEmpty()){
                                                    	engagement_name=request.getParameter("engagement_name");	
                                                    }
                                                    String audit_start_date="";
                                                    String editType2 = request.getParameter("audit_start_date");
                                                    if(editType2!=null && !editType2.isEmpty()){
                                                    	audit_start_date=request.getParameter("audit_start_date");	
                                                    }
                                                    String audit_end_date="";
                                                    String editType3 = request.getParameter("audit_end_date");
                                                    if(editType3!=null && !editType3.isEmpty()){
                                                    	audit_end_date=request.getParameter("audit_end_date");	
                                                    }
                                                    String input_audit_background="";
                                                    String editType4 = request.getParameter("input_audit_background");
                                                    if(editType4!=null && !editType4.isEmpty()){
                                                    	input_audit_background=request.getParameter("input_audit_background");	
                                                    }
                                               
                                               
  %>
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
                    <span style="color:#ffffff;margin-left:85px;font-size: 16px!important;"><%= currentUser.getFullname()%></span>
                    <span style="color:#ffffff;margin-left:85px;"><%= currentUser.getDepartment()%></span>
                    <span style="color:#ffffff;margin-left:85px;"><%= currentUser.getDesignation()%></span>
                  </div>
                </li>
                <li class="submenu">
                  <a class="btn-links btn-inactive" href="dashboard2.jsp"><i class="la la-dashboard"></i> <span> Home</span></a>
                </li>
                <li class="submenu">
                  <a class="btn-links btn-inactive" href="#"><i class="la la-cube"></i> <span>Audit List</span></a>
                </li>
                <li class="submenu">
                  <a class="btn-links" href="createaudit.jsp"><i class="la la-plus"></i> <span>Create Audit</span></a>
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
    
        <!-- Page Wrapper -->
        <div class="page-wrapper">
    
          <!-- Page Content -->
          <div class="content container-fluid">
    
    
            <!-- top nav bar -->
    
            <div class="topnavbar">
              <div class="compactnavbar">
    
                <nav class="Nav2 navbar-fixed-top">
                  <ul>
                    <li><button type="button" class="boxx-shadow2 nav-1">Audit Background</button></li>
                    <li><button type="button" class="boxx-shadow2 nav1">Data Request</button></li>
                    <li><button type="button" class="boxx-shadow2 nav1" style="width:150px;">Risk and Controls</button></li>
                    <li><button type="button" class="boxx-shadow2 nav1">Meeting Tracker</button></li>
    
                  </ul>
    
                  <ul style="margin-left: 50px;margin-top: -11px;">
                    <li style="width: 122px!important;"><a href="#"
                        class="nav-linkk nav-2 boxx-shadow"
                        style="border-right: 1px solid #B7C1D3;width: 65px;margin-right: 19px;padding-right: 5px;">General</a>
                    </li>
                    <li style="width: 122px;margin-left: -18px;"><a href="#"
                        class="hover-underline-animation nav-linkk nav2 boxx-shadow"
                        style="width: 131px;padding-right: 5px;">Project objective</a></li>
                    <li style="padding-left: 0px;width: 101px;"><a href="#"
                        class="nav-linkk nav2 boxx-shadow hover-underline-animation" style="padding-right: 9px;">Milestones</a></li>
                    <li style="width: 131px;"><a href="#" class="hover-underline-animation nav-linkk nav2 boxx-shadow"
                        style="padding-right: 9px;">Team Structure</a></li>
                    <li style="width:141px;margin-left: 0px;"><a href="#"
                        class="hover-underline-animation nav-linkk nav2 boxx-shadow" style="padding-right: 10px;">Export Opening
                        Meeting</a></li>
                  </ul>
    
    
                </nav>
                <!-- <div class="recc boxx-shadow2">
                  <h5>Name of Client</h5>
                  <h5>Engagement Name</h5>
                </div> -->
              </div>
    
            </div>
    
          </div>
          <div class="container" style="margin-top: 9%;">
            <div class="" style="font-size: 25px;margin-top: 2%;margin-left: -5%;z-index: -1;color:#00338D;font-weight: bold;">
              General
              <hr class="hrr">
            </div>
          </div>
          <div class="container-fluid" style="margin-top: 3%;z-index: -1;margin-left: -6%;">
            <div class="card card0 border-0">
              <div class="row d-flex">
                <div class="col-lg-8" style="background-color: #ffffff; color: #00338D!important;">
                                <form style="padding-left: 10%;" action="" method="POST">

                                    <div class="row px-3" style="padding-top: 10px;"> <label class="mb-0"
                                            style="margin-bottom: -1.75rem!important;">
                                            <h6 class="mb-0 text-lg" style="font-size: 23px; margin-left: -8%;margin-top:3%;">Name of
                                                Client</h6>
                                        </label> 
                                        <input class="mb-2 input_name_of_client" style="width:34%!important;" type="text" list="productName" name="client_name" placeholder="Enter Name" value="<%=client_name%>" required>

                                        <datalist class="" name="process"  id="productName" name="client_name" value="<%=client_name%>" style="width:100px;background-color:rgb(243, 118, 118)!important;">
                                          <option value="MASCOM" style="background-color:red!important;">MASCOM</option>
                                          <option value="TCL">TCL</option>
                                          <option value="LEBARA">LEBARA</option>
                                          <option value="Dream 11">Dream 11</option>
                                          <option value="Telkom">Telkom</option>
                                          <option value="Airtel Tigo">Airtel Tigo</option>
                                        </datalist>

                                        <h6 class="mb-0 text-lg" style="margin-left: 28.5%;font-size: 23px;
                                        margin-top: -14%;">Engagement Name</h6>
                                        </label> <input class="mb-4 input_engagement_name" id="txtPassword" placeholder="Enter Name"
                                            onchange="checkPass()" type="text" name="engagement_name" value="<%=engagement_name%>" required>
                                    </div>
                                    <div class="row px-3"> <label class="mb-0"
                                            style="margin-bottom: -1.75rem!important;">
                                            <h6 class="mb-0 text-lg"
                                                style="font-size: 23px; margin-left: -8%;margin-top: -2%;">
                                                Mega Process</h6>
                                        </label>
                                        <select class="form-control input_process" id="exampleFormControlSelect2" name="megaprocess" style="color:#495057!important" onchange=this.form.submit() required>
                                            <option value="0">Choose Value</option>
                                            <%
    try{
    	Connection connection=Dbconfig.getConnection();
       Statement statement = connection.createStatement() ;

       ResultSet resultset =statement.executeQuery("select distinct(megaprocess) as megaprocess from RACM;") ;
%>
        <%  while(resultset.next()){ %>
        
            <option value="<%=resultset.getString("Megaprocess")%>"
            <%
            if(request.getParameter("megaprocess")!=null)
            {
            	if(resultset.getString("Megaprocess").equals(request.getParameter("megaprocess")))
            	{
            		out.print("selected");
            	}
            }
             
            %>
            
            ><%= resultset.getString("Megaprocess")%></option>
            <% } 

        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
                                        </select>
                                        
                                        
                                        <label class="mb-0"
                                        style="margin-bottom: -1.75rem!important;">
                                        <h6 class="mb-0 text-lg"
                                            style="font-size: 23px; margin-left: 30%;
                                            margin-top: -13%;">
                                            Categorization</h6>
                                        </label>
                                        <select class="form-control input_categorization" id="exampleFormControlSelect2" name="department" style="color:#495057!important" onchange=this.form.submit()>
                                        <option value="0">Choose Value</option>
                                        <%
                                        try{
                                          String query="select distinct(DepartmentCategorisation) from RACM where megaprocess=?;";
                                          Connection connection=Dbconfig.getConnection();
                                          PreparedStatement psmt=connection.prepareStatement(query);
                                          psmt.setString(1,request.getParameter("megaprocess"));
                                          
                                    
                                           ResultSet resultset =psmt.executeQuery() ;
                                    %>
                                            <%  while(resultset.next()){ %>
                                            
                                                <option value="<%= resultset.getString("DepartmentCategorisation")%>"
                                                
                                                <%
            if(request.getParameter("department")!=null)
            {
            	if(resultset.getString("DepartmentCategorisation").equals(request.getParameter("department")))
            	{
            		out.print("selected");
            	}
            }
             
            %>
             ><%= resultset.getString("DepartmentCategorisation")%></option>
                                                <% } 
                                    
                                            }
                                            catch(Exception e)
                                            {
                                                 out.println("wrong entry"+e);
                                            }
                                    %>
                                        </select>
                                        
                                        
                                        <h6 class="mb-0 text-lg" style="margin-left: 65.5%;font-size: 23px;
                                        margin-top: -12%;">Process</h6>
                                        </label>
                                        <i class="fa fa-caret-down" aria-hidden="true" style="margin-top: -35px;
                                        margin-left: 138px;width: 35px!important;
                                        font-size: 25px;cursor: pointer;"></i>
                                        <select class="form-control input_subprocess" id="exampleFormControlSelect1" name="process" style="color:#495057!important">
                                            <option value="0">Choose Value</option>
                                            
                                            
                                            <%
                                        try{
                                          String query="select distinct(process) from RACM where DepartmentCategorisation=?;";
                                          Connection connection=Dbconfig.getConnection();
                                          PreparedStatement psmt=connection.prepareStatement(query);
                                          psmt.setString(1,request.getParameter("department"));
                                          
                                    
                                           ResultSet resultset =psmt.executeQuery() ;
                                    %>
                                            <%  while(resultset.next()){ %>
                                            
                                                <option value="<%= resultset.getString("process")%>"
             ><%= resultset.getString("process")%></option>
                                                <% } 
                                    
                                            }
                                            catch(Exception e)
                                            {
                                                 out.println("wrong entry"+e);
                                            }
                                    %>
                                            
                                            
                                            
                                            
                                            
                                        </select>
                                        <i class="fa fa-caret-down" aria-hidden="true" style="margin-top: -38px;
                                        margin-left: 363px;width: 35px!important;
                                        font-size: 25px;cursor: pointer;"></i>
                                        <i class="fa fa-caret-down" aria-hidden="true" style="margin-top: -38px;
                                        margin-left: 597px;width: 35px!important;
                                        font-size: 25px;cursor: pointer;"></i>
                                        

                                    </div>
                                    <div class="row px-3">
                                        <label class="mb-0" style="margin-bottom: -1.75rem!important;">
                                            <h6 class="mb-0 text-lg"
                                                style="font-size: 23px; margin-left: -8%;margin-top: 3%;margin-bottom: 5px!important;">
                                                Audit Start Date</h6>
                                        </label>
                                       
                                        <input class="mb-4 input_start_date" id="audit_start_date"
                                            type="date" name="audit_start_date" value="<%=audit_start_date%>" required>
                                        <h6 class="mb-0 text-lg" style="margin-left: 28.5%;font-size: 23px;
                                        margin-top: -15%;">Audit End Date
                                        </h6>
                                        </label> <input class="mb-4 input_end_date" id="audit_end_date" onchange="checkEmail()"
                                            type="date" name="audit_end_date" value="<%=audit_end_date%>" required>
                                    </div>

                                    <div class="row px-3">
                                        <label class="mb-0" style="margin-bottom: -1.75rem!important;">
                                            <h6 class="mb-0 text-lg"
                                                style="font-size: 23px; margin-left: -8%; margin-top: -2%;">
                                                Audit Background</h6>
                                        </label>
                                        <input class="mb-2 input_audit_background" id="audit_background" placeholder="Enter Audit Background" onchange="checkEmail()"
                                            type="text" name="input_audit_background" value="<%=input_audit_background%>" >
                                    </div>

                                    

                               
                            </div>
                            <div class="col-lg-4" style="background-color: #fff;">
                                <img src="assets/images/background-div.png" width="450px" height="483px"
                                    style="margin-left: -20px!important;margin-top:0px;margin-bottom:-70px;" alt="">
                                <img src="assets/images/Pictures2.png" style="width: 339px;
                                margin-top: -139%;
                                height: 370px;
                                margin-left: 14%;
                                " alt="">
                                
                            </div>
                            <div class="row px-3"> <button type="submit"
                              class="btn btn-blue text-center signup_btn"
                              style="background-color: #470A68;margin-top: -40px!important;
                              margin-left: 990px!important;z-index: 111;" formaction="GeneralServlet" name="btn_general">Save & Proceed</button>
                              <button type="submit"
                              class="btn btn-blue text-center signup_btn"
                              style="background-color: #470A68;margin-left: 89.5%!important;z-index: 111;margin-top: 6.95px!important;"formaction="GeneralServlet">Submit</button>
                            </div>
                             </form>
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

</body>

</html>