<%@ include file= "/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name = "viewport" content = "width = device-width, initial-scale = 1, shrink-to-fit = no">
	<title>Login</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
	<style>
	
		.lform
		{
			border-width:5px;
			border-style: outset;
			max-width: 380px;
			padding: 15px 35px 45px;
			margin: 20px auto;
			background-color: white;
		}

		.rform
		{
			visibility: hidden;
			border-width:5px;
			border-style: outset;
			max-width: 380px;
			padding: 15px 35px 45px;
			margin: 20px auto;
			background-color: white;
		}
		
		body
		{
			background-image: url('gg.jpg');
			background-repeat: no-repeat;
			background-size: cover;
		}
		
	</style>
</head>
<body>
	<script>
		function register()
		{
			document.getElementById('lform').style.visibility = "hidden";
			document.getElementById('lform').style.display = "none";
			document.getElementById('rform').style.visibility = "visible";
		}
	</script>
	<div class = "container">
		<div class = "lform" id = "lform">
			<form action = "Login.do" class = "form-group" method = "post">
				<font color = "red">${error}</font>
				<h2>Login</h2>
				<hr />
				EmailId:<input type = "email" name = "l1" class = "form-control" required = "" autofocus = ""><br />
				Password:<input type = "password" name = "l2" class = "form-control" required = "">
				<a href = "intialf.jsp">forgot password?</a><br /><br />
				<input type = "submit" value = "Login" class = "btn btn-primary btn-lg btn-block">
				<hr />
				<center><a href = "javascript:;" onclick="register()">not a user?</a></center>
			</form>
		</div>
		<div class = "rform" id = "rform">
					<form action = "Register" class = "form-group" method = "post">
					 	Full Name:<input type = "text" name = "r1" class = "form-control" placeholder = "Fullname" required="" autofocus=""><br />
					 	EmailId:<input type = "email" name = "r2" class = "form-control" placeholder = "Username" required=""><br />
					 	Password:<input type = "password" name = "r3" class = "form-control" placeholder = "Password" required=""><br />
					 	MobileNo:<input type = "number" name = "r4" class = "form-control" placeholder = "MobileNo" required=""><br />
						<input type = "submit" class = "btn btn-primary btn-lg btn-block" value = "Register">
					</form>
				</div>
	</div>
		
</body>
</html>
<%@ include file= "/common/footer.jsp" %>