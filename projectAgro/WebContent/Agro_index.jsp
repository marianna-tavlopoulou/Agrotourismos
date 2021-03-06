<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>Agrotourismo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="styles/styles.css" rel="stylesheet" type="text/css">
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

  <%@ include file="NavBar.jsp" %>

  <!-- Main Content -->
  <div id="main-content">

    <!-- Form -->
    <div id="form" class="container section">
      <form class="form-inline">

        <div class="form-group">
          <label for="district">District:</label>
          <select class="form-control" name="district" id="district">
            <option>Peloponese</option>
            <option>Zagoria</option>
          </select>
        </div>

        <div class="form-group">
          <label for="hotel">Book:</label>
          <select class="form-control" name="country" id="country">
            <option>Hotel</option>
            <option>Activity</option>
          </select>
        </div>

        <div class="form-group">
          <label for="dateFrom">Date from:</label>
          <input type="date" class="form-control" id="dateFrom" name="dateFrom" placeholder="Date from">
        </div>

        <div class="form-group">
          <label for="dateTo">Date to:</label>
          <input type="date" class="form-control" id="dateT" name="dateTo" placeholder="Date to">
        </div>

        <button type="submit" class="btn btn-success">Search</button>
      </form>
    </div>
  <!-- End Form -->

  <!-- Info Section -->
  <div id="info" class="container section">
    <div class="jumbotron text-center">
      <h1>Agrotourism</h1>
      <p><em>Have the most relaxing holidays in Greece!</em></p>
      <p>Agrotourism includes a wide variety of activities, including buying products direct from a farm stand, taking part in the wine-making process, feeding animals, or staying at a bed and breakfast (B&B) on a farm!</p>
    </div>
  </div>
  <!-- End Info Section -->

  <!-- Carousel -->
  <div id="myCarousel" class="carousel slide container" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/horses2.jpg" alt="Horse Riding">
        <div class="carousel-caption">

          <h3>Horse Riding and Caring</h3>
          <p>Take the chance to feed horses and have a ride through a path or by the sea.</p>

        </div>

      </div>


      <div class="item">
        <img src="images/grapes_s.jpg" alt="grapes">
        <div class="carousel-caption">

          <h3>Grapes</h3>
          <p>Experience the whole process of making wine in Pelopponese!</p>

        </div>

      </div>


      <div class="item">
        <img src="images/trecking_s.jpg" alt="trecking">
        <div class="carousel-caption">

          <h3>Trecking</h3>
          <p>Enjoy greek nature by walking through incredible paths!</p>

        </div>

      </div>

    </div>


    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">     <span
        class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>  
      </a>   <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">     <span
        class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>  
      </a>
  </div>
  <!-- End Carousel -->

  <!-- Featured -->
  <div id="featured" class="container section">
    <div class="row text-center">

      <div class="col-sm-4">

        <div class="thumbnail">
          <img src="images/logo.png" alt="Paris">
          <p>
            <strong>Hotel 1</strong>
          </p>

          <p>Peloponese</p>

          <button class="btn">More</button>
        </div>

      </div>

      <div class="col-sm-4">

        <div class="thumbnail">
          <img src="images/logo.png" alt="New York">
          <p>
            <strong>Hotel 2</strong>
          </p>

          <p>Some area</p>

          <button class="btn">More</button>
        </div>

      </div>

      <div class="col-sm-4">

        <div class="thumbnail">
          <img src="images/logo.png" alt="San Francisco">
          <p>
            <strong>Hotel 3</strong>
          </p>

          <p>Some area</p>

          <button class="btn">More</button>
        </div>

      </div>
    </div>
  </div>
  <!-- End Featured -->

  


        <div class="container">

          <h3 class="text-center">Contact</h3>
          <p class="text-center">
            <em>Review your experience!</em>
          </p>

          <div class="row test">

            <div class="col-md-4">

              <p>Contact us</p>

              <p>
                <span class="glyphicon glyphicon-map-marker"></span>Athens, Greece
              </p>

              <p>
                <span class="glyphicon glyphicon-phone"></span>Phone: +30 2105252805
              </p>

              <p>
                <span class="glyphicon glyphicon-envelope"></span>Email: agrotourismo@mail.com
              </p>

            </div>

            <div class="col-md-8">

              <div class="row">

                <div class="col-sm-6 form-group">
                  <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                </div>

                <div class="col-sm-6 form-group">
                  <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                </div>

              </div>

              <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
              <div class="row">

                <div class="col-md-12 form-group">

                  <button class="btn pull-right" type="submit">Send</button>
                </div>

              </div>

            </div>

          </div>

        </div>
<%@ include file="modalLogin.html" %>
      
      
      
        <!-- Add Google Maps -->
        <div id="googleMap"></div>
      <script>
  function myMap() {
    var myCenter = new google.maps.LatLng(41.878114, -87.629798);
    var mapProp = {
      center: myCenter,
      zoom: 12,
      scrollwheel: false,
      draggable: false,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document
      .getElementById("googleMap"), mapProp);
    var marker = new google.maps.Marker({
      position: myCenter
    });
    marker.setMap(map);
  }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>

        <footer class="text-center">
          <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">     <span
						class="glyphicon glyphicon-chevron-up"></span>  
					</a><br>
          <br>
          <p>
            Agroturismo 2017
          </p>
        </footer>

        <script>
          $(document).ready(function() {
            // Initialize Tooltip
            $('[data-toggle="tooltip"]').tooltip();
          })
        </script>


</body>

</html>
