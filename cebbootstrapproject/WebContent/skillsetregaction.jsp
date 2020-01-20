<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try
{
	String name=request.getParameter("name");
	String empid=request.getParameter("number");
	String stuhandle=request.getParameter("snumber");
	String bathandle=request.getParameter("bnumber");
	String currentpos=request.getParameter("current");
	String appliedpos=request.getParameter("posting");
	String coursehandle=request.getParameter("course");
	String status=request.getParameter("status");
	
	String str="insert into skillset values('"+name+"','"+empid+"','"+stuhandle+"','"+bathandle+"','"+currentpos+"','"+appliedpos+"','"+coursehandle+"','"+status+"')";
	
	Class.forName("org.h2.Driver");
	Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/niitbootstrap","sa","");
	Statement stm=con.createStatement();
	stm.executeUpdate(str);


	RequestDispatcher rd=request.getRequestDispatcher("employeepage.jsp");
	rd.forward(request,response);
	}
	catch(Exception t)
	{
		System.out.println(t);
	}
%>

</body>
</html>