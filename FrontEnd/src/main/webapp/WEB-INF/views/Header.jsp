<%@ page language="java" contentType="text/html;" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  <!-- add JSTL 1.2 Dependency to the pom.xml to clear the error -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


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


/*               HOVER EFFECT For NAVIGATION BAR Icons
==========================================================*/ 
.container {
  position: relative;
  width: 50%;
}

.image {
  display: block;
  width: 100%;
  height: auto;
}

.overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 100%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: #008CBA;
}

.container:hover .overlay {
  opacity: 1;
}

.text {
  color: white;
  font-size: 12px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}


.user_text {
  color: black;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-120%, -50%);
  -ms-transform: translate(-50%, -50%);
}






	
/*  					BURGER MENU
===================================================================== */
#menu {
	    width: 50px;
    height: 50px;
    position: absolute;
    z-index: 21;
    right: 1%;
}
#menu span {
	position: relative;
	margin-top: 9px;
	margin-bottom: 9px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	position: absolute;
	top: 50%;
	left: 50%;
	margin-left: -15px;
	margin-top: -1.5px;
}
#menu span, #menu span::before, #menu span::after {
	display: block;
	width: 26px;
	right: 0;
	height: 3px;
	background-color: #fccb32;
	outline: 1px solid transparent;
	-webkit-transition-property: background-color, -webkit-transform;
	-moz-transition-property: background-color, -moz-transform;
	-o-transition-property: background-color, -o-transform;
	transition-property: background-color, transform;
	-webkit-transition-duration: 0.3s;
	-moz-transition-duration: 0.3s;
	-o-transition-duration: 0.3s;
	transition-duration: 0.3s;
}
#menu span::before, #menu span::after {
	position: absolute;
	content: "";
}

#menu span::before {
	top: -9px;
	 width:20px
}

#menu span::after {
	top: 9px;
	width: 33px;
}

#menu.clicked span {
	background-color: transparent;
}
#menu.clicked span::before {
	-webkit-transform: translateY(9px) rotate(45deg);
	-moz-transform: translateY(9px) rotate(45deg);
	-ms-transform: translateY(9px) rotate(45deg);
	-o-transform: translateY(9px) rotate(45deg);
	transform: translateY(9px) rotate(45deg);    
	width: 33px;
}
#menu.clicked span::after {
	-webkit-transform: translateY(-9px) rotate(-45deg);
	-moz-transform: translateY(-9px) rotate(-45deg);
	-ms-transform: translateY(-9px) rotate(-45deg);
	-o-transform: translateY(-9px) rotate(-45deg);
	transform: translateY(-9px) rotate(-45deg);
}
#menu.clicked span:before, #menu.clicked span:after {
	background-color: #ffffff;
}
#menu:hover {
	cursor: pointer;
}

/*             NAVIGATION BAR
==================================================*/
#navi {
	background: #000000b8;
	position: fixed;
	z-index: 20;
	top: 0;
	right: 0;
	height: 100%;
	max-width: 250px;
	width: 100%;
	padding: 100px 40px 60px 40px;
	overflow-y: auto;
	-webkit-transform: translateX(100%);
	-moz-transform: translateX(100%);
	-ms-transform: translateX(100%);
	-o-transform: translateX(100%);
	transform: translateX(100%);
	-webkit-transition: transform 0.55s cubic-bezier(0.785, 0.135, 0.15, 0.86);
	-moz-transition: transform 0.55s cubic-bezier(0.785, 0.135, 0.15, 0.86);
	-o-transition: transform 0.55s cubic-bezier(0.785, 0.135, 0.15, 0.86);
	transition: transform 0.55s cubic-bezier(0.785, 0.135, 0.15, 0.86);
}
#navi.show {
	-webkit-transform: translateX(0px);
	-moz-transform: translateX(0px);
	-ms-transform: translateX(0px);
	-o-transform: translateX(0px);
	transform: translateX(0px);
}
#navi.show ul#main1 li {
	-webkit-transform: translateX(0px);
	-moz-transform: translateX(0px);
	-ms-transform: translateX(0px);
	-o-transform: translateX(0px);
	transform: translateX(0px);
	opacity: 1;
}
#menu.clicked {
    position: fixed;
    z-index: 99;
}
#navi.show ul#main1 li:nth-child(1) {
	transition-delay: 0.15s;
}
#navi.show ul#main1 li:nth-child(2) {
	transition-delay: 0.3s;
}
#navi.show ul#main1 li:nth-child(3) {
	transition-delay: 0.45s;
}
#navi.show ul#main1 li:nth-child(4) {
	transition-delay: 0.6s;
}
#navi.show ul#main1 li:nth-child(5) {
	transition-delay: 0.75s;
}
#navi.show ul#main1 li:nth-child(6) {
	transition-delay: 0.9s;
}
#navi.show ul#main1 li:nth-child(7) {
	transition-delay: 1.05s;
}
#navi.show ul#main1 li:nth-child(8) {
	transition-delay: 1.2s;
}
#navi.show ul#main1 li:nth-child(9) {
	transition-delay: 1.35s;
}
#navi.show .about, #navi.show .social, #navi.show ul.sub {
	-webkit-transform: translateY(0px);
	-moz-transform: translateY(0px);
	-ms-transform: translateY(0px);
	-o-transform: translateY(0px);
	transform: translateY(0px);
	opacity: 1;
	transition-delay: .85s;
}

