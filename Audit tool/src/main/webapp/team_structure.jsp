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
  <link rel="stylesheet" href="assets/css/Team_Structure_Screen.css">
  <style>
  button:disabled {
  background: grey!important;
}
  </style>
  <script>
 $(document).ready(function () {

	 const params = new URLSearchParams(window.location.search);

	 const name = params.get("id");

	console.log(name);
	if(name>0)
		{
		$("#submit").attr("disabled", true);
		$("#exportppt").attr("disabled", false);
		}
 });
 </script>
 <style>

html, body{overflow:hidden;}</style>
</head>

<body>
<%LoginBean currentUser = ((LoginBean) (session.getAttribute("currentSessionUser")));%>
  <!-- Main Wrapper -->
  <div class="main-wrapper">


    <!-- Sidebar -->
    <div class="sidebar" style="background-color: #00338D!important;width: 170px;" id="sidebar">
      <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
          <ul>
             <a href="MyDetailsFinal.jsp">
          <li class="nav-item main-drop" style="margin-top:5px;">
              <span class="user-img"><img src="assets/images/profileimage.jpg" style="border-radiius:100%!important;" width="50px" height="50px" alt="">
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
              <a class="btn-links btn-inactive" href="dashboard2.jsp"><i class="la la-dashboard"></i> <span> Home</span></a>
            </li>
            <li class="submenu">
              <a class="btn-links btn-inactive" href="#"><i class="la la-cube"></i> <span>My Audits</span></a>
            </li>
                                                               <li class="submenu">
              <a class="btn-links btn-inactive" href="#"><i class="la la-user"></i> <span>My Contacts</span></a>
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

            <nav class="Nav2 navbar-fixed-top" style="background-color:#E1ECF0!important;width:125%">
              <ul>
                <li><button type="button" class="boxx-shadow2 nav-1">Audit Background</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Data Request</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Risk and Controls</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Meeting Tracker</button></li>
                <li><button type="button" class="boxx-shadow2 nav1">Client Details</button></li>

              </ul>

              <ul style="margin-left: 50px;margin-top: -46px;">
                <li style="width: 122px!important;"><a href="#"
                    class="hover-underline-animation nav-linkk nav2 boxx-shadow"
                    style="border-right: 1px solid #B7C1D3;width: 65px;margin-right: 19px;padding-right: 5px;color:#27C719!important">General</a>
                </li>
                <li style="width: 122px;margin-left: -18px;"><a href="#"
                    class="hover-underline-animation nav-linkk nav2 boxx-shadow"
                    style="width: 131px;padding-right: 5px;color:#27C719!important">Project objective</a></li>
                <li style="padding-left: 0px;width: 101px;"><a href="#"
                    class="hover-underline-animation nav-linkk nav2 boxx-shadow" style="padding-right: 9px;color:#27C719!important">Milestones</a></li>
                <li style="width: 131px;"><a href="#" class="nav-linkk nav-2 boxx-shadow"
                    style="padding-right: 9px;">Team Structure</a></li>
                
              </ul>


            </nav>
            <div class="recc boxx-shadow2">
                 <footer>
