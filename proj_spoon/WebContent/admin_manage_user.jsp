<jsp:include page="adminavbar.jsp" />  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.center {
  margin-left: auto;
  margin-right: auto;
 
}

</style>
<body>

<%@page import="java.sql.*,java.util.*"%>


<table border="1" class="center" >
<tr style="background-color:Violet;">
<td>user name</td>
<td>email</td>

<td>Operations</td>

</tr>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/KLEF","root","ROOT");
Statement st= con.createStatement();
String sql ="select * from proj_user ";
ResultSet rs = st.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("uname") %></td>
<td><%=rs.getString("email") %></td>
<td><button style="background-color:Tomato;"><a href="remove_user.jsp?dname=<%=rs.getString("uname") %>">Remove user</a></button></td>

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