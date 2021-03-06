<%@include file="Header.jsp" %>

<title>${titlepage} Register</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"  />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    
    
    
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/register/vendor/bootstrap/css/bootstrap.min.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/register/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/register/vendor/animate/animate.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/register/vendor/css-hamburgers/hamburgers.min.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/register/vendor/select2/select2.min.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/register/css/util.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/register/css/main.css"/>">







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
  left: 0px;
  right: 0;
  height: 100%;
  width: 60px;
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
  -ms-transform: translate(-10%, -10%);
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
















/*  ---------------  Hover Effect For Input Table   ---------------   */
tr#inp_data2:hover {
	height: 30px;
    background: #a8ccd7;
}

/*  ---------------  Hover Effect For Stored Table    ---------------   */
tr#Stored_value:hover {
	background: #a8ccd7;
}



/*                  TABLE VALUES 
==========================================================*/

tr#inp_data {
	height: 30px;
    text-align: center;
}

#inp_head {
	vertical-align: middle;
	text-align: center;

}

td#inp_inp {
	align: center;
	
} 

@media screen and (max-width: 900px) {
td#inp_inp  {
    align: center;
	padding-left: 10px;
   } 
	
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



input::placeholder {
  color:  #a6a6a6;
  font-family: 'Exo 2', sans-serif;
  font-size: 13px;
  text-align: center;
}


#data_head {
	height: 30px;
	font-weight: bold;
}

#data_title {
	text-align: center;
	font-weight: bold;
	width: 140px;
	height: 30px;
}

#data_title2 {
	text-align: center;
	font-weight: bold;
	width: 140px;
	height: 30px;
}

td#data {
	text-align: center;
	text-weight: 20%;
}


@media screen and (max-width: 300px) {
table#table {
	text-align: center;
	width: 0px;
	height: 40px;
	}
}



</style>
</head>


<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="<c:url value="/resources/register/images/img-01.png"/>" alt="IMG">
				</div>

				<form action="registerUser" method="post" class="login100-form validate-form">
					<span class="login100-form-title">
						Member Register
					</span>

					<div class="wrap-input100 validate-input" data-validate = "User Name is required">
						<input class="input100" type="text" name="username" placeholder="User Name">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>


					<div class="wrap-input100 validate-input" data-validate = "Customer Name is required">
						<input class="input100" type="text" name="customerName" placeholder="Customer Name">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user-circle" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="E - mail">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Address is required">
						<input class="input100" type="text" name="address" placeholder="Address">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

					<div class="text-center p-t-36">
						<a class="txt2" href="login">
							Already Have Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
					
				</form>
			</div>
		</div>
	</div>
	
	<script src="<c:url value="/register/vendor/jquery/jquery-3.2.1.min.js"/>"></script>
	<script src="<c:url value="/register/vendor/bootstrap/js/popper.js"/>"></script>
	<script src="<c:url value="/register/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/register/vendor/select2/select2.min.js"/>"></script>
	<script src="<c:url value="/resources/register/vendor/tilt/tilt.jquery.min.js"/>"></script>
	
	<script src="<c:url value="/resources/register/js/main.js"/>"></script>
	
	<script>
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
	


</body>
</html>