<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
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
</style>
</head>
<body>


<!-- MAIN (Center website) -->
<div class="main">

<h1><marquee>Urban Spoon</marquee></h1>
<hr>

<h2>Restaurants</h2>

<div id="myBtnContainer">
  <button class="btn active" onclick="filterSelection('all')"> Show all</button>
  <button class="btn" onclick="filterSelection('nature')"> Near restaurants</button>
  <button class="btn" onclick="filterSelection('cars')"> popular restaurants</button>
  <button class="btn" onclick="filterSelection('people')"> Five star restaurants</button>
</div>

<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column nature">
    <div class="content" <%String b="img/d1.jpg"; %>>
      <img src=<%= b %> alt="Mountains" style="width:100%">
      <h4 >Mountains</h4>
      <p>Lorem ipsum dolor..</p>
      <a>3.5&#11088;</a>
       
      <a href="books.jsp?name=mountains&img=<%=b%>">Book now</a>
    </div>
  </div>
  <div class="column nature">
    <div class="content" <%String c="img/d2.jpg"; %>>
    <img src=<%= c %> alt="Lights" style="width:100% ">
      <h4>Lights</h4>
      <p>Lorem ipsum dolor..</p>
      
      <a href="books.jsp?name=ligths&img=<%=c%>" >Book now</a>
    </div>
  </div>
  <div class="column nature">
    <div class="content" <%String c2="img/d3.jpg"; %>>
    <img src=<%= c2 %> alt="Nature" style="width:100%">
      <h4>Forest</h4>
      <p>Lorem ipsum dolor..</p>
     
      <a a href="books.jsp?name=forest&img=<%=c2%>" >Book now</a>
    </div>
  </div>
  
  <div class="column cars">
    <div class="content" <%String c1="img/d4.jpg"; %>>
      <img src=<%= c1 %> alt="Car" style="width:100%">
      <h4>Retro</h4>
      <p>Lorem ipsum dolor..</p>
    
      <a a href="books.jsp?name=retro&img=<%=c1%>" >Book now</a>
    </div>
  </div>
  <div class="column cars">
    <div class="content" <%String d="img/d5.jpg"; %>>
    <img src=<%= d %> alt="Car" style="width:100%">
      <h4>Fast</h4>
      <p>Lorem ipsum dolor..</p>
     
      <a  href="books.jsp?name=fast&img=<%=d%>" >Book now</a>
    </div>
  </div>
  <div class="column cars">
    <div class="content" <%String e="img/d6.jpg"; %>>
    <img src=<%= e %> a lt="Car" style="width:100%">
      <h4> Classic</h4>
      <p>Lorem ipsum dolor..</p>
      
      <a  href="books.jsp?name=classic&img=<%=e%>" >Book now</a>
    </div>
  </div>

  <div class="column people">
    <div class="content" <%String f="img/d7.jpg"; %>>
    
      <img src=<%= f %> alt="Car" style="width:100%">
      <h4>Girl</h4>
      <p>Lorem ipsum dolor..</p>
  
      <a a href="books.jsp?name=girl&img=<%=f%>" >Book now</a>
    </div>
  </div>
  <div class="column people">
    <div class="content" <%String g="img/d8.jpg"; %>>
    <img src=<%= g %> alt="Car" style="width:100%">
      <h4>Man</h4>
      <p>Lorem ipsum dolor..</p>
     
      <a a href="books.jsp?name=man&img=<%=g%>" >Book now</a>
    </div>
  </div>
  <div class="column people">
    <div class="content" <%String h="img/d9.jpg"; %>>
    <img src=<%= h %> alt="Car" style="width:100%">
      <h4>Woman</h4>
      <p>Lorem ipsum dolor..</p>
    
      <a  href="books.jsp?name=woman&img=<%=h%>" >Book now</a>
    </div>
  </div>
<!-- END GRID -->
</div>

<!-- END MAIN -->
</div>

<script>
filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}

function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}


// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>

</body>
</html>
    