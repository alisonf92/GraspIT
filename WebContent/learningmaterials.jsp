<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>

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
				<li>
					<a href="home.jsp">Learn</a>
				</li>
				<li class="disabled">
					<a>Teach</a>
				</li>
				
			</ul>
			</div>
			<div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Profile</p>
                <div class="list-group">
            

 <a href="learningmaterials.jsp" class="list-group-item active">Learning Materials</a>


									<a href="selectSubject.jsp" class="list-group-item active"></i> Take Quiz</a></li>

									<a href="streamclient.jsp" class="list-group-item active"></i> Live Class</a></a></li>

									<a href="#"></a></li>
           
                </div>
            </div>
			
			
					
			
				
				<div class="col-md-6 column">
				
<form action="getFiles"><button  type="submit" class="btn btn-default" value = "Submit">View Documents</button></form>

				</div>
			</div>
		</div>
	</div>

</div>
</body>
</html>


