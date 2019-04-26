<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Merienda" rel="stylesheet">

<style>



/*			     BACKGROUND COLOR 
===================================================================*/
body { 
/* 
background-image: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1) ;
*/
background-color: #d6d3d33b;
}





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
====================================================================*/

tr#inp_data {
	height: 30px;
    text-align: center;
}

/*   -----------   Input Text Style    --------------- */
td#inp_txt {
	font-weight: bold;
    text-align: center;
}

/*   -----------   Input field Style    --------------- */
td#inp_field {
	padding-left: 30px;	

}

#inp_head {
text-align: center;
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

td#inp_inp {
align: center;
padding-left: 50px;
} 

@media screen and (max-width: 900px) {
td#inp_inp  {
    align: center;
	padding-left: 10px;
   } 
	
}


.inp_ip {
align: center;
padding-left: 2px;
} 

input::placeholder {
  color:  #a6a6a6;
  font-family: 'Merienda', cursive;
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

@media screen and (max-width: 300px) {
td#data_title {
	text-align: center;
	color: red;
	width: 80px;
	height: 40px;
	}
}


@media screen and (max-width: 300px) {
td#data_title2  {
    text-align: center;
	width: 80px;
	height: 40px;
  }
}


#data_title3 {
text-align: center;
font-weight: bold;
width: 140px;
height: 30px;
}

@media screen and (max-width: 600px) {
td#data_title3 {
	text-align: center;
	height: 40px;
	}
}

/* Above the Screen 600px */
@media screen and (min-width: 600px) {
img#opt_icn {
	 height: 30px;
   }
}

/* Above the Screen 500px */
@media screen and (min-width: 500px) {
img#opt_icn {
	 
	 height: 20px;
   }
}

/* Above the Screen 500px */
@media screen and (max-width: 499px) {
img#opt_icn {
	 
	 height: 17px;
   }
}

/* Below the Screen 400px */
@media screen and (max-width: 400px) {
img#opt_icn {
	 width: 15px; 
	 height: 15px;
   }
}

@media screen and (min-width: 830px) {
	div#mytab {
		width: 98%;
	}
}


/* Bootstrap Code for change the table values  */
.table td, .table th {
    padding: .5rem;
    vertical-align: middle;
    border-top: 1px solid #dee2e6;
}




</style>


</head>




<body>

<!-- give a space between Table and Headder -->
<br/>

<!-- Input Table -->
<center>
<div id="mytab" class="container">




<form action="<c:url value="/receipt"/>" method="get">
<table id="tab" align="center" class="table table-bordered">

	<tr  id="data_head" bgcolor="#dee2e6">
		<td colspan="6"> 
			<center>
				<h5>
					<b>Payment Details</b>
				</h5>
			</center> 
		</td>
	</tr>

	
	<tr>	
	
		<td colspan ="2">
	<!-- Default unchecked -->
			<div class="custom-control custom-radio">
  				<input type="radio" class="custom-control-input" id="defaultUnchecked" name="pmode" value="CC">
  				<label class="custom-control-label" for="defaultUnchecked">Credit Card</label>
			</div>
		</td>
		
		<td colspan ="2">
	<!-- Default checked -->
			<div class="custom-control custom-radio">
  				<input type="radio" class="custom-control-input" id="defaultChecked" name="pmode" value="COD" checked>
  				<label class="custom-control-label" for="defaultChecked">Cash on Delivery</label>
			</div>
		</td>
    
    </tr>

	
	<tr bgcolor="#BDC3C7">
		<td id="data_title" colspan="1">Card No :</td>
		<td id="data_title" colspan="5"><input type="text" class = "form-control" name="cardno" placeholder="Card Number"/></td>
	</tr>
	
	
	<tr bgcolor="#BDC3C7">
		<td id="data_title" colspan="1">Expiry Date :</td>
		<td id="data_title" colspan="2"><input type="text" class = "form-control" name="expiryDate" placeholder="Expire Date"/></td>
		<td id="data_title" colspan="1">CVV No :</td>
		<td id="data_title" colspan="2"><input type="text" class = "form-control" name="cvv" placeholder="CVV Number"/></td>
	</tr>
	
	<tr bgcolor="#BDC3C7">
			<td id="data_title" colspan="1">Card Holder Name :</td>
		<td colspan="5"><input type="text" class = "form-control" placeholder="Card Holder Name" name="cname"/></td>
	</tr>
	
	
	<tr>
		<tr bgcolor="#dee2e6">
			<td colspan="2"><center><b>Total Amount</b></center></td>
			<td colspan="2"></td>
			<td colspan="2" style="color:red;"><b>Rs. ${totalAmount} /-</b></td>
		</tr>
	</tr>
	
	
	<tr bgcolor="#BDC3C7">
		<td colspan="6">
			<center>
				<input type="submit" value="Pay" class="btn btn-success"/>
			</center>
		</td>
	</tr>
	
		
</table>
</form>
</div>

</center>
</body>
</html>


