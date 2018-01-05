<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HomePage</title>
 <%-- <link href="<c:url value="/resources/themes/css/indexpage.css"/>" rel="stylesheet"> --%>

 <style>
  .Car
  {
  padding-top:50px
  }
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- Load when user click register-->






<div class="Car">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators --> 
    
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
     
        <img src="resources/images/banner2.jpg" alt="Discount"  style="width:100%" >
      </div>

      <div class="item">
        <img src="resources/images/banner1.jpg" alt="GroomingOffer"  style="width:100%" >
      </div>
      <div class="item">
        <img src="resources/images/banner3.jpg" alt="LaptopOffers"  style="width:100%">
      </div>
    <div class="item">
        <img src="resources/images/banner4.jpg" alt="Discount On Mobail Accessories" style="width:100%">
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
</body>
</html>