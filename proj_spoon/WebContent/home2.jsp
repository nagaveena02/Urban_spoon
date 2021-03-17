
<%String a = request.getAttribute("name").toString();%>
<% 
session.setAttribute("username", a);
response.sendRedirect("homeafterlogin.jsp");
%>
