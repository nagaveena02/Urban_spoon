<jsp:include page="navbar.jsp" />  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>.center {
  margin-left: auto;
  margin-right: auto;
}


</style>

<body>
<%
			String a = session.getAttribute("username").toString();
			out.println("Hello " + a);
			%>
			
<%@page import="java.sql.*,java.util.*"%>


<table border="1" class="center">
<tr style="background-color:Violet;">
<td>Restaurant Name</td>
<td>Date</td>
<td>No.Of persons</td>
<td>Time</td>
<td>Status</td>

</tr>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/KLEF","root","ROOT");
Statement st= con.createStatement();
String sql ="select * from user_books where uname='"+a+"'";
ResultSet rs = st.executeQuery(sql);

while(rs.next()){
%>
<tr>
<td><%=rs.getString("restname") %></td>
<td><%=rs.getString("date") %></td>
<td><%=rs.getString("np") %></td>
<td><%=rs.getString("time") %></td>
<%if(rs.getString("status").equals("pending")){ %>

<td style="background-color:Orange;"><%=rs.getString("status") %></td>
<%} %>
<%if(rs.getString("status").equals("Accepted")){ %>

<td style="background-color:MediumSeaGreen;"><%=rs.getString("status") %></td>
<%} %>
<%if(rs.getString("status").equals("canceled")){ %>

<td style="background-color:Tomato;"><%=rs.getString("status") %></td>
<%} %>

</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</body>
</html>