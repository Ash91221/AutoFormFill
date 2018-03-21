<%@ include file= "/common/header.jsp" %>
<%@ include file= "/common/nav.jsp" %>
<%@ page import="java.util.*, com.app.transaction.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Book Tickets</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
	<style>
		#search
		{
			border-width:5px;
			border-style: outset;
			max-width: 380px;
			padding: 15px 35px 45px;
			margin: 20px auto;
			background-color: white;
		}
		
		#details
		{
			border-width:5px;
			border-style: outset;
			max-width: 380px;
			padding: 15px 35px 45px;
			margin: 20px auto;
			background-color: white;
		}
		
	</style>
	<script>
	function edit()
	{
		if(document.getElementById("btn").value == "Edit")
		{
			document.getElementById("a2").style.border = "";
			document.getElementById("a3").style.border = "";
			document.getElementById("a5").style.border = "";
			document.getElementById("a2").readOnly = false;
			document.getElementById("a3").readOnly = false;
			document.getElementById("a5").readOnly = false;
			document.getElementById("btn").value = "Save";
		}
		else
		{
			document.getElementById("a2").style.border = "none";
			document.getElementById("a3").style.border = "none";
			document.getElementById("a5").style.border = "none";
			document.getElementById("a2").readOnly = true;
			document.getElementById("a3").readOnly = true;
			document.getElementById("a5").readOnly = true;
			document.getElementById("btn").value = "Edit";
		}
	}
	</script>
</head>
<body>
	<div class = "container">
		<div class = "row">
			<div class = "col-md-6" id = "search">
				<h3>Search</h3>
				<hr />
				<form class = "form-group" action = "#">
					From:<input type = "text" class = "form-control" name = "src"><br />
					To:<input type = "text" class = "form-control" name = "dest"><br />
					Date of Travel:<input type = "date" class = "form-control" name = "d1"><br />
					<input type = "submit" class = "btn btn-success btn-lg" value = "Search">
				</form>
			</div>
			<div class = "col-md-6" id = "details">
				<font color = "red">${select}</font>
				<h3>Details</h3>
				<hr />
				<form class = "form-group" action = "BookingTickets" method = "post">
					Select UniqueID:<select name = "type" class = "form-control" >
						<option value = "aadhaar">Aadhaar Card</option>
					</select><br />
					Enter ID:<input type = "text" required = "" name = "id" class = "form-control"><br />
					<input type = "submit" class = "btn btn-success btn-lg" value = "Add">
				</form>
			</div>
		</div>
		<div class = "row">
			<div class = "col-xl-12">
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
						if(request.getSession().getAttribute("Details")!=null)
						{
						ArrayList<Details> ODetails = (ArrayList<Details>)request.getSession().getAttribute("Details");
						for(Details s:ODetails)
						{
						
						%>
						<tr>
							<td><input type = "text" id = "a1" value = "<%= s.getAid() %> " style = "border : none" readonly = "true"></td>
							<td><input type = "text" id = "a2" value = "<%= s.getName() %> " style = "border : none" readonly = "true"></td>
							<td><input type = "text" id = "a3" value = "<%= s.getMobile() %> " style = "border : none" readonly = "true"></td>
							<td><input type = "text" id = "a4" value = "<%= s.getGender() %> " style = "border : none" readonly = "true"></td>
							<td><input type = "text" id = "a5" value = "<%= s.getEmail() %> " style = "border : none" readonly = "true"></td>
							<td><input type = "text" id = "a6" value = "<%= s.getAge() %> " style = "border : none" readonly = "true"></td>
							<td><input type = "button" id = "btn" onclick = "edit()" value = "Edit"></td>
						</tr>
						<%
						}
						}
						%>
					</tbody>
				</table>
				<form action="#">
					<input type = "submit" value = "Proceed To Pay" class = "btn btn-block btn-primary">
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>
<%@ include file= "/common/footer.jsp" %>