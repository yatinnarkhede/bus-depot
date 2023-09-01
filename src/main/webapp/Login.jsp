<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Passengers Login| Bus Depo System</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/form_val.js"></script>
<style>
#divlogin{
margin-top:65px;
margin-bottom:65px;
}
</style>
</head>
<body>
<%@ include file="Required/header.html" %>
<div class="container" id=divlogin>
		<div class="row my-4 ">
			<div
				class="col-12 text-center font-weight-bold h2 ">Login</div>
		</div>
	</div>
	<div class="row my-4">
		<div class="col-4 offset-4 shadow-lg p-3 mb-5 bg-white rounded">
			<form action="logindata.jsp" method="">
				<div class="form-group">
					<label for="exampleInputEmail1">Username:</label> <input
						type="text" class="form-control" id="uname"
						aria-describedby="emailHelp" name=textname required> <small
						style="color: red;" id=nameerror></small>

				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Password:</label> <input
						type="password" class="form-control" id="upass" name=textpassword
						required> <small style="color: red;" id=passworderror></small>
				</div>


				<a href="#"><button type="submit" class="btn btn-warning">Login</button></a>
				<hr>
				<a href="Signup.jsp">Are you new Candidate? Register....</a> <br> <br>
			</form>
		</div>
	</div>
<%@ include file="Required/footer.html" %>
</body>
</html>