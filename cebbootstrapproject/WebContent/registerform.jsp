<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function show()
{
	try
{
var name=document.getElement("name").value;
var email=documnet.getElement("email").value;
var password=document.getElement("password").value;
var gender=document.getElement("optradio").value;
var dob=document.getElement("dob").value;
var phonenumber=document.getElement("number").value;
confirm("You have entered:" + "\n name : " + name + " "  + "\n password : " + password + "\n email : "+ email + "\n Gender : "+ gender + "\n\n Do you want to confirm these details ?");
}
catch(Exception t)
{
	System.out.println(t);
}
}
function validateform()
{
	var name=document.getElementById(controlId).style("name");
	 var email=document.getElementById("email");
		 if(name.value.trim()=="")
		 {
		 	name.style.border="solid 2px red";
		 	document.getElementById("lbluser").style.visiblity="visible";
		 	return false;
		 }
	 	else if(email.value.trim()=="")
	 	{
	 		
	 		email.style.border="solid 2px red";
	 		document.getElementById("lbluser").style.visiblity="visible";
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
<form class="form-horizontal"  onsubmit="return validateform()" action="http://localhost:8080/cebbootstrapproject/userregaction.jsp">
<div class="container-fluid">
<h2 style="color:blue; font-weight: italic; text-align:center;">Employee Register Page</h2>
<br>
 <div class="form-group">
    <label class="control-label col-sm-2" for="name">Name:</label>
    <label id="lbluser" style="color:red; visibility:hidden;">Name must be entered</label>
    	<div class="col-xs-6">
      		<input type="text" class="form-control" id="name" name="name" placeholder="Enter name">
    	</div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <label id="lbluser" style="color:red; visibility:hidden;">Email must be entered</label>
    	
    	<div class="col-xs-6">
    	
      		<input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
      		
    	</div>
  </div>
  <div class="form-group">
  	<label for="pwd" class="control-label col-sm-2">Password:</label>
    	<div class="col-xs-6">
      		<input type="password" class="form-control" id="pwd" name="password" placeholder="Enter password">
    	</div>
  </div>
  <div class="form-group">
 	 <label class="control-label col-sm-2" for="gender">Gender:</label>
   		<div class="radio">
   			<div class="col-sm-3">
      			<label><input type="radio" name="optradio" value="male" >Male</label>
      			<label><input type="radio" name="optradio" value="female">Female</label>
      		</div>
    	</div>
   </div>
   <div class="form-group">
   	  <label class="control-label col-sm-2" for="dob">Date of birth:</label>
    		<div class="col-xs-6">
      			<input type="date" class="form-control" id="dob" name="dob" placeholder="dd/mm/yyyy">
    		</div>
  	</div>
    <div class="form-group">
    	<label class="control-label col-sm-2" for="number">Phone number:</label>
     	<label id="lbluser" style="color:red; visibility:hidden;">Phone number must be entered</label>
    		<div class="col-xs-6">
     			<input type="number" class="form-control" id="number" name="number" placeholder="Enter phone number">
     		</div>
  	</div>
  
   <div class="container">
		<div class="row">
			<div class="col-sm-6">
				<input id="button" type="submit" class="btn btn-primary" value="Register" onclick="show()"></button><br>
			</div>
		</div>
	</div>
</div>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>