<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign Up</title>
<meta charset="UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/registration.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

					
    <div class="container-fluid" style="padding:0px;">
        <div class="card card0 border-0">
            <div class="row d-flex">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="card1 pb-5" style="margin-left:5px;margin-top: 124px;">
                        <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img src="assets/images/Picture1.png"
                                class="image"> </div>
                    </div>
                </div>
                <section class="col-lg-8  col-md-12 col-sm-12 cutts" style="background-color: #00338D!important;">
                    <div class="card2 card border-0 px-4 py-5" style="margin-top: 15px;background-color: #00338D;
                    color: white;">
                        <div class="row mb-4 px-3">
                            <h3 class="mb-0 mr-4 mt-2" style="margin-left: 40%;">Sign Up!</h3>
                            <h5 class="mb-0 mr-4 mt-2 txtt" style="margin-left: 25%;">Let's get you all set up for your
                                journey</h5>
                        </div>
                        <form method="post" action="RegisterServlet" id="registerForm" class="form-horizontal" onsubmit="return buttonclick()">
                        <div class="row px-3"> <label class="mb-1">
                                <h6 class="mb-0 text-lg labelstyle">Full Name</h6>
                            </label> <input class="mb-4 input_first_name" type="text" name="input_full_name" required>
                            <h6 class="mb-0 text-lg labelstyle2">Department</h6>
                            </label> <input class="mb-4 input_last_name" type="text" name="input_department" required>
                        </div>
                        <div class="row px-3"> <label class="mb-1">
                                <h6 class="mb-0 text-lg labelstyle ">Designation</h6>
                            </label>
                             <select class="form-control input_designation font-weight-bold" name="input_designation">
                                <option value="Partner">Partner</option>
                                <option value="Associate_Partner">Associate Partner</option>
                                <option value="Director">Director</option>
                                <option value="Associate_Director">Associate Director</option>
                                <option value="Manager">Manager</option>
                                <option value="Assistant_Manager">Assistant Manager</option>
                                <option value="Consultant">Consultant</option>
                                <option value="Associate_Consultant">Associate Consultant</option>
                                <option value="Analyst">Analyst</option>
                              </select>
                            <h6 class="mb-0 text-lg labelstyle2">Location</h6>
                            </label>
                            
                            <select class="form-control input_location font-weight-bold ms-Dropdown-select" name="input_location">
                                <option value="Ahmedabad">Ahmedabad</option>
                                <option value="Bengaluru">Bengaluru</option>
                                <option value="Chandigarh">Chandigarh</option>
                                <option value="Chennai">Chennai</option>
                                <option value="Gurugram">Gurugram</option>
                                <option value="Hyderabad">Hyderabad</option>
                                <option value="Mumbai">Mumbai</option>
                                <option value="Navi_Mumbai">Navi Mumbai</option>
                                <option value="Noida">Noida</option>
                                <option value="Pune">Pune</option>
                                <option value="Vadodara">Vadodara</option>
                                <option value="Vijayawada">Vijayawada</option>
                              </select>
                        </div>
                        <div class="row px-3"> <label class="mb-1">
                        <h6 class="mb-0 text-lg labelstyle" style="padding-top:15px!important;">KPMG Email ID</h6>
                            </label> <input class="mb-4 input_email" type="email" name="input_email" id="txtEmail"  required>
                                <h6 class="mb-0 text-lg labelstyle2" style="padding-top:15px!important;">Password</h6>
                            </label> <input class="mb-4 input_password" type="password" name="input_password" id="txtPassword"  required>
                            
                        </div>

                        <div class="row mb-3 px-3"> <input type="submit" name="btn_register" class="btn btn-blue text-center signup_btn"  value="Sign Up"> </div>
                        </form>
                        
                        
                   <div class="row mb-4 px-3 logintxt" style="margin-left:35%;font-size: 22px;"> <small
                                class="font-weight-bold">Existing User ? <a href="index.jsp" class="text-danger ">Login</a></small>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
				
<script>

    function buttonclick(){
    	var email = document.getElementById('txtEmail');
    	var Pass = document.getElementById('txtPassword');
    	var filter=/^[a-z0-9]+(?!.*(?:\+{2,}|\-{2,}|\.{2,}))(?:[\.+\-]{0,1}[a-z0-9])*@kpmg\.com$/
    	var filter1=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[_@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$/
    	if (!filter.test(email.value)) {
    		alert('please provide valid KPMG email id')
    	    email.focus;
    		return false;
    	
    	}
    	else if(!filter1.test(Pass.value)){
    		alert('Please provide a valid Password with UpperCase, LowerCase, Symbol, Number and 8 characters long');
    		Pass.focus;
        	return false;
    	}
    	return true;
    	
    }
    </script>
    <script>
    var DropdownHTMLElements = document.querySelectorAll('.ms-Dropdown-select');

    for (var i = 0; i < DropdownHTMLElements.length; ++i) {
      var Dropdown = new fabric['Dropdown'](DropdownHTMLElements[i]);
    }
    </script>
</body>
</html>