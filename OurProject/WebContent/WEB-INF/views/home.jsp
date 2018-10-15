<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>

<title>Event manager</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<link rel="stylesheet" type="text/js" href="mine.js" />
    <script>
	function gologin(){
		window.location = "popoye";
	}
			function gosignup(){
		window.location = "Registration";
	}
	</script>
</head>

<body >
<div class="main" style="height: 600px;" >
<div class="top" style="width:840px; height:15px; float:left;">
</div>


	<div class="header">
		<div class="menu" style="font-size:12px; width:400px; height:30px; float:right;  margin-top:20px;">
<a href="#" style="padding-left:10px; padding-right:10px; border-right:2px dotted gray;">HOME</a>
<a href="#" style="padding-left:10px; padding-right:10px; border-right:2px dotted gray;">ABOUT US</a>
<a href="#" style="padding-left:10px; padding-right:10px;border-right:2px dotted gray;">GALLERY</a>

<a href="#" style="padding-left:10px;">CONTACT US</a>
</div>
	   <div style="width: 840px;height: 400px;float: left; background:url('http://undergrad.lecole.edu.pk/wp-content/uploads/bfi_thumb/event-dawat-pics-mvw8fy0p8ub1nd676rkyvr6xf3n3yghe1fawm7jsfg.jpg')">
     <a href="index.html"></a>
    </div>

	</div>
		<button class="button button2" onClick="gologin()">Login</button>
<button class="button button3" onClick="gosignup()">New User</button>
	</div>















<!-- 	<title>Home</title>
</head>
<body>
<h1>
	WELCOME.....  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<h3>If you are already a Member you can login here
<a href="popoye">Login....</a><br/>
If not you can register Here
<a href="register">Register Here</a>
</h3>
 -->
</body>
</html>
