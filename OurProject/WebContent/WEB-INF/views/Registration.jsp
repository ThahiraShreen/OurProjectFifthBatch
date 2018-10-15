<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet" type="text/css" href="style1.css" />
<script>
function validateForm() {
	var a = document.forms["Registration"]["emailID"].value;
    if (a == "") {
        alert("Email must be filled out");
        return false;
    }
    var x = document.forms["Registration"]["fname"].value;
    if (x == "") {
        alert("FirstName mustnot be empty and text");
        return false;
    }
    var y = document.forms["Registration"]["lname"].value;
    if (y == "") {
        alert("LastName must be filled out");
        return false;
        
    }
    var b = document.forms["Registration"]["age"].value;
    if (b == "") {
        alert("Age must be number");
        return false;
    }
    var c = document.forms["Registration"]["mobilenumber"].value;
    if (c == "") {
        alert("mobile must be number");
        return false;
    }
    var p = document.forms["Registration"]["password"].value;
    if (p == "") {
        alert("password must be filled out");
        return false;
    }
}
</script>
</head>
<body>
<form name="Registration" action="abh"
onsubmit="return validateForm()">
  <div class="container"> 
    <h1>Registration Page</h1>
    <label for="email_id"><b>Email Id</b></label>
    <input type="text"  name="emailID" ><br/>
    <label for="firstname"><b>FirstName</b></label>
    <input type="text"  name="fname" ><br/>
    <label for="lastname"><b>LastName</b></label>
    <input type="text"  name="lname" ><br/>
    <label for="age"><b>Age</b></label>
    <input type="number" name="age" value=" "><br/>
    <label for="mobilenumber"><b>MobileNumber</b></label>
    <input type="number"  name="mobilenumber" value=" "><br/>
     <label for="password"><b>Password</b></label>
    <input type="password" name="password" ><br/>
     <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label><br/>
       <a href="#" style="color:blue">Terms and Privacy</a>

    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signup">Sign Up</button>
    </div>
  </div>
</form>
</body>
</html>