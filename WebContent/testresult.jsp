
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="questions.FinalResultModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%
	FinalResultModel result = (FinalResultModel) session.getAttribute("FinalResultModel");
	ArrayList rightQuesAns = result.getRightQuesNans();
	Iterator obIter = rightQuesAns.iterator();
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
<h3>Paper result</h3>

<table>
	<%
		while (obIter.hasNext()) {
	%>
	<tr>
		<td style="color: gray;">Ques :</td>
		<td><%=obIter.next()%></td>
	</tr>
	<tr>
		<td style="color: green;">Right :</td>
		<td><%=obIter.next()%></td>
	</tr>
	<%
		}
	%>
</table>
<table>
	<tr>
		<td style="color: green;">Result Marks :</td>
		<td><%=result.getCount()%><br />
		<tr>
			<td style="color: gray;">Number of wrong answer :</td>
			<td><%=result.getWrongAns()%><br />
			<tr>
				<td style="color: green;">Number of right answer :</td>
				<td><%=result.getRightAns()%>
</table>
				</div>
			</div>
		</div>
	</div>


</body>
</html>


