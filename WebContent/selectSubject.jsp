

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
					<a href="signin.jsp">Learn</a>
				</li>
				<li class="disabled">
					<a href="adminlogin.jsp">Teach</a>
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
				<h3>Please select a Subject</h3>
<s:actionerror />
<s:form action="questionPaper">
	<s:select list="{'C','C++','JAVA','PHP'}" name="subject"
		headerKey="null" headerValue="Select Subject"></s:select>
	<s:submit label="Paper Subject" />
</s:form>
<%
}
%>
				</div>
			</div>
		</div>
	</div>


</body>
</html>


