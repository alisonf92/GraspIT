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
<table class="striped sortable">
				<thead>
				<tr>
<th>Description</th><th>File</th>
</tr></thead>
<s:iterator value="documents" status ="documentsStatus" id="documentsBean" >
 <tr>
  	<s:if test="#documentsStatus.even == true">
		<td><s:property value ="description" /> </td>
		<td><s:url id="fileDownload" namespace="/" action="download" ></s:url> <s:a href="%{fileDownload}">Download CV</s:a></td>
    </s:if>
    <s:elseif test="#applicationsStatus.first == true">
		<td><s:property value ="description" /> </td>
		<td><s:url id="fileDownload" namespace="/" action="download" ></s:url> <s:a href="%{fileDownload}">Download CV</s:a></td>
    </s:elseif>
    <s:else>
		
		<td><s:property value ="description" /> </td>
		<td><s:url id="fileDownload" namespace="/" action="download" ></s:url> <s:a href="%{fileDownload}">Download CV</s:a></td>
    </s:else>
  </tr>
</s:iterator>
</table>
</body>
</html>