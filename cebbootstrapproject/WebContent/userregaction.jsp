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
String email=request.getParameter("email");
String password=request.getParameter("password");
String gender=request.getParameter("optradio");
String dob=request.getParameter("dob");
String phonenumber=request.getParameter("number");
String str="insert into employeeregister values('"+name+"','"+email+"','"+password+"','"+gender+"','"+dob+"','"+phonenumber+"')";

Class.forName("org.h2.Driver");
Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/niitbootstrap","sa","");
Statement stm=con.createStatement();
stm.executeUpdate(str);


RequestDispatcher rd=request.getRequestDispatcher("employeelogin.jsp");
rd.forward(request,response);
}
catch(Exception t)
{
	System.out.println(t);
}
%>
</body>
</html>