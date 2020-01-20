<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navigationpage.jsp"></jsp:include>
<form action="hrapprovalaction.jsp">
<% 
	String u1=request.getParameter("name");
	HttpSession sess=request.getSession();
	sess.setAttribute("uname", u1);
	String str="select * from skillset where name='"+u1+"'";
	Class.forName("org.h2.Driver");
	Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/niitbootstrap","sa","");
	Statement stm=con.createStatement();
	ResultSet rs=stm.executeQuery(str);
	rs.next();
	%>
<div class="container">
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
<th>Status</th>
</tr>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>


<td>
<select class="form-control" name="status">
<option>Waiting</option>
<option>Not Approved</option>
<option>Approved</option></select></tr>
</table>
<div class="container">
 <div class="col-md-6">
<button type="submit" class="btn btn-primary btn-lg" >Submit</button><br>
 </div>
</div>
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