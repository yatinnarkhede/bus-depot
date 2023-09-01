<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/dashboard/">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />

<%@ include file="../Required/database_connect.jsp"%>
<script>

</script>
<div
	class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2 mx-4">Apply for ticket</h1>
</div>

<div class="container">
	
<%! String bi,username; %>
<% 
bi=request.getParameter("bid");
PreparedStatement ps=con.prepareStatement("select * from bus_tbl where bid=?");
ps.setString(1,bi);
ResultSet rs=ps.executeQuery();
rs.next();
%>
	<div class="row my-4">
		<div class="col-12  shadow-lg p-3 mb-5 bg-white rounded">
			<form action="applyforticketdata.jsp" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1">Name:</label> <input type="text"
						class="form-control" name=textname id=name required 
						onblur="validateName(this,document.getElementById('nameerror'),'Enter the name ')">
					<small style="color: red;" id=nameerror></small>
				</div>


				<div class="form-group">
					<label for="exampleInputEmail1">Bus id:</label> <input type="text"
						class="form-control" name=textbusid readonly
						value=<%=rs.getInt(1)%>> <small style="color: red;"
						id=mobilenoerror></small>
				</div>


				<div class="form-group">
					<label for="exampleInputEmail1">Age:</label> <input type="text"
						class="form-control" name=textage required
						onblur="validateEmpty(this,document.getElementById('ageerror'),'age required')">
					<small style="color: red;" id=ageerror></small>
				</div>

				<div class="form-group">
					<label for="exampleFormControlSelect1">Gender:</label> <select
						class="form-control" id="exampleFormControlSelect1" name=textgender
						onblur="validateEmpty(this,document.getElementById('durationerror'),'please select duration')">
						<option>----Select----</option>
						<option>Male</option>
						<option>Female</option>
						<option>Others</option>
					</select> <small style="color: red;" id=durationerror></small>
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Bus From:</label> <input
						type="text" class="form-control" name=textsdate id=name readonly
						value=<%=rs.getString(3)%>
						onblur="validateEmpty(this,document.getElementById('psdateerror'),'please enter start date')">
					<small style="color: red;" id=psdateerror></small>
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Bus To:</label> <input type="text"
						class="form-control" name=textbusto id=name readonly
						value=<%=rs.getString(4)%>
						onblur="validateEmpty(this,document.getElementById('pedateerror'),'please enter end date')">
					<small style="color: red;" id=pedateerror></small>
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Bus Tickets:</label> <input
						type="text" class="form-control" name=textqty id=tqty required
						onblur="validateEmpty(this,document.getElementById('busterror'),'please enter tickets')">
					<small style="color: red;" id=busterror></small>
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Bus time:</label> <input
						type="text" class="form-control" name=textbustime readonly value=<%=rs.getString(5)%>>
					<small style="color: red;" id=mobilenoerror></small>
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Ticket Price:</label> <input
						type="text" class="form-control" name=textprice id=tprice  onkeyup="calculatePrice(this.value)" readonly value=<%=rs.getString(6)%>
						onblur="validateEmpty(this,document.getElementById('ticketperror'),'please enter tickets')">
					<small style="color: red;" id=ticketperror></small>
				</div>

				<div class="form-group">
					<label for="exampleFormControlSelect1">Payment:</label> <select
						class="form-control" id="exampleFormControlSelect1"
						name=textpayment
						onblur="validateEmpty(this,document.getElementById('durationerror'),'please select duration')">
						<option>----Select----</option>
						<option>UPI</option>
						<option>Debit card or Credit card</option>

					</select> <small style="color: red;" id=durationerror></small>
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Tickets final amount:</label> <input
						type="text" class="form-control" name=textpstatus id=tfamount readonly>
					<small style="color: red;" id=passserror></small>
				</div>

				<br>
				<button type="submit" class="btn btn-warning">Apply for
					ticket</button>


			</form>
		</div>
	</div>
</div>