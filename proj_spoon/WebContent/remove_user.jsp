<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%        
			String dn = request.getParameter("dname").toString();
           
%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/KLEF","root","ROOT");
Statement st= con.createStatement();
int i=st.executeUpdate("DELETE FROM proj_user WHERE uname='"+dn+"'");

try{

 if(i>0)
{
	 
	 response.sendRedirect("admin_manage_user.jsp");
	 
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