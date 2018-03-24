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
		#l p
		{
			padding-left:20px;
		}
		#r p
		{
			padding-right:20px;
		}
	</style>
</head>
<body>
	<% ArrayList arr = (ArrayList)request.getSession().getAttribute("Details");
		int length = arr.size();	
	%>
	<center>
	<div class = "card bg-info" style="width: 1000px; margin-top:20px">
		<div class = "card-header">
			<h4>Order Summary</h4>
		</div>
		<div class = "card-body">
		<div id = "l">
			<p align = "left"><%= request.getSession().getAttribute("type")%> Number:	<%= request.getSession().getAttribute("number")%></p>
			<p align = "left">From:	<%= request.getSession().getAttribute("src")%></p>
			<p align = "left">To:	<%= request.getSession().getAttribute("dest")%></p>
			<p align = "left">No.of Passengers:	<%= length %></p>
		</div>
		<div id = "r">
			<p align = "right">Date of Travel:	<%= request.getSession().getAttribute("DOT") %></p>
			<p align = "right">Departure Time:	<%= request.getSession().getAttribute("DTime")%></p>
			<p align = "right">Arrival Time:	<%= request.getSession().getAttribute("ATime")%></p>
		</div>
		</div>
	</div>
	</center>
</body>
</html>