<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <title>Bootstrap Date Paginator</title>
	<link href="./bower_components/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
	<link href="./bower_components/bootstrap-datepicker/css/datepicker.css" rel="stylesheet">    
    <link href='./css/myStyle.css'  rel='stylesheet'/>
  </head>
  <body>
  	<div class="container">
    	<h1>Bootstrap Date Paginator</h1>
      <br/>
      <h2>Default</h2>
    	<div id="paginator"></div>
      <br/>
      <h2>Defined start and end date <br/>[2013-11-01 - 2013-11-30]</h2>
      <div id="paginator-start-end"></div>
    </div>
    <script src="./bower_components/jquery/jquery.js"></script>
  	<script src="./bower_components/moment/moment.js"></script>
  	<script src="./bower_components/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  	<script src="./js/bootstrap-datepaginator.js"></script>
  	<script type="text/javascript">
  		$(function() {
  			$('#paginator').datepaginator();
        $('#paginator-start-end').datepaginator({selectedDate:'2013-11-05',startDate:'2013-11-01',endDate:'2013-11-30'});
  		});
  	</script>
  </body>
</html>