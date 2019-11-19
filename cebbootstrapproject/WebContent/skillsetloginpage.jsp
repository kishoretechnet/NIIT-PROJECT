<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function validateform()
{
	var name=document.getElementById("name");
	 var number=document.getElementById("number");
	 var snumber=document.getElementById("snumber");
	 var bnumber=document.getElementById("bnumber");
	 var current=document.getElementById("current");
	 var posting=document.getElementById("posting");
	 var course=document.getElementById("course");
	 
	 if(name.value.trim()=="")
		 {
		 name.style.border="solid 2px red";
		 document.getElementById("lbluser").style.visiblity="visible";
		 return false;
		 }
	 else if((number.value.length<10))
	 {
	 number.style.border="solid 2px red";
	 document.getElementById("lbluser").style.visiblity="visible";
	 return false;
	 }
	 else if((snumber.value.length<1000))
	 {
	 snumber.style.border="solid 2px red";
	 document.getElementById("lbluser").style.visiblity="visible";
	 return false;
	 }
	 else if((bnumber.value.length<10000))
	 {
	 bnumber.style.border="solid 2px red";
	 document.getElementById("lbluser").style.visiblity="visible";
	 return false;
	 }
	 else if(current.value.trim()=="")
	 {
	 current.style.border="solid 2px red";
	 document.getElementById("lbluser").style.visiblity="visible";
	 return false;
	 }
	 else if(posting.value.trim()=="")
	 {
	 posting.style.border="solid 2px red";
	 document.getElementById("lbluser").style.visiblity="visible";
	 return false;
	 }
	 else if(course.value.trim()=="")
	 {
	 course.style.border="solid 2px red";
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
<div class="container-fluid">
<h2 style="color:navy; font-weight: bold;  text-align:center;">Skill Set Register</h2>
<br>
<form class="form-horizontal" onsubmit="return validateform()" action="http://localhost:8080/cebbootstrapproject/skillsetloginpage.jsp">
  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Name:</label>
    <label id="lbluser" style="color:red; visibility:hidden;">Enter name</label>
    <div class="col-xs-6">
      <input type="text" class="form-control" id="name" placeholder="Enter name">
    </div>
  </div>
<div class="form-group">
    <label class="control-label col-sm-2" for="number">ID Number:</label>
   <label id="lbluser" style="color:red; visibility:hidden;">Enter ID NO</label>
    <div class="col-xs-6">
      <input type="number" class="form-control" id="number" placeholder="Enter id number">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="snumber">Number of student handled:</label>
    <label id="lbluser" style="color:red; visibility:hidden;">No of students</label>
    <div class="col-xs-6">
      <input type="number" class="form-control" id="snumber" placeholder="Enter no of students">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="bnumber">Number of batch handled:</label>
    <label id="lbluser" style="color:red; visibility:hidden;">No of batches</label>
    <div class="col-xs-6">
      <input type="number" class="form-control" id="bnumber" placeholder="Enter no of batch">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="current">Your current position:</label>
    <label id="lbluser" style="color:red; visibility:hidden;">Enter current position</label>
    <div class="col-xs-6">
      <input type="text" class="form-control" id="current" placeholder="Enter current position">
    </div>
  </div><div class="form-group">
    <label class="control-label col-sm-2" for="posting">Posting applying:</label>
    <label id="lbluser" style="color:red; visibility:hidden;">Enter appling posting</label>
    <div class="col-xs-6">
      <input type="text" class="form-control" id="posting" placeholder="Enter posting">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="course">Enter the course handled:</label>
    <label id="lbluser" style="color:red; visibility:hidden;">Enter course handled</label>
    <div class="col-xs-6">
      <input type="text" class="form-control" id="course" placeholder="Enter courses">
    </div>
  </div>
  </form>
  </div>
   <div class="container">
   <br>
<div class="row">
 <div class="col-xs-9">
<button type="submit" class="btn btn-primary">Submit</button><br>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>