<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login | Bus Depo System</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/form_val.js"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<style>
#adminlog{
margin-top:140px;
}
</style>
</head>

<body>

	<div class="container" id="adminlog">
		<div class="row my-4">
			<div
				class="col-12 text-center font-weight-bold h2 ">Admin Login</div>
		</div>
	</div>
	<div class="row my-4">
		<div class="col-4 offset-4 shadow-lg p-3 mb-5 bg-white rounded">
			<form action="Logindata.jsp" method=post>
				<div class="form-group">
					<label for="exampleInputEmail1">Username:</label> <input
						type="text" class="form-control" id="aname"
						aria-describedby="emailHelp" name=textname required> <small
						style="color: red;" id=nameerror></small>

				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Password:</label> <input
						type="password" class="form-control" id="apass" name=textpassword
						required> <small style="color: red;" id=passworderror></small>
				</div>


				<button type="submit" class="btn btn-warning">Login</button>
			
			</form>
		</div>
	</div>
	
</body>
</html>