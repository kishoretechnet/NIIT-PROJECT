<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function validate()
{
	var name=document.getElementById("name");
	if(name.value.trim()=="")
		{
		alert("No blank values allowed");
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
<div class="container">
<h2 style="color: olive; font-weight: bold; text-align:center;">Skill Set Approval</h2>
<br><% 
	String str="select * from skillset";
	Class.forName("org.h2.Driver");
	Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/niitbootstrap","sa","");
	Statement stm=con.createStatement();
	ResultSet rs=stm.executeQuery(str);
	%>
<form onsubmit="return validate()" action="http://localhost:8080/cebbootstrapproject/hrapprovalpage.jsp">
<div class="form-group">
<div class="col-sm-8">
<div class="form-group">
  <label for="sel1"> Name of the person applied for skill set approval::</label>
  <select class="form-control" id="sel1" name="name">
    <%
    while(rs.next())
    {
    
    %>
    <option><%=rs.getString(1) %>
    </option>
 <%} %>   
  </select>
</div>
  
  <br>
<button type="submit" class="btn btn-primary btn-block">View</a></button><br>

</div>
</div>

</form>
</div>
<br><br><br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>