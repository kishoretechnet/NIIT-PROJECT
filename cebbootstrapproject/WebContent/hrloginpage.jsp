<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HR LOGIN PAGE</title>
<script>
function validateform()
{
	var uname=document.getElementById("name");
	 var pass=document.getElementById("password");
	 if(uname.value.trim()=="")
		 {
		 uname.style.border="solid 2px red";
		 document.getElementById("lbluser").style.visiblity="visible";
		 return false;
		 }
	 else if((pass.value.length<5))
		 {
		 pass.style.border="solid 2px red";
		 document.getElementById("lblpass").style.visiblity="visible";
		 return false;
		 }
	 else
		 {
		 return true;
		 }
		 }
</script>
</head>
<body>
<jsp:include page="navigationpage.jsp"></jsp:include>
<div class="container-fluid">
<form class="form-horizontal" onsubmit="return validateform()" action="http://localhost:8080/cebbootstrapproject/hrhomepage.jsp">
<h2 style="color:navy; font-weight: bold;  text-align:center;">HR Login</h2>
<br>

  <div class="form-group">
    <label for="name" class="control-label col-sm-2" >User name:</label>
    <label id="lbluser" style="color:red; visibility:hidden;">Invalid user name</label>
    <div class="col-xs-6">
      <input type="text" class="form-control" id="name" placeholder="Enter user name">
      </div>
    </div>
  
   <div class="form-group">
    <label for="password" class="control-label col-sm-2">Password:</label>
    <div class="col-xs-6">
      <input type="password" class="form-control" id="password" placeholder="Enter password">
      <label id="lblpass" style="color:red; visibility:hidden">Password must between 4 to 10 characters</label>   
    </div>
 </div>
 
   <div class="container">
 <div class="col-md-6">
<button type="submit" class="btn btn-primary btn-lg">Register</button><br>
 </div>
</div>
 </form>
 </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>