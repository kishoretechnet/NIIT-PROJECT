<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
HttpSession sess=request.getSession();
String h2=(String)sess.getAttribute("e1");
String name=request.getParameter("name");
String password=request.getParameter("password");
String email=request.getParameter("email");
String number=request.getParameter("number");
String str="update employeeregister set name='"+name+"',password='"+password+"',email='"+email+"',phonenumber='"+number+"' where name='"+h2+"'";
Class.forName("org.h2.Driver");
Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/niitbootstrap","sa","");
Statement stm=con.createStatement();
stm.executeUpdate(str);
RequestDispatcher ds=request.getRequestDispatcher("employeelogin.jsp");
ds.forward(request,response);
%>

</body>
</html>