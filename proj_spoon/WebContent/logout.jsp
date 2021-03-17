<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="home.html" %> 
<%
	session.removeAttribute("username");
	
	session.invalidate();
	%>
	<h1>Logout was done successfully.</h1>

</body>
</html>