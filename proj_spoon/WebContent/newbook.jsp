 
<!DOCTYPE html>    
<html> 
<script type="text/javascript">
function validation() {

		var name = document.f1.Uname.value;
		
		var email = document.f1.email.value;
		var pswd = document.f1.Pass.value;
		var dt=document.f1.date.value;
		
		
		var CurrentDate = new Date();
		GivenDate = new Date(dt);

		if(GivenDate < CurrentDate){
		 
		    alert('Given date is not greater than the current date.');
		    return false;
		}
		
		else if (name == null || name == "") {
			alert("Please enter a Name");
			return false;
		
		}else if (name.length < 8) {
			alert("Name should have minimum of 8 characters");
			return false;
		} 
	}
</script>
   
<head>    
    <title>Register Form</title>   
     
    <style>
    html {
  height:100%;
}

body {
  margin:0;
}

.bg {
  animation:slide 3s ease-in-out infinite alternate;
  background-image: linear-gradient(-60deg, #6c3 50%, #09f 50%);
  bottom:0;
  left:-50%;
  opacity:.5;
  position:fixed;
  right:-50%;
  top:0;
  z-index:-1;
}

.bg2 {
  animation-direction:alternate-reverse;
  animation-duration:4s;
}

.bg3 {
  animation-duration:5s;
}

.content {
  background-color:rgba(255,255,255,.8);
  border-radius:.25em;
  box-shadow:0 0 .25em rgba(0,0,0,.25);
  box-sizing:border-box;
  left:50%;
  padding:10vmin;
  position:fixed;
  text-align:center;
  top:50%;
  transform:translate(-50%, -50%);
}

h1 {
  font-family:monospace;
}

@keyframes slide {
  0% {
    transform:translateX(-25%);
  }
  100% {
    transform:translateX(25%);
  }
}
    body  
{  
    margin: 0;  
    padding: 0;  
    background-color:peal;  
    font-family: 'Arial';  
}  
.login{  
        width: 382px;  
        overflow: hidden;  
        margin: auto;  
        margin: 20 0 0 450px;  
        padding: 80px;  
        background: #23463f;  
        border-radius: 15px ;  
          
}  
h2{  
    text-align: center;  
    color: #277582;  
    padding: 20px;  
}  
label{  
    color: #08ffd1;  
    font-size: 17px;  
}  
#Uname{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
}
#email{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
} 
#date{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
} 
#time{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
} 
#np{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
} 

  
 
#Pass{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
      
}  
#log{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: blue;  
  
  
}  
span{  
    color: white;  
    font-size: 17px;  
}  
a{  
    float: right;  
    background-color: grey;  
}  </style>     
</head>    
<body> 

    <h2><% String s=request.getParameter("name").toString(); 
          out.println(s);%> Booking</h2><br>  
    <div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>

    <div class="login">  
        
    <form id="login" method="post" action="bookinsert.jsp?name=<%= s  %>" onSubmit="return validation()" name="f1">    
        
        <label>Date of booking:</label>
         <br>
         <input type="date" id="date" name="date">
        <br>
        <br>
          <label>no of people attending:</label>
          <br>
          <input type="number" id="np" name="np" min="1" max="10">
       
      
        <br>
        <br>
        <label for="appt">Select a time:</label>
  <input type="time" id="time" name="time">
  <br>
  <br>
         
       
           
        <br><br> 
          
        <button type="submit" name="log" id="log" >book now</button>
        <br><br>  
        
            
           
        
    </form>     
</div>
  
</body>    
</html>