

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
					<a href="signin.jsp">Learn</a>
				</li>
				<li >
					<a href="adminhome.jsp">Teach</a>
				</li>
				
			</ul>
			</div>
			<div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Admin Module</p>
                <div class="list-group">
                    <a href="addquesform.action" class="list-group-item active">Add Exam Question</a>
                    <a href="#" class="list-group-item">Edit</a>
                    <a href="#" class="list-group-item">Delete</a>
                     <a href="fileUpload.jsp" class="list-group-item active">Upload</a>
                      <a href="stream.jsp" class="list-group-item active">Stream Class</a>
                </div>
            </div>
			</div>
			
					
				</div>
				<div class="col-md-6 column">
				</div>
			</div>
		</div>
	</div>


</body>
</html>