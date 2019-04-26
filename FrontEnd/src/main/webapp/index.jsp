<%@include file="/WEB-INF/views/Header.jsp" %>


<title>RAMESH</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"  />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

<!-- My CSS File-->
	<link rel="stylesheet" href="<c:url value="/resources/my_css/index.css"/>" />


<!--  Slide Show Banner  -->

<header>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    </ol>
    
  
    <div class="carousel-inner" role="listbox">
      <!-- Slide One - Set the background image for this slide in the line below -->
      <div class="carousel-item active" style="background-image: url('<c:url value="/resources/images/image1.jpeg"/>')">
        <div class="carousel-caption d-none d-md-block">
          <h2 class="display-4">Google Home Mini</h2>
          <p class="lead">Brand of Smart Speakers Developed by Google</p>
        </div>
      </div>
      
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('<c:url value="/resources/images/image2.jpg"/>')">
        <div class="carousel-caption d-none d-md-block">
          <h2 class="display-4">Apple iPhone 8 (64GB)</h2>
          <p class="lead">It is the eleventh generation of the iPhone</p>
        </div>
      </div>
      
      <!-- Slide Three - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('<c:url value="/resources/images/image3.jpg"/>')">
        <div class="carousel-caption d-none d-md-block">
          <h2 class="display-4">Moto 360 (2nd generation)</h2>
          <p class="lead">It's Android Wear-based Smartwatch</p>
        </div>
      </div>

      <!-- Slide Four - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('<c:url value="/resources/images/image4.jpeg"/>')">
        <div class="carousel-caption d-none d-md-block">
          <h2 class="display-4">DJI Spark - Selfie Drone</h2>
          <p class="lead">It's allowing you to seize the moment whenever you feel inspired</p>
        </div>
      </div>
      
    </div>
  
    
    <!-- left - right controller -->
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
  </div>
</header>



</body>
</html>