@media (min-width: 667px) {
#navi {
	padding: 120px 30px 70px 20px;
}
}
#navi ul#main1 {
	list-style-type: none;
}
#navi ul#main1 li {
	-webkit-transform: translateX(40px);
	-moz-transform: translateX(40px);
	-ms-transform: translateX(40px);
	-o-transform: translateX(40px);
	transform: translateX(40px);
	opacity: 0;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
	float: none;
	    list-style: circle;
    color: #fff
}
#navi ul#main1 li:last-of-type {
	margin-bottom: 0px;
}
#navi ul#main1 li a {
	color: #ffffff;

	text-decoration: none;
	text-transform: uppercase;
	font-size: 1rem;
	display: block;
	padding: 10px 0;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}
#navi ul#main1 li a span {
	color: #b7ac7f;
}
#navi ul#main1 li a:hover {
	color: #b7ac7f;
}
#navi ul.sub {
	list-style-type: none;
	margin-top: 40px;
	-webkit-transform: translateY(30px);
	-moz-transform: translateY(30px);
	-ms-transform: translateY(30px);
	-o-transform: translateY(30px);
	transform: translateY(30px);
	opacity: 0;
	-webkit-transition: all 0.4s ease;
	-moz-transition: all 0.4s ease;
	-o-transition: all 0.4s ease;
	transition: all 0.4s ease;
}
#navi ul.sub li {
	margin-bottom: 10px;
}
#navi ul.sub li:last-of-type {
	margin-bottom: 0px;
}
#navi ul.sub li a {
	color: #ffffff;
	font-family: "Raleway", sans-serif;
	letter-spacing: 1px;
	font-size: 0.9rem;
	text-decoration: none;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	-o-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

#navi ul.sub li a:hover {
	color: #b7ac7f;
}

#menu:hover span{}

/*  OVERLAY
========================================== */
#overlay {
	position: fixed;
	top: 0;
	left: 0;
	z-index: 7;
	width: 100%;
	height: 100%;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
	background-color: #603e82;
	opacity: 0;
	visibility: hidden;
}
#overlay.show {
	opacity: 0.8;
	visibility: visible;
}

p#cart_act {
  text-align: left;
  position: absolute;
  top: 50%;
  left: 24%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}




</style>
</head>


<body>


<!-- Navigation Bar for Windows below 992px  -->

<div id="menu"> <span></span> </div>
<nav id="navi">
		<ul id="main1">
		<c:if test="${!sessionScope.loggedIn}">
				<li><a href="<c:url value="/"/>">Home</a></li>
				<li><a href="<c:url value="totalProductDisplay"/>">Product</a></li>
		</c:if>
		
		<c:if test="${sessionScope.loggedIn}">
			<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
				<li><a href="<c:url value="/category"/>">Manage Category</a></li>
				<li><a href="<c:url value="/product"/>">Manage Product</a></li>
				<li><a href="<c:url value="/supplier"/>">Manage Supplier</a></li>
			</c:if>
		</c:if>

		<c:if test="${sessionScope.loggedIn}">			
			<c:if test="${sessionScope.role=='ROLE_USER'}">
			
					<li><a id="product"  href="<c:url value="/totalProductDisplay"/>">Products</a></li>
					
					<c:if test="${sessionScope.cartsize > 0}">
						<li><a href="<c:url value="/showCart"/>"><p style="color:blue;">Cart (${sessionScope.cartsize})</p></a></li>
					</c:if>
					
					<c:if test="${sessionScope.cartsize <= 0}">
						<li><a href="<c:url value="/showCart"/>">Cart</a></li>
					</c:if>
					
				
			</c:if>
		</c:if>
		
		<c:if test="${!sessionScope.loggedIn}">
				<li><a href="login">Log in</a></li>
				<li><a target="_blank" href="register">Register</a></li>
		</c:if>		
		
		
		<c:if test="${sessionScope.loggedIn}">
				<li><p>${sessionScope.username}</></li>
				<li><a href="logout">Log Out</a></li>
		</c:if>	
		
		</ul>
