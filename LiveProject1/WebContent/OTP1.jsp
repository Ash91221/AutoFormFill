<%@ include file = "/common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name = "viewport" content = "width = device-width, initial-scale = 1, shrink-to-fit = no">
	<title>OTP</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
	<style>
		.OTP
		{
			border-width:5px;
			border-style: outset;
			max-width: 380px;
			padding: 15px 35px 45px;
			margin: 20px auto;
			background-color: white;
		}
	</style>
</head>
<body>
	<div class = "OTP">
			<form action = "OtpValidation1" class = "form-group" method = "post">
				<font color = "red">${error1}</font>
				<h2>Verification</h2>
				<hr />
				OTP: <input type = "number" name = "o1" class = "form-control" required = "" autofocus = ""><br />
				<input type = "submit" value = "Verify" class = "btn btn-success btn-lg btn-block">
			</form>
		</div>
</body>
</html>
<%@ include file = "/common/footer.jsp" %>