<%@include file="AdminHeader.jsp" %>


<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Insert Product</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Merienda" rel="stylesheet">

<!-- My CSS File-->
	<link rel="stylesheet" href="<c:url value="/resources/my_css/Product.css"/>" />



<script>

// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});

</script>




</head>








<body>


<!-- Input Table -->
<center>


<div id="mytab">

<!-- once the button will be clicked it will redirect to the InsertProduct page  -->

<form:form action="InsertProduct" enctype="multipart/form-data" modelAttribute="product" method="post"> 
<table class="table table-bordered" id="inp_table">
	
	<tr>
		<td colspan="2" align="center">
			<h3> <font color="red">${Error}</font> </h3>
		</td>
	</tr>
	
	<tr bgcolor="lavender">
		<td colspan="2" align="center">
		<b>Enter Product Details</b></td>
	</tr>

	<tr id="inp_data2">
		<td id="inp_txt">Product Name</td>
		<td id="inp_field"> <form:input class = "form-control" path="productName"/></td>
	</tr>
	
	<tr id="inp_data2">
		<td id="inp_txt">Price</td>
		<td id="inp_field"> <form:input class = "form-control" path="price"/></td>
	</tr>
	
	<tr id="inp_data2">
		<td id="inp_txt">Stock</td>
		<td id="inp_field"> <form:input class = "form-control" path="stock"/></td>
	</tr>
	
	<tr id="inp_data2">
		<td id="inp_txt">Category ID</td>
			<td id="inp_field"> 
				<form:select class="list-group-item" path="categoryId">
					<form:option value="0" label=" --- Select Category List --- "/>
					<form:options items="${categoryList}"/>
				</form:select>
			</td>
		</td>
	</tr>
	
	
	<tr id="inp_data2">
		<td id="inp_txt">Supplier ID</td>
			<td id="inp_field"> 
				<form:select class="list-group-item" path="supplierId">
					<form:option value="0" label=" --- Select Supplier List --- "/>
					<form:options items="${supplierList}"/>
				</form:select>
			</td>
		</td>
	</tr>
	

	<tr id="inp_data2">
		<td id="inp_txt">Product Desc</td>
		<td id="inp_field"> <form:input class = "form-control" path="productDesc"/></td>
	</tr>
	
	<tr id="inp_data2">
		<td id="inp_txt" >Product Image</td>
		<td id="inp_field" class="file-upload btn btn-primary"> <form:input type="file" path="pimage"/></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center"> <input type="submit" id="mybutton" class="btn btn-light" value="Insert / Update"/> </td>
	</tr>

</table>
</form:form>





<!-- Saved Data -->

<table id="tab" align="center" class="table table-bordered">

	<tr  id="data_head" bgcolor="#dee2e6">
		<td colspan="6"> <center>Product Details</center> </td>
	</tr>
	
	<tr bgcolor="#BDC3C7">
		<td id="data_title">Product ID</td>
		<td id="data_title2">Product Name </td>
		<td id="data_title2">Price </td>
		<td id="data_title2">Stock </td>
		<td id="data_title2">Image</td>
		<td id="data_title3">Operations</td>
	</tr>
	
	<c:forEach items="${listProducts}" var="product">
	<tr id="Stored_value">
		<td id="data">${product.productId}</td>
		<td id="data">${product.productName}</td>
		<td id="data">${product.price}</td>
		<td id="data">${product.stock}</td>
		
		<td id="data">
			<a href="<c:url value="/productDisplay/${product.productId}"/>"> 
				<img align="center" src="<c:url value="/resources/images/${product.productId}.jpg"/>" weight="50" height="50"/>
		    </a>
		</td>
		
		<td align="center">
			<a href="<c:url value="/editProduct/${product.productId}"/>"><img id="opt_icn" src="<c:url value="/resources/images/Edit.svg"/>" class="d-inline-block align-top"></a>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="/deleteProduct/${product.productId}"/>"> <img id="opt_icn" src="<c:url value="/resources/images/Trach.svg"/>" class="d-inline-block align-top"></a>
			
		</td>
	</tr>	
	</c:forEach>
	

	
</table>


</div>
</center>

</body>
</html>


