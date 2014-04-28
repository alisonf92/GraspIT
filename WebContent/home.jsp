
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<% 
if("".equals(session.getAttribute("username"))){
%>
<jsp:forward page="signin.jsp"/>
<%	
}else{
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
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
					<a >Teach</a>
				</li>
				<form action="LogoffAction" align = "right">
									<button class="btn btn-primary">Log Off</button>
									
								
								</form>
			</ul>
			</div>
			
			</div>
		</div>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="./img/prog.jpg" />
						<div class="caption">
							<h3>
								Programming Made Easy
							</h3>
							<p>
							</p>
							<p>
								<a class="btn btn-primary" href="subjecttemplate.jsp">Open</a> 
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="./img/accounting1.jpg" />
						<div class="caption">
							<h3>
								Financial Accounting
							</h3>
							
							<p>
								<a class="btn btn-primary" href="#">Open</a> 
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="./img/calculus.jpg" />
						<div class="caption">
							<h3>
								Calculus
							</h3>
							
							<p>
								<a class="btn btn-primary" href="#">Open</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row">
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="./img/statistics.jpg" />
						<div class="caption">
							<h3>
								Statistics
							</h3>
							<p>
							</p>
							<p>
								<a class="btn btn-primary" href="subjecttemplate.jsp">Open</a> 
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="./img/marketing.jpg" />
						<div class="caption">
							<h3>
								Marketing
							</h3>
							
							<p>
								<a class="btn btn-primary" href="#">Open </a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<img alt="300x200" src="./img/images.jpg" />
						<div class="caption">
							<h3>
								Introduction to History
							</h3>
							
							<p>
								<a class="btn btn-primary" href="#">Open</a> 
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%	
}
%>
</body>
</html>


