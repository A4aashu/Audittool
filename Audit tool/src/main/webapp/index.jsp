<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>login</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@1,300&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="assets/css/loginscreen.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
 </head>

<body>
<form method="post" action="LoginServlet" id="loginForm" class="form-horizontal">
<div id="maincontainer" class="container login-container">
      
        <div class="row">
          <section class="col-lg-6 login-form-1">
            <div class="logo">
              <img id="logo" src="assets/images/KPMG logo balckbg.png" alt="KPMG" />
            </div>
            <div class="container-1">
              <h3>Welcome, Login to Continue</h3>
              <form>
                <div class="form-group">
                  <h6>User ID</h6>
                  <input
                    type="text"
                    name="txt_email"
                    class="form-control font-weight-bold"
                    placeholder="Your Email *"
                    value=""
                  />
                </div>
                <div class="form-group">
                  <h6>Password</h6>
                  <input
                    type="password"
                    name="txt_password"
                    class="form-control font-weight-bold"
                    placeholder="Your Password *"
                    value=""
                  />
                </div>
                <div class="form-group" style="padding-top: 15px">
                  <a href="forgotpass.jsp" class="ForgetPwd">Forget Password?</a>
                </div>
                <div class="form-group">
                  <input type="submit" name="btn_login" class="btn btn-primary" value="Login">
                </div>
                <div class="form-group">
                  <a href="registration.jsp" class="NewUser">New User? Sign Up</a>
                </div>
              </form>
            </div>
          </section>

          <div class="col-lg-6 login-form-2">
            <img
              id="loginImage"
              src="assets/images/loginPageimg.png"
              alt="proble getting Login"
            />
          </div>
        </div>
      </div>
  

					
</form>












</body>
</html>