<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Buses | Bus Depo System</title>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/form_val.js"></script>
</head>
<body>
<%@ include file="../Required/adminheader.html" %>
<div class="container">
<div class="row my-4 shadow-lg p-3 mb-5 bg-white rounded">
<div class="col-12">
<form action="Addbusdata.jsp" method="post">
				<div class="form-group">
					<h3>Add Buses</h3>
					<hr>
					<label for="exampleInputEmail1">Bus Name</label> <input type="text"
						class="form-control" name=textbname id=name required onblur="validateEmpty(this,document.getElementById('bnameerror'),'Enter bus name')">
					    <small style="color: red;" id=bnameerror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputEmail1">Bus Source</label> <input type="text"
						class="form-control" id="pprice" name=textbsource required onblur="validateEmpty(this,document.getElementById('bsourceerror'),'Enter bus source')">
						<small style="color: red;" id=bsourceerror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputEmail1">Bus Destination</label> <input type="text"
						class="form-control" name=textbdestination required onblur="validateEmpty(this,document.getElementById('bdestinationerror'),'Enter bus destination')">
						<small style="color: red;" id=bdestinationerror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputPassword1">Bus Time</label> <input
						type="text" class="form-control" name=textbtime id=txtpassword required onblur="validateNumber(this,document.getElementById('btimeerror'),'Invalid time')">
						<small style="color: red;" id=btimeerror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputPassword1">Bus Ticket Price</label> <input
						type="text" class="form-control" name=textbtprice id=txtpassword required onblur="validateNumber(this,document.getElementById('btpriceerror'),'Invalid ticket price')">
						<small style="color: red;" id=btpriceerror></small>
				</div>
				
				<button type="submit" class="btn btn-warning">Add Buses</button>
			</form>
		</div>
	</div>
</div>
</div>
</div>
</body>
</html>