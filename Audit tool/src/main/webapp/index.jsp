<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<form method="post" action="LoginServlet" id="loginForm" class="form-horizontal">
					
    <div class="form-group">
    <label class="col-sm-3 control-label">Email</label>
    <div class="col-sm-6">
    <input type="text" name="txt_email" class="form-control" placeholder="enter email" />
    </div>
    </div>
			
    <div class="form-group">
    <label class="col-sm-3 control-label">Password</label>
    <div class="col-sm-6">
    <input type="password" name="txt_password" class="form-control" placeholder="enter passowrd" />
    </div>
    </div>
				
    <div class="form-group">
    <div class="col-sm-offset-3 col-sm-9 m-t-15">
    <input type="submit" name="btn_login" class="btn btn-success" value="Login">
    </div>
    </div>
				
    <div class="form-group">
    <div class="col-sm-offset-3 col-sm-9 m-t-15">
    You don't have a account register here? <a href="registration.jsp"><p class="text-info">Register Account</p></a>		
    </div>
    </div>
					
</form>
</body>
</html>