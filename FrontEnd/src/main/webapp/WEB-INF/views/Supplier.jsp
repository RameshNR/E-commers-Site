
<%@include file="AdminHeader.jsp" %>

<%@ page language="java" contentType="text/html;" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  <!-- add JSTL 1.2 Dependency to the pom.xml to clear the error -->



<title>Create Supplier</title>
<link rel="icon" href="<c:url value="/resources/images/titlelogo.png"/>" type="image/png" sizes="16x16">


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Exo+2" rel="stylesheet">


<!-- Nav Bar -->
  <meta name="viewport" content="width=device-width,initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- My CSS File-->
	<link rel="stylesheet" href="<c:url value="/resources/my_css/Supplier.css"/>" />
	

</head>





<body>










<!-- Insert New input Data -->

<div id="cont" class="container">
<form id="form" action="InsertSupplier" method="post">
<table align="center"  class="table table-bordered">

	<tr id="inp_data" bgcolor="lavender">
		<td colspan="2">
			<center> <b>Enter Supplier Details</b> </center>
		</td>
	</tr>
	
	<tr id="inp_data2" class="table-hover">
		<td id="inp_head"> <b>Supplier Name</b></td>
		<td id="inp_inp"><input class = "form-control" placeholder="Enter Supplier Name" type="text" name="supplierName" id="suppName"/></td>
	</tr>
	
	<tr id="inp_data2">
		<td id="inp_head"> <b>Supplier Address</b></td>
		<td id="inp_inp"><input class = "form-control" placeholder="Enter Supplier Desc" type="text" name="supplierAddress" id="SuppAddress"/></td>
	</tr>

	<tr id="inp_data">
		<td colspan="2">
		<center><input type="submit" id="mybutton" class="btn btn-light" value="Insert Supplier"/></center>
		</td>
	</tr>
	
</table>
</form>




<!-- Saved Data -->

<table id="tab" align="center" class="table table-bordered">

	<tr  id="data_head" bgcolor="#dee2e6">
		<td colspan="4"> <center>Supplier Details</center> </td>
	</tr>
	
	<tr bgcolor="#BDC3C7">
		<td id="data_title">Supplier ID</td>
		<td id="data_title2">Supplier Name </td>
		<td id="data_title2">Supplier Address </td>
		<td id="data_title">Operations</td>
	</tr>
	
	<c:forEach items="${suppliers}" var="supplier">
	<tr id="Stored_value">
		<td id="data">${supplier.supplierId}</td>
		<td id="data">${supplier.supplierName}</td>
		<td id="data">${supplier.supplierAddress}</td>
		<td align="center">
			<a href="<c:url value="/editSupplier/${supplier.supplierId}"/>"><img id="opt_icn" src="<c:url value="/resources/images/Edit.svg"/>" class="d-inline-block align-top"></a>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="/deleteSupplier/${supplier.supplierId}"/>"> <img id="opt_icn" src="<c:url value="/resources/images/Trach.svg"/>" class="d-inline-block align-top"></a>
			
		</td>
	</tr>	
	</c:forEach>
	

	
</table>
</div>


</body>
</html>