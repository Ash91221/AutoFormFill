<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Home</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
	<style>
		
	</style>
</head>
<body>
	<nav class="navbar navbar-toggleable-md navbar-light bg-danger">
    	<ul class="navbar-nav">
    		<li class="nav-item active">
        		<a class="nav-link" href="home.jsp">Home</a>
      		</li>
      		<li class="nav-item">
        		<a class="nav-link" href="Book1.jsp">Book Tickets</a>
      		</li>
  		</ul>
   		<ul class = "navbar-nav navbar-toggler-right">
   			<li class="nav-item dropdown">
        		<a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Manage Bookings</a>
        		<div class="dropdown-menu">
        			<a class="dropdown-item" href="Recent.do">Recent bookings</a>
        		</div>
      		</li>
      		<li class="nav-item">
        		<a class="nav-link" href="Logout.do">Log out, ${fname} </a>
      		</li>
    	</ul>
	</nav>
</body>
</html>