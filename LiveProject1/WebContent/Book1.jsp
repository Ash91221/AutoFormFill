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
		
		#Search
		{
			display: none;
			visibility: hidden;
			border-width:5px;
			border-style: outset;
			max-width: 380px;
			padding: 15px 35px 45px;
			margin: 20px -100px;
			background-color: white;
		}
		
	</style>
	<script>
		function show()
		{
			document.getElementById("Search").style.display = "block";
			document.getElementById("Search").style.visibility = "visible";	
		}
	
		
		function load()
				{
					var request = new XMLHttpRequest();
					request.overrideMimeType("application/json");
					request.open('GET','TrainDetails.json',true);
					request.onload = function()
										{
											populate(request.responseText);
										};
					request.onerror = function()
										{
											alert("Connection error");
										};					
					request.send();
				}

		
		function populate(data)
		{
			var ourdata = JSON.parse(data);
			if(document.getElementById("num").value != "")
			{
				var i = 0;
				while(ourdata[i] != null)
				{
					var t = ourdata[i].TrainNo;
					if(t == document.getElementById("num").value)
					{
						console.log("in if");
						document.getElementById("from").value = ourdata[i].From;
						document.getElementById("to").value = ourdata[i].To;
						break;
					}
					else
						i++;
				}
			}
			else
			{
				var i = 0;
				while(ourdata[i] != null)
				{
					var f = (ourdata[i].From).toLowerCase();
					var t = (ourdata[i].To).toLowerCase();
					if(f == (document.getElementById("from").value).toLowerCase() && t == (document.getElementById("to").value).toLowerCase())
					{
						document.getElementById("num").value = ourdata[i].TrainNo;
						break;
					}
					else
						i++;
				}
			}
		}
		
		
	</script>
	
</head>
			
<body>
	<div class = "container">
		<div id="mySidenav" class="sidenav">
			<a href="javascript:;" onClick = "show()">Train&nbsp;&nbsp;&nbsp;<i class="fa fa-hand-o-right"></i></a>
	  		<a href="javascript:;" onClick = "show()">Bus&nbsp;&nbsp;&nbsp;<i class="fa fa-hand-o-right"></i></a>
	  		<a href="javascript:;" onClick = "show()">Flight&nbsp;&nbsp;&nbsp;<i class="fa fa-hand-o-right"></i></a>
		</div>
		<div id = "Search" >
			<form action="BookTickets1" method = "get" class = "form-group">
				No.<input type = "number" id = "num" value = "" class = "form-control" required = ""><br />
				From:<input type = "text" id = "from" value = "" class = "form-control" required = "">
				To:<input type = "text" id = "to" value = "" class = "form-control" required = ""><br />
				<input type = "button" id = "b" value = "Get" onClick = "load()" class = "btn btn-success btn-md">
				<hr />
				No.of Tickets<select id = "tickets" class = "form-control">
					<option value = "1">1</option>
					<option value = "2">2</option>
					<option value = "3">3</option>
					<option value = "4">4</option>
					<option value = "5">5</option>
					<option value = "6">6</option>
				</select><br />
				<input type = "submit" class = "btn btn-md btn-block btn-success" value = "Proceed">
			</form>
		</div>
		
	</div>  
</body>
</html> 
