<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Passengers Sign up| Bus Depo System</title>
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
  <script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/form_val.js"></script>
</head>
<body>
<%@ include file="Required/header.html" %>
<div class="container">
		<div class="row my-4">
			<div
				class="col-12 text-center font-weight-bold h2 ">Register Here</div>
		</div>
	</div>
	<div class="row my-4">
		<div class="col-4 offset-4 shadow-lg p-3 mb-5 bg-white rounded">
			<form action="signupdata.jsp" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1">Name:</label> <input type="text"
						class="form-control" name=textname id=name required onblur="validateUsername(this,document.getElementById('nameerror'),'Username should be 5-15 long')">
					    <small style="color: red;" id=nameerror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputEmail1">Email:</label> <input type="text"
						class="form-control" name=textemail required onblur="validateEmail(this,document.getElementById('emailerror'),'Invalid email')">
						<small style="color: red;" id=emailerror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputEmail1">Mobile No:</label> <input type="text"
						class="form-control" name=textmobileno required onblur="validateMobile(this,document.getElementById('mobilenoerror'),'enter valid mobile no')">
						<small style="color: red;" id=mobilenoerror></small>
				</div>
			
				
				<div class="form-group">
					<label for="exampleInputEmail1">Age:</label> <input type="text"
						class="form-control" name=textage required onblur="validateDob(this,document.getElementById('ageerror'),'10 year + age required')">
						<small style="color: red;" id=ageerror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputPassword1">Password:</label> <input
						type="password" class="form-control" name=textpassword id=txtpassword required onblur="validatePassword(this,document.getElementById('passworderror'),'Weak password','Strong password')">
						<small style="color: red;" id=passworderror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputEmail1">Confirm Password:</label> <input type="password"
						class="form-control" name="textcpassword" required onblur="validateConfirmPassword(this,document.getElementById('cpassworderror'),'Password didnt match')">
						<small style="color: red;" id=cpassworderror></small>
				</div>
				<br>
				<button type="submit" class="btn btn-warning">Register</button>
				<hr>
				<a href="Login.jsp">Already a Candidate? Login here..</a>
			</form>
		</div>
	</div>
<%@ include file="Required/footer.html" %>
</body>
</html>