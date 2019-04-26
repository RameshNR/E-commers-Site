<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%@include file="Header.jsp" %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Product</title>
<style>


/*			   NavBar  Page Indicator 
===================================================================*/
a#product_act {
	color: black;
}

div#Product_file {
	padding-left: 20px;
	padding-top: 10px;
}

p#product-name {
	padding-top: 10px;
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

<body>


<div id="Product_file" class="row text-center text-lg-left">

<c:forEach items="${listProducts}" var="product">
	<div class="col-lg-3 col-md-4 col-xs-1">
		
		<a href="<c:url value="/productDisplay/${product.productId}"/>">
			<img align="center" src="<c:url value="/resources/images/${product.productId}.jpg"/>" weight="150" height="150"/>
			
		</a>	
			<p id="product-name"><strong>${product.productName}</strong></p>
			<p><b>Price: </b>${product.price}</p>
			<p>
				<b>Stock: </b>
				
				<c:if test="${product.stock > 0}">
					${product.stock}
					
				</c:if>
				
				<c:if test="${product.stock < 1}">
					<font color="red">Out of Stock</font> 
				</c:if>
			</p>
		
		
	
	
	</div>


</c:forEach>



</div>





</body>
</html>