<%@ page language="java" contentType="text/html;" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  <!-- add JSTL 1.2 Dependency to the pom.xml to clear the error -->


<%@include file="AdminHeader.jsp" %>
<title>Create Category</title>
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
	<link rel="stylesheet" href="<c:url value="/resources/my_css/Category.css"/>" />
	

</head>



<body>
<!-- Insert New input Data -->

<div id="cont" class="container">
<form id="form" action="InsertCategory" method="post">
<table align="center"  class="table table-bordered">

	<tr id="inp_data" bgcolor="lavender">
		<td colspan="2">
			<center> <b>Enter Category Details</b> </center>
		</td>
	</tr>
	
	<tr id="inp_data2" class="table-hover">
		<td id="inp_head"> <b>Category Name</b></td>
		<td id="inp_inp"><input class = "form-control" placeholder="Enter Category Name" type="text" name="catName" id="catName"/></td>
	</tr>
	
	<tr id="inp_data2">
		<td id="inp_head"> <b>Category Desc</b></td>
		<td id="inp_inp"><input class = "form-control" placeholder="Enter Category Desc" type="text" name="catDesc" id="catDesc"/></td>
	</tr>

	<tr id="inp_data">
		<td colspan="2">
		<center><input type="submit" id="mybutton" class="btn btn-light" value="Insert Category"/></center>
		</td>
	</tr>
	
</table>
</form>




<!-- Saved Data -->

<table id="tab" align="center" class="table table-bordered">

	<tr  id="data_head" bgcolor="#dee2e6">
		<td colspan="4"> <center>Category Details</center> </td>
	</tr>
	
	<tr bgcolor="#BDC3C7">
		<td id="data_title">Category ID</td>
		<td id="data_title2">Category Name </td>
		<td id="data_title2">Category Desc </td>
		<td id="data_title">Operations</td>
	</tr>
	
	<c:forEach items="${categories}" var="category">
	<tr id="Stored_value">
		<td id="data">${category.categoryId}</td>
		<td id="data">${category.categoryName}</td>
		<td id="data">${category.categoryDesc}</td>
		<td align="center">
			<a href="<c:url value="/editCategory/${category.categoryId}"/>"><img id="opt_icn" src="<c:url value="/resources/images/Edit.svg"/>" class="d-inline-block align-top"></a>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="/deleteCategory/${category.categoryId}"/>"> <img id="opt_icn" src="<c:url value="/resources/images/Trach.svg"/>" class="d-inline-block align-top"></a>
			
		</td>
	</tr>	
	</c:forEach>
	

	
</table>
</div>


</body>
</html>