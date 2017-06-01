<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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

		<a class="dropdown-toggle" data-toggle="dropdown" href="#" ><div style="margin:auto; display:block;">Welcome ${user.name}</div><span class="caret"></span></a> 
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
                <li><a href="/HotelController">Central Greece</a></li>
                <li><a href="/HotelController">Zakynthos</a></li>
                <li><a href="/HotelController">Pyrgos Ileias</a></li>
                <li><a href="/HotelController">Crete</a></li>
              </ul>
            </li>
            <li><a href="#hotels">Hotels</a></li>
            <li><a href="#contact">Contact</a></li>
            <!--  <li><a href="#login">Login</a></li>-->
            <!-- Button to open the modal login form -->
            
            <li>
            <a href="/LogoutController">Log out</a>
            </li>

        </div>


      </div>


      </ul>
      </div>

      </div>
    </nav>
  </header>
  <!-- End Header -->
</body>
</html>