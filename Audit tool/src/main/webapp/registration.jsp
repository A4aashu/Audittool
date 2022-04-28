<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign Up</title>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/registration.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

					
    <div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 mx-auto">
        <div class="card card0 border-0">
            <div class="row d-flex">
                <div class="col-lg-4">
                    <div class="card1 pb-5" style="margin-left:5px;margin-top: 124px;">
                        <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img src="assets/images/Picture1.png"
                                class="image"> </div>
                    </div>
                </div>
                <section class="col-lg-8 cutts" style="background-color: #00338D!important;">
                    <div class="card2 card border-0 px-4 py-5" style="margin-top: 15px;background-color: #00338D;
                    color: white;">
                        <div class="row mb-4 px-3">
                            <h3 class="mb-0 mr-4 mt-2" style="margin-left: 290px;">Sign Up!</h3>
                            <h5 class="mb-0 mr-4 mt-2" style="margin-left: 170px;">Let's get you all set up for your
                                journey</h5>
                        </div>
                        <form method="post" action="RegisterServlet" id="registerForm" class="form-horizontal">
                        <div class="row px-3"> <label class="mb-1">
                                <h6 class="mb-0 text-lg" style="font-size: 23px; margin-left: 43px;">Full Name</h6>
                            </label> <input class="mb-4 input_first_name" type="text" name="input_full_name">
                            <h6 class="mb-0 text-lg" style="margin-left: 80px;font-size:23px;">Designation</h6>
                            </label> <input class="mb-4 input_designation" type="text" name="input_designation">
                        </div>
                        <div class="row px-3"> <label class="mb-1">
                                <h6 class="mb-0 text-lg" style="font-size: 23px; margin-left: 43px;">Department</h6>
                            </label> <input class="mb-4 input_designation" type="text" name="input_department">
                            <h6 class="mb-0 text-lg" style="margin-left: 78px;font-size:23px;">Location</h6>
                            </label> <input class="mb-4 input_location" type="text" name="input_location">
                        </div>
                        <div class="row px-3"> <label class="mb-1">
                                <h6 class="mb-0 text-lg" style="font-size: 23px; margin-left: 43px;">KPMG Email ID</h6>
                            </label> <input class="mb-4 input_email" type="email" name="input_email">
                            <h6 class="mb-0 text-lg" style="margin-left: 77px;font-size:23px;">Password</h6>
                            </label> <input class="mb-4 input_password" type="password" name="input_password">
                        </div>

                        <div class="row mb-3 px-3"> <input type="submit" name="btn_register" class="btn btn-blue text-center signup_btn" value="Sign Up"> </div>
                        </form>
                        
                        
                   <div class="row mb-4 px-3" style="margin-left:240px;font-size: 22px;"> <small
                                class="font-weight-bold">Existing User ? <a class="text-danger ">Login</a></small>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
				

</body>
</html>