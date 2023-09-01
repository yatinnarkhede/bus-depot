<script>






</script>


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
	<h1 class="h2">Apply pass</h1>

</div>


<div class="container">
	<div class="row my-4">
		<div class="col-12  shadow-lg p-3 mb-5 bg-white rounded">
			<form action="applypassdata.jsp" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1">Name:</label> <input type="text"
						class="form-control" name=textname id=name readonly
						value="<%=rs.getString(3)%>"> <small></small>
				</div>


				<div class="form-group">
					<label for="exampleInputEmail1">Mobile No:</label> <input
						type="text" class="form-control" name=textmobileno readonly
						value="<%=rs.getString(5)%>"
						onblur="validateMobile(this,document.getElementById('mobilenoerror'),'enter valid mobile no')">
					<small style="color: red;" id=mobilenoerror></small>
				</div>

				<div class="form-group">
					<label for="exampleFormControlSelect1">Gender:</label> <select
						class="form-control" id="exampleFormControlSelect1" name=textdob
						onblur="validateEmpty(this,document.getElementById('durationerror'),'please select duration')">
						<option>----Select----</option>
						<option>Male</option>
						<option>Female</option>
						<option>Others</option>
					</select> <small style="color: red;" id=durationerror></small>
				</div>

				<div class="form-group">
					<label for="exampleInputPassword1">Aadhar Number:</label> <input
						type="text" class="form-control" name=textaadhar id=txtpassword
						readonly value="<%=rs.getString(8)%>"
						onblur="validateAadhar(this,document.getElementById('aadharerror'),'Enter valid aadhar number')">
					<small style="color: red;" id=aadharerror></small>
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Age:</label> <input type="text"
						class="form-control" name="textage" readonly value="<%=rs.getString(7)%>"> <small
						style="color: red;" id=cpassworderror></small>
				</div>
				<div class="form-group">
					<label for="exampleFormControlSelect1">Pass Duration:</label> <select
						class="form-control" id="puration" name=textpduration onchamge="calculatepassPrice()"
						onblur="validateEmpty(this,document.getElementById('durationerror'),'please select duration')">
						<option>----Select----</option>
						<option value="one">One Month</option>
						<option value="three">Three Months</option>
						<option value="six">Six Months</option>
						<option value="oney">One Year</option>` 
					</select> <small style="color: red;" id=durationerror></small>
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Pass start date:</label> <input
						type="date" class="form-control" name=textsdate id=name required
						onblur="validateEmpty(this,document.getElementById('psdateerror'),'please enter start date')">
					<small style="color: red;" id=psdateerror></small>
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">pass end date:</label> <input
						type="date" class="form-control" name=textedate id=name required
						onblur="validateEmpty(this,document.getElementById('pedateerror'),'please enter end date')">
					<small style="color: red;" id=pedateerror></small>
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Pass price:</label> <input
						type="text" class="form-control" name=textpprice id=price  required
						onblur="validateEmpty(this,document.getElementById('passperror'),'please enter pass price')">
					<small style="color: red;" id=passperror></small>
				</div>
				
				
				
				<div class="form-group">
					<label for="exampleFormControlSelect1">Payment:</label> <select
						class="form-control" id="exampleFormControlSelect1" name=textpayment
						onblur="validateEmpty(this,document.getElementById('durationerror'),'please select duration')">
						<option>----Select----</option>
						<option>UPI </option>
						<option>Debit card or Credit card</option>
						
					</select> <small style="color: red;" id=durationerror></small>
				</div>
				
				
				<br>
				
			
				<button type="submit" class="btn btn-warning">Apply for
					pass</button>


			</form>
		</div>
	</div>
</div>