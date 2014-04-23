
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="java.util.*"%>
<%@page import="questions.Question"%>
<%@page import="questions.QuestionAction"%>
<%	String username = (String) session.getAttribute("username");
	String[] answer;
	String[] quesNum;
	int i = 1;
	ArrayList questpaper = (ArrayList) request.getAttribute("questPaper");
	Iterator iter = questpaper.iterator();
	Question paperQues = new Question();

	if("".equals(session.getAttribute("username"))){
		%>
			<jsp:forward page="signin.jsp"/>
		<%
	}
	else{
		
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
 <link href="css/bootstrap.min.css" rel="stylesheet" type = "text/css">
 <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
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
				<h3 style="color: gray">Question Paper</h3>
<s:form action='ResultAction' >
	<%
		while (iter.hasNext()) {
	%>
	<s:bean name="questions.Test" var="paper">
		<s:param name="quesno"><%=iter.next()%></s:param>
		<s:param name="question"><%=iter.next()%></s:param>
		<s:param name="ans1"><%=iter.next()%>,</s:param>
		<s:param name="ans2"><%=iter.next()%></s:param>
		<s:param name="ans3"><%=iter.next()%></s:param>
		<s:param name="ans4"><%=iter.next()%></s:param>
		<s:param name="radioId"><%=i%></s:param>
	</s:bean>
	<s:hidden value="%{#paper.quesno}" name="totalQues" />
	<s:hidden value="%{#paper.quesno}" name="quesNum['%{#paper.radioId}']" />
	<s:label value="%{#paper.radioId}..%{#paper.question}" />
	<s:radio list="%{#paper.ans1}" name="answer['%{#paper.radioId}']"></s:radio>
	<s:radio list="%{#paper.ans2}" name="answer['%{#paper.radioId}']"></s:radio>
	<s:radio list="%{#paper.ans3}" name="answer['%{#paper.radioId}']"></s:radio>
	<s:radio list="%{#paper.ans4}" name="answer['%{#paper.radioId}']"></s:radio>
	<%
		i = i + 1;
			}
	%>
	<s:submit></s:submit>
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


