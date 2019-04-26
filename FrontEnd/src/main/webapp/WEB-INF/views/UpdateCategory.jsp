<%@ page language="java" contentType="text/html;" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  <!-- add JSTL 1.2 Dependency to the pom.xml to clear the error -->

<%@include file="AdminHeader.jsp" %>

<title>Update Category</title>
<link rel="icon" href="<c:url value="/resources/images/titlelogo.png"/>" type="image/png" sizes="16x16">


<meta name="viewport" content="width=device-width,initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


<style type="text/css">


/*				HIDE NAVIGATION BAR   [ Main - Desktop size Navbar]
it Use to hide the Big Navigation when the screen size below 991px 
===================================================================*/
 
@media screen and (max-width: 991px) {
nav.navbar   {
    display: none;
  }
}   

/*				HIDE NAVIGATION BAR    [ Second - Mobile size Navbar]
it Use to hide the Big Navigation when the screen size below 991px 
===================================================================*/

@media screen and (min-width: 992px) {
nav#navi, div#overlay, div#menu   {
    display: none;
  }
}   
 
/*			     BACKGROUND COLOR 
===================================================================*/
body { 
/* 
background-image: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1) ;
*/
background-color: #d6d3d33b;
}

/* ------------   Button Border color   -------------------  */
input#mybutton {
	
	border: 1px solid #0808089c;
}

/* ------------   Button Hover Effect   -------------------  */
#mybutton:hover {
	background: black;
	color: white;
}


	




/*               TABLE PADDING 
===================================================*/
div#updatepage {
	padding-top: 150px;
}




/*  ---------------  Hover Effect For Update Table   ---------------   */
tr#update_values:hover {
	background: #a8ccd7;
}




</style>
</head>




<body>


<!-- Navigation Bar for Windows below 992px  -->

<div id="menu"> <span></span> </div>


<div class="container" id="updatepage" >

<form action="<c:url value="/updateCategory"/>" method="post">

<table cellspacing="3" align="center" class="table table-bordered">

	<tr bgcolor="lavender" >
		<td colspan="2">
			<center> <b>Update Category Detail</b></center>
		</td>
	</tr>
	
	<tr id="update_values">
		<td align="center">Category ID</td>
		<td><input type="text" name="catId" id="catId" class = "form-control" value="${myCategory.categoryId}" readOnly/></td>
	</tr>
	
	<tr id="update_values">
		<td align="center">Category Name</td>
		<td><input type="text" name="catName" id="catName" class = "form-control" value="${myCategory.categoryName}" /></td>
	</tr>
	
	<tr id="update_values">
		<td align="center">Category Desc</td>
		<td><input type="text" name="catDesc" id="catDesc" class = "form-control" value="${myCategory.categoryDesc}" /></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
		
		<input type="submit" id="mybutton" class="btn btn-light"  value="Update Category"/>

		</td>
	</tr>
	
</table>
 </form>

</div>

</body>
</html>