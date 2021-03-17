<jsp:include page="navbar.jsp" />  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
  padding: 20px;
  font-family: Arial;
}

/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}

h1 {
  font-size: 50px;
  word-break: break-all;
}

.row {
  margin: 10px -16px;
}

/* Add padding BETWEEN each column */
.row,
.row > .column {
  padding: 8px;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  display: none; /* Hide all elements by default */
}

/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Content */
.content {
  background-color: white;
  padding: 10px;
}

/* The "show" class is added to the filtered elements */
.show {
  display: block;
}

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}
.rating{
  display: flex;
  color: #9e9e9e;
  font-size: 58px;
}
[type=radio]{
  display: none;
}
form label{
  margin:0 5px;
}
form label:hover{
  color: orange;
}
[type="submit"]{
  border: 2px solid black;
  background-color: white;
  color: black;
  padding: 5px ;
  margin-left: 15px;
}
[type="submit"]:hover{
    background-color: black;
  color: white;
  border: 2px solid gray;
}



p{
  font-family: "Consolas";
}


</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%        
			String a = request.getParameter("name").toString();
            String b = request.getParameter("img").toString();
            %>
			
 <div class="row">
    <div class="content">
      <img src=<%=b%> alt="Mountains" style="width:20%">
      <h4 ><%=a%></h4>
      <form class="rating" method="POST" id="form1" action="insert_rest.jsp?name=<%=a%>">
 
  <input type="radio" id="rating1" name="rating" value="1">
  <label id="1" title="Poor" class="fa fa-star" for="rating1"></label>
  
  <input type="radio" id="rating2" name="rating" value="2">
        <label id="2" title="Average" class="fa fa-star" for="rating2"></label>

  
  <input type="radio" id="rating3" name="rating" value="3">
  <label id="3" title="Average" class="fa fa-star" for="rating3"></label>
     
  
  <input type="radio" id="rating4" name="rating" value="4">
  <label id="4" title="Good" class="fa fa-star" for="rating4"></label>
  
  
  <input type="radio" id="rating5" name="rating" value="5">
  <label id="5" title="Awesome" class="fa fa-star" for="rating5"></label>
<button type="submit" form="form1" value="Submit">RATE</button>

</form> 
<a href="newbook.jsp?name=<%=a%>">book now</a>
<br>
      
       
    
    </div>
  </div>

			
<script>
function rate5(){ 
	 document.getElementById("5").style.color = "orange"; 
	     document.getElementById("4").style.color = "orange";
	   document.getElementById("3").style.color = "orange";
	   document.getElementById("2").style.color = "orange"; 
	  document.getElementById("1").style.color = "orange";
	  }
	 
	function rate4(){
	   document.getElementById("5").style.color = "#9e9e9e"; 
	     document.getElementById("4").style.color = "orange";
	   document.getElementById("3").style.color = "orange";
	   document.getElementById("2").style.color = "orange"; 
	  document.getElementById("1").style.color = "orange";
	}

	function rate3(){
	   document.getElementById("5").style.color = "#9e9e9e"; 
	     document.getElementById("4").style.color = "#9e9e9e";
	   document.getElementById("3").style.color = "orange";
	   document.getElementById("2").style.color = "orange"; 
	  document.getElementById("1").style.color = "orange";
	}

	function rate2(){
	   document.getElementById("5").style.color = "#9e9e9e"; 
	     document.getElementById("4").style.color = "#9e9e9e";
	   document.getElementById("3").style.color = "#9e9e9e";
	   document.getElementById("2").style.color = "orange"; 
	  document.getElementById("1").style.color = "orange";
	}

	function rate1(){
	   document.getElementById("5").style.color = "#9e9e9e"; 
	     document.getElementById("4").style.color = "#9e9e9e";
	   document.getElementById("3").style.color = "#9e9e9e";
	   document.getElementById("2").style.color = "#9e9e9e";
	  document.getElementById("1").style.color = "orange";
	}

	document.getElementById("5").onclick = function(){
	  rate5();
	}
	document.getElementById("4").onclick = function(){
	  rate4();
	}
	document.getElementById("3").onclick = function(){
	  rate3();
	}
	document.getElementById("2").onclick = function(){
	  rate2();
	}
	document.getElementById("1").onclick = function(){
	  rate1();
	}


</script>
</body>
</html>