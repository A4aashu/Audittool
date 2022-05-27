<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="assets/css/Forgot_pwd.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
      integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
      integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
      crossorigin="anonymous"
    ></script>
    <title>IA Accelerator</title>
  </head>
  <body>
    <div class="container-fluid">
      <div class="card card-style">
        <div class="row">
          <div class="col col-lg-6 col-md-12 col-sm-12 col-xs-12 main-content">
            <div >
<form method="post" action="ForgotPasswordServlet" id="ForgetForm" class="form-horizontal" onsubmit="return buttonclick()" >
              <div class="content_1">
                <p class="header">Forgot your Password?</p>
                <p class="ptext">
                  Enter your email id below to receive the instructions to reset
                  your Password?
                </p>
                <input class="user" type="text" id="user-id" name="user_id" required/>
              </div>
              <div class="form-group">
                <input type="submit" name="btn_forgot" class="btn btn-primary" value="Submit">
              </div>
</form>
              <div class="row content_2">
                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 para_2">
                  <div class="form-group">
                    <p>Remember Password? <a href="index.jsp">Login</a></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
            <div class="content_3">
              <img src="assets/images/forgot_pwd.png" alt="forgot-pwd" />
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <script>

    function buttonclick(){
    	var email = document.getElementById('user-id');
    	var filter=/^[a-z0-9]+(?!.*(?:\+{2,}|\-{2,}|\.{2,}))(?:[\.+\-]{0,1}[a-z0-9])*@kpmg\.com$/
    	if (!filter.test(email.value)) {
    		alert('please provide valid KPMG email id')
    	    email.focus;
    		return false;
    	}
    	return true;
    }
    </script>
  </body>
</html>
