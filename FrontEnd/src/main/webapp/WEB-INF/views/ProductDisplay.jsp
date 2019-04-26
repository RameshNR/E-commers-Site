<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Product</title>


<style>

/*			   NavBar  Page Indicator 
===================================================================*/
a#product_act {
	color: black;
}

div.row {
	padding-top: 10px;
	padding-left: 30px;
	padding-right: 30px;
}

img.product_image {
	height: 60%;
}

@media screen and (max-width: 890px) {
img.product_image  {
   height: 50%;
  }
}  

@media screen and (max-width: 600px) {
img.product_image  {
   height: 40%;
  }
} 

@media screen and (max-width: 490px) {
img.product_image  {
   height: 30%;
  }
}   


@media screen and (max-width: 260px) {
img.product_image  {
   height: 15%;
  }
} 

div.product_details {
	padding-top: 20px;
	padding-left: 20px;
}

h3.product_name {
	font-size: 30px;
}

h5.product_stock {
	font-size: 22px;
}

h5.product_desc {
	font-size: 22px;
}


h3.product_price {
	margin-top:0px;
	font-size: 22px;
}


p#cart_act {
  
  text-align: left;
  position: absolute;
  top: 50%;
  left: 24%;
  transform: translate(-120%, -50%);
  -ms-transform: translate(-50%, -50%);

}








</style>

</head>

<body>

<form action="<c:url value="/addToCart/${product.productId}"/>" method="get">
	<div class="row">
		
		<div>
		    <a href="<c:url value="/resources/images/${product.productId}.jpg"/>">
			    <img class="product_image" src="<c:url value="/resources/images/${product.productId}.jpg"/>">
			</a>
		</div>
		
		<div class="product_details" style="border:0px solid gray">
			<h3 class="product_name">${product.productName}</h3>
			
			<h5 class="product_stock">
				<b>Stock:</b> 
				
				<c:if test="${product.stock > 0}">
					${product.stock}
					
				</c:if>
				
				<c:if test="${product.stock < 1}">
					<font color="red">Out of Stock</font> 
				</c:if>
			</h5>
			
			<h5 class="product_desc">
				<b>Description: </b> <small>${product.productDesc}</small>
			</h5>
			
			<h3 class="product_price"><b>Price: </b>INR ${product.price} /-</h3>
			
<!-- //////////////////////////////////////////////////////////////////////////////////// -->				


<!-- When any one of the user is logged in -->		
<c:if test="${sessionScope.loggedIn}">
<c:if test="${sessionScope.role=='ROLE_USER'}"> 

<!-- Stock is Available -->	
	<c:if test="${product.stock > 0}">
			
			<div>					
					<div class="btn-minus"> 
						<button type="button" class="btn btn-dark">Add</button>
					</div>
					
					<input value="1" name="quantity"/>
		
					<div class="btn-plus"> 
						<button type="button" class="btn btn-dark">Remove</button>
					</div>
			</div>

			<div class="session">
				<input type="submit" class="btn btn-success" value="AddToCart"/>
			</div>
			
		</c:if>

<!-- Out Of Stock -->
		
		<c:if test="${product.stock < 1}">
		
			<div class="alert alert-danger" role="alert">
  				Product is out of Stock
			</div>
		
		</c:if>
</c:if>
</c:if>

<!-- ////////////////////////// -->
<!-- When any one of the user is NOT LOGGED IN and PRODUCT IS NOT AVILABLE-->		
<c:if test="${!sessionScope.loggedIn}">
<c:if test="${product.stock < 1}">
	<table>
		<tr>
			<td>
  				<a href="<c:url value="/login"/>" class="btn btn-default" role="button">	
					<div class="alert alert-success" role="alert">
  						Out of Stock. Click to Login	
					</div>
				</a>
			</td>
		</tr>
	</table>

</c:if>
</c:if>

<!-- When any one of the user is NOT LOGGED IN and PRODUCT IS AVILABLE-->		
<c:if test="${!sessionScope.loggedIn}">
<c:if test="${product.stock > 0}">
	<table>
		<tr>
			<td>
  				<a href="<c:url value="/login"/>" class="btn btn-default" role="button">	
					<div class="alert alert-success" role="alert">
  						Please Login to buy the Product	
					</div>
				</a>
			</td>
		</tr>
	</table>
</c:if>
</c:if>



<!-- You are the Admin - Product is Available-->


<c:if test="${sessionScope.loggedIn}">
<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
<c:if test="${product.stock > 0}">  
	<table>
		<tr>
			<td>
  					<div class="alert alert-success" role="alert">
  						Your are the Admin !	
					</div>
			</td>
		</tr>
	</table>

</c:if>
</c:if>
</c:if>



<!-- You are the Admin - Product is Not Available-->


<c:if test="${sessionScope.loggedIn}">
<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
<c:if test="${product.stock < 1}">  
	<table>
		<tr>
			<td>
  					<div class="alert alert-success" role="alert">
  						Your are the Admin ! - Product Not Available !	
					</div>
			</td>
		</tr>
	</table>

</c:if>
</c:if>
</c:if>



<!-- //////////////////////////////////////////////////////////////////////////////////// -->			
						
			<div class="session">
				<h5 class="title_attr" style="margin-top: 12px; font-size: 16px">
					Super Retina in two sizes - including the largest display ever on an iPhone. Even faster Face ID. The smartest, most powerful chip in a smartphone. And a breakthrough dual-camera system with Depth Control. iPhone XS is everything you love about iPhone. Taken to the extreme.
				</h5>
			</div>
			
	
			
		</div>
		
	</div>
</form>

</body>
</html>