<%@ include file= "/common/header.jsp" %>
<%@ include file= "/common/nav.jsp" %>
<%@ page language="java" import="java.util.*, com.app.transaction.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Book Tickets</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
	<style>
		body 
		{
    		font-family: "Lato", sans-serif;
		}

		.sidenav 
		{
    		height: 100%;
    		width: 250px;
    		position: fixed;
   			z-index: 1;
    		top: 0;
    		left: 0;
    		background-color: #111111;
    		transition: 0.5s;
    		padding-top: 60px;
    		margin-top: 95px;
		}

		.sidenav a 
		{
    		padding: 8px 8px 8px 32px;
    		text-decoration: none;
    		font-size: 25px;
    		color: #818181;
    		display: block;
    		transition: 0.3s;
		}

		.sidenav a:hover 
		{
    		color: #f1f1f1;
		}

		@media screen and (max-height: 450px) 
		{
		  .sidenav {padding-top: 15px;}
		  .sidenav a {font-size: 18px;}
		}
			
	</style>
	<script>
	function populate()
	{
		<% 
		if(request.getSession().getAttribute("Details")!=null)
		{
		ArrayList<Details> ODetails = (ArrayList<Details>)request.getSession().getAttribute("Details");
		for(Details s:ODetails)
		{
		%>
		document.getElementById("a2").value = "<%= s.getName() %>";
		document.getElementById("a3").value = "<%= s.getMobile() %>";
		document.getElementById("a4").value = "<%= s.getGender() %>";
		document.getElementById("a5").value = "<%= s.getEmail() %>";
		document.getElementById("a6").value = "<%= s.getAge() %>";
		<% } } %>
	}
	</script>
</head>
<body>
	<div class = "container">
		<div id="mySidenav" class="sidenav">
			<a href="javascript:;" onClick = "show()" class = "nav-link disabled">Train&nbsp;&nbsp;&nbsp;<i class="fa fa-hand-o-right"></i></a>
	  		<a href="javascript:;" onClick = "show()" class = "nav-link disabled">Bus&nbsp;&nbsp;&nbsp;<i class="fa fa-hand-o-right"></i></a>
	  		<a href="javascript:;" onClick = "show()" class = "nav-link disabled">Flight&nbsp;&nbsp;&nbsp;<i class="fa fa-hand-o-right"></i></a>
		</div>
		<div id = "Details">
			<table class = "table">
				<thead class="thead-inverse">
					<tr>
						<th>Aadhaar Number</th>
						<th>Name</th>
						<th>Mobileno.</th>
						<th>Gender</th>
						<th>Email</th>
						<th>Age</th>
						<th></th>
					</tr>
				</thead>
				<tbody class="table table-striped">
					<%
						//int t = (int)request.getSession().getAttribute("Tickets");
						for(int i = 0;i < 6;i++) {
					%>
					<tr>
					<form action = "BookTickets1" method = "post">
						<td><input type = "text" name = "a1" id = "a1" required = ""></td>
						<td><input type = "text" id = "a2" readonly = "true"></td>
						<td><input type = "text" id = "a3" readonly = "true"></td>
						<td><input type = "text" id = "a4" readonly = "true"></td>
						<td><input type = "text" id = "a5" readonly = "true"></td>
						<td><input type = "text" id = "a6" readonly = "true"></td>
						<td><input type = "submit" id = "btn" class = "btn btn-sm btn-success" onClick = "populate()" value = "Get"></td>
					</form>
					<% } %>		
				</tbody>
			</table>
			<form action="#">
				<center><input type = "submit" value = "Order Summary" class = "btn btn-lg btn-warning"></center>
			</form>
		</div>
	</div>
</body>
</html>