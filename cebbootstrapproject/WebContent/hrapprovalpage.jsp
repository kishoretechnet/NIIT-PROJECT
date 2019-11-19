<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navigationpage.jsp"></jsp:include>

<div class="container-fluid">
<h2 style="color: blue; font-weight: bold;">HR Approval</h2>
<table class="table table-condensed">
<br>
<tr>
<th>Name</th>
<th>Employee ID</th>
<th>No Of Students</th>
<th>No Of Batch</th>
<th>Current Postion</th>
<th>Posting Applied</th>
<th>Course Handled</th>
<th>Comments</th>
<th>Status
<div class="dropdown">
<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Status<span class="caret"></span></button>
<ul class="dropdown-menu">
 <li><a href="#">Approved</a></li>
    <li><a href="#">Not Approved</a></li>
    <li><a href="#">Waiting</a></li>
</ul>
</div>
</th>
</tr>
</table>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>