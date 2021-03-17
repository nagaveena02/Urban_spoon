<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accept</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%        
			String a = request.getParameter("time").toString();
            String sta="Accepted";
%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/KLEF","root","ROOT");
Statement st= con.createStatement();
int i=st.executeUpdate("Update user_books set status='"+sta+"' where bookingtime='"+a+"'");

try{

 if(i>0)
{
	 
	 response.sendRedirect("admin_manage_book.jsp");
	 
}
else{
  response.sendRedirect("error.jsp");
   }
}

catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>