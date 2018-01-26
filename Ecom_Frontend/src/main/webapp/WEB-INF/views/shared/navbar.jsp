<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>


	<script>
		window.userRole = '${userModel.role}';
	</script>
	
    <nav class="navbar navbar-inverse navbar-fixed-top" style="background-color: #333;"
      role="navigation" >
    
    
        <div class="container" >
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header" >
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${contextRoot}/home" style="color: #ffffff;">Online Furniture Shop</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li id="about">
                        <a href="${contextRoot}/about" style="color: #ffffff;" >About</a>
                    </li>

                    <li id="contact">
                        <a href="${contextRoot}/contact" style="color: #ffffff;" >Contact</a>
                    </li>
                    
                    <li id="listProducts">
                        <a href="${contextRoot}/show/all/products" style="color: #ffffff;">View Products</a>
                    </li>
                    
                   
                    
					<security:authorize access="hasAuthority('ADMIN')">
	                    <li id="manageProduct">
	                        <a href="${contextRoot}/manage/product" style="color: #ffffff;" >Manage Product</a>
	                    </li>
	                    
	                    					
					</security:authorize>
                </ul>
			    
			    <ul class="nav navbar-nav navbar-right">
			    	<security:authorize access="isAnonymous()">
	                    <li id="signup">
	                        <a href="${contextRoot}/membership" style="color: #ffffff;">Sign Up</a>
	                    </li>
						<li id="login">
	                        <a href="${contextRoot}/login" style="color: #ffffff;">Login</a>
	                    </li> 	
	                    
	                    
	                    
	                    
	                    		    	
			    	</security:authorize>
			    	<security:authorize access="isAuthenticated()">
						<li class="dropdown" id="userModel">
						  <a class="btn btn-default dropdown-toggle" href="javascript:void(0)" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						    ${userModel.fullName}
						    <span class="caret"></span>
						  </a>
						  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
		                    <security:authorize access="hasAuthority('USER')">
			                    <li id="cart">
			                        <a href="${contextRoot}/cart/show">
			                        	<span class="glyphicon glyphicon-shopping-cart"></span>&#160;<span class="badge">${userModel.cart.cartLines}</span> - &#8377; ${userModel.cart.grandTotal} 
			                        </a>
			                    </li>		     
			                	<li role="separator" class="divider"></li>	                                   
		                    </security:authorize>
							<li id="logout">
		                        <a href="${contextRoot}/logout" style="color: #ffffff;">Logout</a>
		                    </li>                    			    	
						  </ul>		
						</li>    			    
			    	</security:authorize>                    
			    </ul>                
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

