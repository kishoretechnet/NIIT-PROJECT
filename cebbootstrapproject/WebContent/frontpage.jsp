<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FRONT PAGE</title>
</head>
<body>
<jsp:include page="navigationpage.jsp"></jsp:include>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
<!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
  	<div class="item active">
  		<img src="images/cr3.jpg" alt="image1">
  	</div>
  	<div class="item">
  		<img src="images/cr1.jpg" alt="image2">
  	</div>
  	<div class="item">
  		<img src="images/cr2.jpg" alt="image3">
  	</div>
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
  <span class="glyphicon glyphicon-chevron-left"></span>
  <span class="sr-only">PREVIOUS</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
  <span class="glyphicon glyphicon-chevron-right"></span>
  <span class="sr-only">NEXT</span>
  </a>
</div>
</div>
<div class="spinner-border text-muted"></div>
<div class="spinner-border text-primary"></div>
<div class="spinner-border text-success"></div>
<div class="spinner-border text-info"></div>
<div class="spinner-border text-warning"></div>
<div class="spinner-border text-danger"></div>
<div class="spinner-border text-secondary"></div>
<div class="spinner-border text-dark"></div>
<div class="spinner-border text-light"></div>

   <div class=" container-fluid">      
  <div class="jumbotron">
  <br><h3>ABOUT NIIT</h3>
  <h4><br>NIIT Limited is an Indian Multinational company that offers learning management and training delivery solutions to corporations, institutions and individuals. It has three main lines of business worldwide: Corporate Learning Group (CLG), Skills and Careers Group (SNC), and School Learning Group (SLG).</h4>
  <h4><br>NIIT Institute of Financial banking (IFBI) was formed with equity participation from ICICI Bank, which offers programs to develop talent in banking industry.
NIIT offers turnkey integration programs and computer-based training to over 5000 government schools through its NIIT K-12 business division.NIIT's corporate learning solutions caters to Fortune 500 companies, universities, and technology, training, and publishing companies.
NIIT Imperia collaborated with KPMG India to offer advanced certified programs on International Financial Reporting Standards (IFRS).</h4>
  </div> 
</div> 
  
 <h2 style="text-align:center">NIIT SPARKS</h2>
  <div class="row">
  <div class="col-md-4">
    <div class="thumbnail">
      <img src="images/grid1.jpg" alt="img1">
      </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <img src="images/grid3.jpg" alt="img2">
      </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <img src="images/grid2.jpg" alt="img3">
    </div>
  </div>
 </div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>