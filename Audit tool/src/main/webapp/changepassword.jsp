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
<form method="post" action="ChangePasswordServlet" id="ChangeForm" class="form-horizontal" onsubmit="return buttonclick()" >
              <div class="content_1">
                 <p class="header">Change Password</p>
                <p class="ptext">
                  Email
                </p>
                <input class="user" type="text" id="user-id" name="user_id" value=${param.key1} readonly/>
                <p class="ptext">
                  New Password
                </p>
                <input class="user" type="password" id="user-pass" name="user_password"  required/>
                <input class="user" type="hidden" id="user-token" name="user_token" value=${param.key2} />
              </div>
              <div class="form-group">
                <input type="submit" name="btn_change" class="btn btn-primary" value="Submit">
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
    	var Pass = document.getElementById('user-pass');
    	var filter1=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[_@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$/
    	if(!filter1.test(Pass.value)){
    		alert('Please provide a valid Password with UpperCase, LowerCase, Symbol, Number and 8 characters long');
    		Pass.focus;
        	return false;
    	}
    	return true;
    	
    }
    </script>
  </body>
</html>
