<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
 <link href="css/bootstrap.min.css" rel="stylesheet" type = "text/css">
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="nav nav-tabs">
				<li class="active">
				
					<a href = "index.jsp">GraspIT!</a>
				</li>
				<li class="disabled">
					<a >Learn</a>
				</li>
				<li class="enabled">
					<a href="adminlogin.jsp">Teach</a>
				</li>
				
			</ul>
			<div class="row clearfix">
				<div class="col-md-6 column">
					<form role="form" action="adminloginprocess">
					<h2>Please Sign In</h2>
						<div class="form-group"  >
							 <label >Username
							 <input class="form-control" name="username" type="text" /></label>
						</div>
						<div class="form-group">
							 <label>Password
							 <input type="password" name="password" class="form-control" />
							 </label>
						</div>
						<div class="checkbox">
			    	    	<label>
			    	    		<input name="remember" type="checkbox" value="Remember Me"> Remember Me
			    	    	</label>
			    	    </div>
							 <button type="submit" class="btn btn-default" value="Admin Login">Submit</button>
						</div> 
					</form>
				</div>
				<div class="col-md-6 column">
				</div>
			</div>
		</div>
	</div>
</div>



</body>
</html>