</nav>
<div id="overlay"></div>




<script>
$('#menu, #overlay').click(function () {
	$('#menu').toggleClass('clicked');

	$('#navi').toggleClass('show');

});


</script>




 
<nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light">

 		<a class="navbar-brand" href="<c:url value="#"/>">
    		<img src="<c:url value="/resources/images/titlelogo.png"/>" width="30" height="30" class="d-inline-block align-top" alt="">
    		&nbsp RAMESH
  		</a>
  
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    	
<c:if test="${!sessionScope.loggedIn}">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active" >
        <a class="nav-link" id="home_act" href="<c:url value="/"/>">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" id="supplier_act" href="<c:url value="/totalProductDisplay"/>">Products</a>
      </li>
     </ul> 
</c:if>


<c:if test="${sessionScope.loggedIn}">
<c:if test="${sessionScope.role=='ROLE_ADMIN'}">      
   <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" id="home_act" href="<c:url value="/adminPage"/>">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="category_act" href="<c:url value="/category"/>">Manage Category</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="product_act" href="<c:url value="/product"/>">Manage Product</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="supplier_act" href="<c:url value="/supplier"/>">Manage Supplier</a>
      </li>
   </ul> 
</c:if>      
</c:if>

<c:if test="${sessionScope.loggedIn}">
<c:if test="${sessionScope.role=='ROLE_USER'}"> 
 
   	<ul class="navbar-nav mr-auto">
      	<li class="nav-item">
        	<a class="nav-link" id="home_act" href="<c:url value="/userPage"/>">Home</a>
      	</li>
      
      	<li class="nav-item">
        	<a class="nav-link" id="product_act" href="<c:url value="/totalProductDisplay"/>">Products</a>
      	</li>
      

      	<li class="nav-item">
        	<a class="nav-link" href="<c:url value="/showCart"/>"><p  id="cart_act">Cart (${sessionScope.cartsize})</p></a>
      	</li>

   </ul>
   
</c:if>
</c:if>

   
<c:if test="${!sessionScope.loggedIn}">
   <form class="form-inline my-2 my-lg-0">
        <a class="navbar-brand" href="login">
  	   		<div class="container">
    			<img src="<c:url value="/resources/images/login.svg"/>" id="new_account" width="25" height="25" class="d-inline-block align-top" alt="">
    				<div class="overlay">
    					<div class="text">Log in</div>
  					</div>
			</div>
  	    </a> 
      
   	  
  	   <a class="navbar-brand" href="register">
  	   		<div class="container">
    			<img src="<c:url value="/resources/images/register.svg"/>" id="new_account" width="25" height="25" class="d-inline-block align-top" alt="">
    				<div class="overlay">
    					<div class="text">Sign Up</div>
  					</div>
			</div>
  	  </a>
  	 </form>  	  
</c:if> 



<c:if test="${sessionScope.loggedIn}">
	<form class="form-inline my-2 my-lg-0">
	   <a class="navbar-brand">
  	   		<div class="container">
  	   			<img src="<c:url value="/resources/images/user.svg"/>" id="user_picture" width="25" height="25" class="d-inline-block align-top" alt="">
   					
			</div>
  	  	</a>
	   
	   <!-- Empty Space for Username -->
	   
	   <a class="navbar-brand">
  	   		<div class="container">
  	   				
			</div>
  	  	</a>
	   	<a class="navbar-brand">
  	   		<div class="container">
  	   				
			</div>
  	  	</a>
	   
	   
	   
	   <a class="navbar-brand">
  	   		<div class="container">
  	   				<div class="user_text">${sessionScope.username}</div>
			</div>
  	  	</a>
  	  	
  	  	
  	  	<a class="navbar-brand" href="logout">
  	   		<div class="container">
    			<img src="<c:url value="/resources/images/logout.svg"/>" id="new_account" width="25" height="25" class="d-inline-block align-top" alt="">
    				<div class="overlay">
    					<div class="text">Log Out</div>
  					</div>
			</div>
  	  </a>   	
   </form>
   
</c:if>
  	  
  	  
  	  
  	<form class="form-inline my-2 my-lg-0">
	  
  	   <a class="navbar-brand" href="about">
  	   		<div class="container">
    			<img src="<c:url value="/resources/images/about.svg"/>" id="about" width="25" height="25" class="d-inline-block align-top" alt="">
    				<div class="overlay">
    					<div class="text">About</div>
  					</div>
			</div>
  	  	</a>
  	  
    </form>
    

    
  </div>
</nav>


</body>
</html>