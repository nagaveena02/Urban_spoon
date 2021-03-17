<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%@ page import="java.sql.*,java.io.*"%>


<!DOCTYPE html>
<html>
    <head>
       
        <title>inserting data</title>
    </head>
    <body>
         <%
         
         String a = request.getParameter("name").toString();
         String rate = request.getParameter("rating");
         String username = session.getAttribute("username").toString();

Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/KLEF","root","ROOT");
Statement st= con.createStatement();
Statement st1= con.createStatement();
String sql ="select * from restaurants where uname='"+username+"'and rname='"+a+"'";
ResultSet rs = st1.executeQuery(sql);

if(rs.next() != false){ 
	int i=st.executeUpdate("Update restaurants set rating='"+rate+"' where uname='"+username+"'and rname='"+a+"'");


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

}
else{
int i=st.executeUpdate("insert into restaurants values('"+username+"','"+a+"','"+rate+"')");



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
}
         %>

    </body>
</html>