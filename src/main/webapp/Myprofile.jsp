<%@ include file="Required/database_connect.jsp"%>

<%!String na;%>
<%
na = session.getAttribute("username").toString();

PreparedStatement ps = con.prepareStatement("select * from passenger_tbl where puname=?;");
ps.setString(1, na);
ResultSet rs = ps.executeQuery();
rs.next();
%>

<div
	class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">My profile</h1>

</div>
<div class="container">
<div class="row my-4">
	<div class="col-12 shadow-lg p-3 mb-5 bg-white rounded">
		<form action="myprofiledata.jsp" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Name:</label> <input type="text"
					class="form-control" name=textname value="<%=rs.getString(1)%>"
					id=name readonly
					onblur="validateUsername(this,document.getElementById('nameerror'),'Username should be 5-15 long')">
				<small style="color: red;" id=nameerror></small>
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">Email:</label> <input type="text"
					class="form-control" name=textemail value="<%=rs.getString(6)%>"
					required
					onblur="validateEmail(this,document.getElementById('emailerror'),'Invalid email')">
				<small style="color: red;" id=emailerror></small>
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">FullName:</label> <input type="text"
					class="form-control" name=textfullname value="<%=rs.getString(3)%>"
					required> <small style="color: red;" id=doberror></small>
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">Mobile No:</label> <input
					type="text" class="form-control" name=textmobileno
					value="<%=rs.getString(5)%>" required
					onblur="validateMobile(this,document.getElementById('mobilenoerror'),'enter valid mobile no')">
				<small style="color: red;" id=mobilenoerror></small>
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">Password:</label> <input
					type="password" class="form-control" name=textpassword
					value="<%=rs.getString(2)%>" id=txtpassword required
					onblur="validatePassword(this,document.getElementById('passworderror'),'Weak password','Strong password')">
				<small style="color: red;" id=passworderror></small>
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">Address:</label>
				<textarea type="text" class="form-control" name="textaddress" rows=4
					cols=30required><%=rs.getString(4)%></textarea>
				<small style="color: red;" id=cpassworderror></small>
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">Date of Birth:</label> <input
					type="date" class="form-control" name=textdob required value="<%=rs.getString(10)%>"
					onblur="validateDob(this,document.getElementById('doberror'),'10 year + age required')">
				<small style="color: red;" id=doberror></small>
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">Passengers Image</label> <input
					type="file" class="form-control" name=textimage required value="<%=rs.getString(9)%>"
					onblur="validateEmpty(this,document.getElementById('imageerror'),'Select image file')">
				<small style="color: red;" id=imageerror></small>
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">Age:</label> <input type="text"
					class="form-control" name=textage value="<%=rs.getString(7)%>"
					required
					onblur="validateDob(this,document.getElementById('ageerror'),'10 year + age required')">
				<small style="color: red;" id=ageerror></small>
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">Aadhar Number:</label> <input
					type="text" class="form-control" name=textaadhar id=txtpassword
					required value="<%=rs.getString(8)%>"
					onblur="validateAadhar(this,document.getElementById('aadharerror'),'Enter valid aadhar number')">
				<small style="color: red;" id=aadharerror></small>
			</div>
			<br>
			<button type="submit" class="btn btn-warning">Update profile</button>


		</form>
	</div>
	</div>