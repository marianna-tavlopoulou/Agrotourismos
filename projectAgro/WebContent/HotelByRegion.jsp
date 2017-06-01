<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*, java.util.*"  %>
    <%@page import="com.agro.Model.Hotel" %>
    <%@page errorPage="MyErrorPage.jsp" %>
    <%@ page session="true" %>
    
    
    <% ArrayList<Hotel> hotelList = (ArrayList<Hotel>)request.getAttribute("hotelList"); %>
<!DOCTYPE html>
<html>
<head>
  <title>Hotels in <%= request.getAttribute("name") %>
  <%
  %> </title>
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

  <!-- Header -->
  <header id="header" class="container-fluid">
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>        
          <span class="icon-bar"></span>        
          <span class="icon-bar"></span>	     
        </button>
          <a class="navbar-brand logo" href="#">
            <img src="images/logo.png" alt="Welcome to Agrotourismo" style="height:30px; width:30px;">
          </a>

		<a class="dropdown-toggle" data-toggle="dropdown" href="#">Welcome ${user.name}<span class="caret"></span></a> 
              <ul class="dropdown-menu">
                <li><a href="#">Your reviews</a></li>
                <li><a href="#">Your profile</a></li>
                <li><a href="#">Favorites</a></li>
              </ul>

        </div>

        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#home">Home</a></li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Region<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Central Greece</a></li>
                <li><a href="#">Zakynthos</a></li>
                <li><a href="#">Pyrgos Ileias</a></li>
                <li><a href="#">Crete</a></li>
              </ul>
            </li>
            <li><a href="#hotels">Hotels</a></li>
            <li><a href="#contact">Contact</a></li>
            <!--  <li><a href="#login">Login</a></li>-->
            <!-- Button to open the modal login form -->
            
            <li>
            <a href="#">Log out</a>
            </li>

        </div>


      </div>


      </ul>
      </div>

      </div>
    </nav>
  </header>
  <!-- End Header -->

  <!-- Main Content -->
  <div id="main-content">

    <!-- Form -->
    <div id="form" class="container section" style="margin-top:50px">
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

  <!-- Login Modal -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">Login</h4>
        </div>
        <div class="modal-body">
          <form role="form"  action="" method="post">
            <div class="form-group">
              <label for="email"><span class="glyphicon glyphicon-user"></span> E-mail</label>
              <input type="email" class="form-control" id="email" placeholder="Enter e-mail">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" id="psw" placeholder="Enter password">
            </div>
			<div class="modal-footer">
			    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
			    <a href="Agro_userIndex.jsp"></a><button type="button" class="btn btn-success">Login</button></a>
	        </div>
	        <div>
				<a href="Register.jsp"><button type="button" class="btn btn-default">register</button></a>
			</div>
          </form>
        </div>
        
    </div>
  </div>
</div>
  </div>
  <!-- End Main Content -->



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