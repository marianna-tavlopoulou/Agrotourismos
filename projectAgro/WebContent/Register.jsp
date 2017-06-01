
<!DOCTYPE html>
<html>
<head>
<title>User Registration</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="styles/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="NavBar.jsp" %>
	<form class="form-horizontal" action="UserController" method="Post">
<fieldset>

<!-- Form Name -->
<legend text-center style="margin-top: 60px; text-align:center;">Registration Form</legend>

<!-- email input-->
<div class="form-group" style="margin-top: 60px;">
  <label class="col-md-4 control-label" for="email">E-mail</label>
  <div class="col-md-4">
  <input name="email" class="form-control input-md" id="email" type="email" placeholder="your email" required>
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>
  <div class="col-md-4">
    <input name="password" class="form-control input-md" id="password" type="password" placeholder="*****" required>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="name">Name</label>
  <div class="col-md-4">
  <input name="name" class="form-control input-md" id="name" type="text" placeholder="your name" required>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="surname">Surname</label>
  <div class="col-md-4">
  <input name="surname" class="form-control input-md" id="surname" type="text" placeholder="your surname" required>
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="form-group">
  <label class="col-md-4 control-label" >Gender</label>
  <div class="col-md-4">
    <label class="radio-inline" for="radios-female">
      <input name="gender" id="radios-female" type="radio" checked="checked" value="female" >
      Female
    </label>
    <label class="radio-inline" for="radios-male">
      <input name="gender" id="radios-male" type="radio" value="male">
      Male
    </label>
  </div>
</div>

<div class="container">
    <div class="row">
                	<label class="col-md-4 control-label" >Birth date</label>
    
        <div class='col-xs-1 '>
            <div class="form-group">
                <div class='input-group date' id='datetimepicker1'>
                    <input type='number' name="day" class="form-control" placeholder="dd">
                </div>
            </div>
        </div>
                            <div class='col-xs-1'>/</div>
        
				<div class='col-xs-1'>
						<div class="form-group">
								<div class='input-group date' id='datetimepicker1'>
										<input type='number' name="month" class="form-control" placeholder="mm">
								</div>
						</div>
				</div>
				<div  class='col-xs-1'>/</div>
				<div class='col-xs-1'>
						<div class="form-group">
								<div class='input-group date' id='datetimepicker1'>
										<input type='number' name="year" class="form-control" placeholder="yyyy">
								</div>
						</div>
				</div>
       
    </div>
</div>
<!-- Button (Double) -->
<div class="form-group">
<div class="col-md-8 col-md-offset-3">

    <button name="register" class="btn btn-primary" type="submit" id="register"><span class="glyphicon glyphicon-thumbs-up"></span> Register</button>
    <button name="cancel" class="btn btn-default" id="cancel">Cancel</button>
  </div>
</div>

</fieldset>
</form>
 <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });
        </script>
</body>
</html>
