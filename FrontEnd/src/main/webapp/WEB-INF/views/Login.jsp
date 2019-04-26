<%@include file="/WEB-INF/views/Header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  <!-- add JSTL 1.2 Dependency to the pom.xml to clear the error -->


<head>
<title>${titlepage} Login</title>    
	<meta name="viewport" content="width=device-width, initial-scale=1">
 
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/fonts/font-awesome-4.7.0/css/font-awesome.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/fonts/iconic/css/material-design-iconic-font.css"/>">
	<script src="<c:url value="/login/js/main.js"/>"></script>

	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/css/main.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/css/util.css"/>">
	
	<script src="<c:url value="/resources/login/js/main.js"/>"></script>
	
	<!-- it's for CREATE NEW ACCOUNT effect and arow style -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/register/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/register/vendor/animate/animate.css"/>">
	
	
	
	<!-- My CSS File-->
	<link rel="stylesheet" href="<c:url value="/resources/my_css/NavBar.css"/>" />
	
	
	
	




</style>
</head>


<body>




	<div class="limiter" id="log_form">
		<div class="container-login100">
			<div class="wrap-login100">
			
				<form action="perform_login" method="post" role="form" class="login100-form validate-form">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" class="form-control" />

					<span class="login100-form-title p-b-18">
						Welcome
					</span>
					<span class="login100-form-title p-b-30">
						<i class="zmdi zmdi-font"></i>
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter UserName">
						<input class="input100" type="text" name="username">
						<span class="focus-input100" data-placeholder="User Name"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="password">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Login
							</button>
						</div>
					</div>
					
					<div class="text-center p-t-30">
						<a class="txt2" href="register">
							Create New Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>

					<div class="text-center p-t-45">
						<a class="txt2">
							Welcome to our new website!
							
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>




</body>
</html>