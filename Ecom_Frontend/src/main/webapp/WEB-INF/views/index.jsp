<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ page isELIgnored="false"%>
    <jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
 
 <style>
 .con{
 padding-top:55px;
 padding-bottom:40px;
 }
 
 
 
 /*body  {
    background: url("resources/images/blurthis.jpg") no-repeat center center fixed;
     -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
   
} 
 */
 
 
    h4{
    	font-weight: 600;
	}
	p{
		font-size: 12px;
		margin-top: 5px;
	}
	.price{
		font-size: 20px;
    	
    	color: #333;
	}
	
	.thumbnail{
		opacity:0.70;
		-webkit-transition: all 0.5s; 
		transition: all 0.5s;
        
   width:auto;
   height:340px;;

	}
	
	.thumbnail:hover{
		opacity:1.00;
		box-shadow: 0px 0px 10px #4bc6ff;
	}
	
	
	
	
	
	
 </style>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></link>
</head>
 

<body>



<div class="con">
<div class="container">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
	
	<!-- Carousel indicators -->
	<ol class="carousel-indicators">
	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
	<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
	</ol>
	
	<!-- Wrapper for carousel items -->
	<div class="carousel-inner">
	<div class="item active">
    
        <img class="slide-image" src="resources/images/furnish.jpg" alt="Discount"  >
      </div>

      <div class="item">
        <img class="slide-image" src="resources/images/image4.jpg" alt="GroomingOffer" >
      </div>
      <div class="item">
       <img class="slide-image" src="resources/images/furniture1.jpg" alt="LaptopOffers" >
      </div>
    <div class="item">
        <img class="slide-image" src="resources/images/image9.jpg" alt="Discount On Mobail Accessories" >
      </div>
    
  
   <a class="left carousel-control" href="#myCarousel"  data-slide="prev">
  <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
 
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
 


 
  		</div>
		
  
</div>




</body>
<jsp:include page="footer.jsp"></jsp:include>
</html> 