<span style="margin-left:-30px;">4/4</span>
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
      <form id="formABC" action="" method="POST">
      <div class="container" style="margin-top: 9%">
        <div class="" style="font-size: 25px;margin-top: 2%;margin-left: -5%;z-index: -1;color:#00338D;font-weight: bold;">
          Team Structure
          <hr class="hrr">
        </div>
      </div>
      <div class="container-fluid" style="margin-top: 3%;z-index: -1;margin-left: -6%;">
        <div class="">
          <div class="row d-flex">
            <div class="col-lg-8" style="background-color: #ffffff; color: #00338D!important;">
              <div class="popupcontainer">
                <!-- i have to make a div here conatining these two popups -->
                <div class="uper2popups" style="padding-left: 95px;">
                  <!-- btn1 -->
                  <!-- Button trigger modal-->
                  <button type="button" class="btn btn-primary  btnEM " data-toggle="modal" data-target="#modalCart"
                    style="border-color: white;">Enagagement Partner</button>

                  <!-- Modal: modalCart -->
                  <div class="modal fade" id="modalCart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <!--Header-->
                        <div class="modal-header">
                          <h4 class="modal-title" id="myModalLabel">Enagagement Partner</h4>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">X</span>
                          </button>
                        </div>
                        <!--Body-->
                        <div class="modal-body">

                          <table class="table table-hover">
                            <thead>
                              <tr>

                                <th>Partner Name</th>
                                <th>Email</th>
                                <th>Designation</th>								
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td> <input type="text" id="EMname" name="Epname" style="text-align:center"placeholder="Enter Name"></td>
                                <td> <input type="email" id="EMemail" name="Epemail" style="text-align:center"placeholder="Enter Email"></td>
                                <td> <select name="Epdes" id="EMname">
                                    <option value="">Enter Designation</option>
                                    <option value="Partner">Partner</option>
                                    <option value="Director">Director</option>
                                  </select></td>
								                              
                              </tr>
                              
                            </tbody>
                          </table>

                        </div>
                        <!--Footer-->
                        <div class="modal-footer">

                          <input class="btn btn-primary PopUpSubmitbutton" type="submit" name="epname"  formaction="GeneralServlet" value="Submit"
                            style="border-color: white;" required>
                          <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Close</button>

                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- Modal: modalCart -->

                  <!-- button 2 code -->

                  <button type="button" class="btn btn-primary  btnED " data-toggle="modal" data-target="#modalCart1"
                    style="border-color: white;">Enagagement Director</button>

                  <!-- Modal: modalCart -->
                  <div class="modal fade" id="modalCart1" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <!--Header-->
                        <div class="modal-header">
                          <h4 class="modal-title" id="myModalLabel1">Enagagement Director </h4>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">X</span>
                          </button>
                        </div>
                        <!--Body-->
                        <div class="modal-body">

                          <table class="table table-hover">
                            <thead>
                              <tr>

                                <th>Director Name</th>
                                <th>Email</th>
                                <th>Designation</th>
								</tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td> <input type="text" id="EDname" name="Edname" style="text-align:center" placeholder="Enter Name"></td>
         						 <td> <input type="email" id="EDemail" name="Edemail" style="text-align:center" placeholder="Enter Email"></td>
                                <td> <select name="Eddes" id="EDname1">
                                    <option value="">Enter Designation</option>
                                    <option value="Director">Director</option>
                                    <option value="Associate Director">Associate Director</option>
                                  </select></td>
                              		                                
                              </tr>
                              



                            </tbody>
                          </table>

                        </div>
                        <!--Footer-->
                        <div class="modal-footer">

                          <input class="btn btn-primary PopUpSubmitbutton" type="submit" name="edname"  formaction="GeneralServlet" value="Submit"
                            style="border-color: white;">
                          <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Close</button>
               </div>
                      </div>
                    </div>
                  </div>
                  <!-- Modal: modalCart -->
                </div>
                <!-- end of upper 2 popups by this div -->


                <!-- start of bottom 2 popups -->

                <!-- i have to make a div here conatining these two popups -->
                <div class="lower2popups" style="padding-left: 95px;">
                  <!-- btn1 -->
                  <!-- Button trigger modal-->
                  <button type="button" class="btn btn-primary  btnEManager " data-toggle="modal"
                    data-target="#modalCart2" style="border-color: white;">Enagagement Manager</button>

                  <!-- Modal: modalCart -->
                  <div class="modal fade" id="modalCart2" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <!--Header-->
                        <div class="modal-header">
                          <h4 class="modal-title" id="myModalLabel2">Enagagement Manager </h4>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">X</span>
                          </button>
                        </div>
                        <!--Body-->
                        <div class="modal-body">

                          <table class="table table-hover">
                            <thead>
                              <tr>

                                <th>Manager Name</th>
                                <th>Email</th>
                                <th>Designation</th>
                                                                
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td> <input type="text" id="EDname" name="Emname1" style="text-align:center"placeholder="Enter Name"></td>
                                <td> <input type="email" id="EDemail" name="Ememail1" style="text-align:center"placeholder="Enter Email"></td>
                                <td> <select name="Emdes1" id="EDname1">
                                    <option value="">Enter Designation</option>
                                    <option value="Manager">Manager</option>
                                    <option value="Assistant Manager">Assistant Manager</option>
                                  </select></td>
                               
                               
                              </tr>
                              <tr>
                                <td> <input type="text" id="EDname1" name="Emname2" style="text-align:center" placeholder="Enter Name"></td>
                                <td> <input type="email" id="EDemail1" name="Ememail2" style="text-align:center"placeholder="Enter Email"></td>
                                <td> <select name="Emdes2" id="EDname3">
                                    <option value="">Enter Designation</option>
                                    <option value="Manager">Manager</option>
                                    <option value="Assistant Manager">Assistant Manager</option>
                                  </select></td>
                                
                                
                              </tr>



                            </tbody>
                          </table>

                        </div>
                        <!--Footer-->
                        <div class="modal-footer">

                          <input class="btn btn-primary PopUpSubmitbutton" type="submit" name="emname"  formaction="GeneralServlet" value="Submit"
                            style="border-color: white;">
                          <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Close</button>

                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- Modal: modalCart -->
                  <!-- Modal: modalCart -->

                  <!-- button 2 code -->

                  <button type="button" class="btn btn-primary  btnTM " data-toggle="modal" data-target="#modalCart3"
                    style="border-color: white;">Team Members</button>

                  <!-- Modal: modalCart -->
                  <div class="modal fade" id="modalCart3" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <!--Header-->
                        <div class="modal-header">
                          <h4 class="modal-title" id="myModalLabel3">Team Members </h4>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">X</span>
                          </button>
                        </div>
                        <!--Body-->
                        <div class="modal-body">

                          <table class="table table-hover">
                            <thead>
                              <tr>

                                <th>Team Member</th>
                                <th>Email</th>
                                <th>Designation</th>                                
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td> <input type="text" id="TNname" name="Tmname" style="text-align:center" placeholder="Enter Name"></td>
                                <td> <input type="email" id="TEmail" name="Tmemail" style="text-align:center" placeholder="Enter Email"></td>                             
                             	<td> <select name="Tmdes" id="TNname1">
                                    <option value="">Enter Designation</option>
                                   <option value="Assistant Manager">Assistant Manager</option>
                                    <option value="Consultant">Consultant</option>
                                    <option value="Associate Consultant">Associate Consultant</option>
                                    <option value="Analyst">Analyst</option>
                                    
                                  </select></td>
                                </tr>
                              <tr>
                                <td> <input type="text" id="TNname1" name="Tmname1" style="text-align:center" placeholder="Enter Name"></td>
                                <td> <input type="email" id="TEmail1" name="Tmemail1" style="text-align:center" placeholder="Enter Email"></td>                             
                                <td> <select name="Tmdes1" id="TNname3">
                                    <option value="">Enter Designation</option>
                                    <option value="Assistant Manager">Assistant Manager</option>
                                    <option value="Consultant">Consultant</option>
                                    <option value="Associate Consultant">Associate Consultant</option>
                                    <option value="Analyst">Analyst</option>
                                    
                                  </select></td>                                  
								                              
                              </tr>

                              <tr>
                                <td> <input type="text" id="TNname1" name="Tmname2" style="text-align:center" placeholder="Enter Name"></td>
                                <td> <input type="email" id="TEmail2" name="Tmemail2" style="text-align:center" placeholder="Enter Email"></td>                             
                              	<td> <select name="Tmdes2" id="TNname3">
                                    <option value="">Enter Designation</option>
                                    
                                    <option value="Assistant Manager">Assistant Manager</option>
                                    <option value="Consultant">Consultant</option>
                                    <option value="Associate Consultant">Associate Consultant</option>
                                    <option value="Analyst">Analyst</option>
                                    
                                  </select></td>

                                </tr>

                              <tr>
                                <td> <input type="text" id="TNname1" name="Tmname3" style="text-align:center" placeholder="Enter Name"></td>
                                <td> <input type="email" id="TEmail3" name="Tmemail3" style="text-align:center" placeholder="Enter Email"></td>                             
                           		<td> <select name="Tmdes3" id="TNname3">
                                     <option value="">Enter Designation</option>
                                    <option value="Assistant Manager">Assistant Manager</option>
                                    <option value="Consultant">Consultant</option>
                                    <option value="Associate Consultant">Associate Consultant</option>
                                    <option value="Analyst">Analyst</option>
                                    
                                  </select></td>

                                   </tr>

                            </tbody>
                          </table>

                        </div>
                        <!--Footer-->
                        <div class="modal-footer">

                          <input class="btn btn-primary PopUpSubmitbutton" type="submit" name="etname"  formaction="GeneralServlet" value="Submit"
                            style="border-color: white;">
                          <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Close</button>

                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- Modal: modalCart -->
                </div>
                
              </div>

            </div>
            <div class="col-lg-4" style="background-color: #fff;">
              <img src="assets/images/background-div.png" width="472px" height="465px"
                  style="margin-left: -20px!important;margin-top:0px;margin-bottom:-70px;" alt="">
              <img src="assets/images/Picture7.png" style="width: 300px;
              margin-top: -139%;
              height: 270px;
              margin-left: 14%;
              " alt="">
              
          </div>
    
          <div class="row px-3"> <button type="submit"
            class="btn btn-blue text-center signup_btn"
            style="background-color: #470A68;margin-top: -5px!important;height:35px!important;
            margin-left: 970px!important;z-index: 111;"name="submitbutton" id="submit" formaction="GeneralServlet">Submit</button>
            
           <%--  <button
            class="btn btn-blue text-center signup_btn"
            style="background-color: #470A68;height:35px!important;
            margin-left: 970px!important;z-index: 111;margin-top:-450px!important" id="exportppt" name="pptx"disabled ><a href='ppt.jsp?id=<%=request.getParameter("id")%>' alt='Broken Link'>Export PPT</a></button>
            --%>
          </div>
          </div>
        </div>
      </div>
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
 <script>
 

 
 

</script>

</body>

</html>