<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="height:500px;width:550px;margin:0 auto;">
<div class="center" >
<h4 style="color:#999;margin-bottom:40px;" class="center"> Upload CV Document for <s:property value="jobName" /></h4>
 
<s:form action="uploadFile" namespace="/" method="POST" enctype="multipart/form-data">
 
	<s:file name="myFile" label="Select a File to upload" size="40" />
 
	<s:submit value="Upload" name="submit" />
 
</s:form>
</div> 
</div>
</body>
</html>