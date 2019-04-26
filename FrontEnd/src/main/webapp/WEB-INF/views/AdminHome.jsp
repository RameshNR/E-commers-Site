<%@include file="AdminHeader.jsp" %>

<title>${titlepage} RAMESH</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"  />
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

<link href="https://fonts.googleapis.com/css?family=Patua+One" rel="stylesheet">

<meta charset="ISO-8859-1">
<title>Admin Home</title>


<!-- My CSS File-->
	<link rel="stylesheet" href="<c:url value="/resources/my_css/AdminHome.css"/>" />
		

	



</head>

<body>

	<div  class="tab-div">
	<table align="center" class="tab">
	
		<tr class="tab-col">
			<td class="tab-row">
				<a href="<c:url value="/category"/>">
					<p class="para" id="cat">Manage Category</p>
				</a>
			</td>
			
			<td class="tab-row">
				<a href="<c:url value="/supplier"/>">
					<p class="para" id="supp">Manage Supplier</p>
				</a>
			</td>
		
		<!--
		</tr>
		
		 <tr class="tab-row"> -->
		
		
			<td class="tab-row">
				<a href="<c:url value="/product"/>">
					<p class="para" id="pro">Manage Product</p>
				</a>
			</td>
			
		<!--  
			<td class="tab-row">
				<a href="<c:url value="/user"/>">
					<p class="para" id="user"> Manage Role_User</p>
				</a>
			</td>
		-->
		
		</tr>
	</table>
   </div>	

</body>
</html>