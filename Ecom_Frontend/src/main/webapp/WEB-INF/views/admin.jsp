<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="header.jsp"></jsp:include>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
   
<!DOCTYPE html>

   
<html>
<head>
<style>

 body  {
    background: url("resources/images/") no-repeat center center fixed;
     -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
   
}
  
.car{
padding-top:60px;
}


.form_bg {
    
    color:black;
    padding:20px;
    
    position: relative;
    
    margin:0
     auto;
    top: 3;
    right: 0;
    bottom: 90;
    left: 700;
    width: 320px;
    height: 280px;
}

.align-center {
    
color: white;

font-weight: bold;
    text-align:center;
}


 
</style>
</head>
<body>

<div class="cas">
	<div class="container">
		<div class="page-header">
			<h1>
				Hello Admin<span class="pull-right label label-default"></span>
			</h1>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="panel with-nav-tabs panel-default">
					<div class="panel-heading">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#tab1default" data-toggle="tab">Product</a></li>
							<li><a href="#tab2default" data-toggle="tab">Category</a></li>
							<li><a href="#tab3default" data-toggle="tab">Supplier</a></li>
							<li class="dropdown"><a href="#" data-toggle="dropdown">View<span
									class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="view">Products</a></li>
									<li><a href="sup">Suppliers</a></li>
									<li><a href="cat">Categories</a></li>
								</ul></li>

						</ul>
					</div>
					
					
			<div class="panel-body">
			<div class="tab-content">
			<div class="tab-pane fade" id="tab3default">
			<div class="form_bg">
         <f:form  modelAttribute="supplier" action="saveSupplier" method="post">
             <!--  <h2 class="text-center">Register Here</h2>  -->  
         <div class="form-group">
<f:input path="sname" class="form-control" placeholder="Supplier Name"/>
<f:errors path="sname" cssStyle="color: #ff0000;"/>

<div class="align-center">
                   
                <center> <button type="submit" class="btn btn-danger" style="width:90px"  id="saveStudentButton">Register</button>
                <Button type="reset" class="btn btn-default" style="width:90px">Clear</Button>
                </center>
                
                    </div>

</div>
</f:form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
					