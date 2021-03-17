<jsp:include page="adminavbar.jsp" />  
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

<%@page import="java.sql.*,java.util.*"%>


<table border="1" class="center" >
<tr style="background-color:Violet;">
<td >user name</td>
<td>Restaurant Name</td>
<td>Date</td>
<td>No.Of persons</td>
<td>Time</td>
<td>Status</td>
<td>Operations</td>

</tr>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/KLEF","root","ROOT");
Statement st= con.createStatement();
String sql ="select * from user_books ";
ResultSet rs = st.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("uname") %></td>
<td><%=rs.getString("restname") %></td>
<td><%=rs.getString("date") %></td>
<td><%=rs.getString("np") %></td>
<td><%=rs.getString("time") %></td>
<td><%=rs.getString("status") %></td>
<% if(rs.getString("status").equals("canceled")){ %>
<td><button style="background-color:MediumSeaGreen;"><a href="acceptbook.jsp?time=<%=rs.getString("bookingtime")  %>" >Accept</a></button><br></td> <%}%>
<% if(rs.getString("status").equals("pending")){ %>
<td><button style="background-color:MediumSeaGreen;"><a href="acceptbook.jsp?time=<%=rs.getString("bookingtime")  %>" >Accept</a></button><br><button style="background-color:Tomato;"><a href="cancel.jsp?time=<%=rs.getString("bookingtime")  %>" >cancel</a></button></td> <%}%>
<% if(rs.getString("status").equals("Accepted")){ %>
<td><button style="background-color:Tomato;"><a href="cancel.jsp?time=<%=rs.getString("bookingtime")  %>" >cancel</a></button></td><%} %>

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