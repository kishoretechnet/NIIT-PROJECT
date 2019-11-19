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

<h2 style="text-align:center; font-weight: bold;">Employee Page</h2>
<div class="container">
<br><a href="employeelogin.jsp" button type="submit" class="btn btn-primary btn-lg">Login</a></button>
<div class="col-sm-10">
<a href="registerform.jsp" button type="submit" class="btn btn-primary btn-lg">Register</a></button><br>
</div>
</div>
<br>
<br>
<br>
<br><br>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>