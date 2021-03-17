<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*,java.time.format.DateTimeFormatter,java.time.LocalDateTime"%>
<%String a = request.getParameter("name").toString();
String uname=session.getAttribute("username").toString();%>
<%


String date=request.getParameter("date");
String np=request.getParameter("np");
String time=request.getParameter("time");
String status="pending";
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
LocalDateTime now = LocalDateTime.now();


Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/KLEF","root","ROOT");
Statement st= con.createStatement();
int i=st.executeUpdate("insert into user_books values('"+uname+"','"+dtf.format(now)+"','"+a+"','"+date+"','"+np+"','"+time+"','"+status+"')");

try{

 if(i>0)
{
	 
	 response.sendRedirect("homeafterlogin.jsp");
	 
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