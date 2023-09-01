<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Buses | Bus Depo System</title>
</head>
<body>
<%@ include file="../Required/adminheader.html" %>
<%@ include file="../Required/database_connect.jsp" %>
<%! String bid; %>
<% 
bid=request.getParameter("bid");
PreparedStatement ps=con.prepareStatement("select * from bus_tbl where bid=?");
ps.setString(1,bid);
ResultSet rs=ps.executeQuery();
rs.next();
%>

<div class="container">
<div class="row my-4 shadow-lg p-3 mb-5 bg-white rounded">
<div class="col-12">
<form action="Updatebusdata.jsp" method="post">
				<div class="form-group">
					<h3>Edit Buses</h3>
					<hr>
					<label for="exampleInputEmail1">Bus Id</label> <input type="text"
						class="form-control" id="pprice" name=textbid readonly value="<%=rs.getInt(1)%>"
						>
						<small style="color: red;" id=biderror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputEmail1">Bus Name</label> <input type="text"
						class="form-control" name=textbname id=name readonly value="<%=rs.getString(2)%>">
					    <small style="color: red;" id=bnameerror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputEmail1">Bus Source</label> <input type="text"
						class="form-control" id="pprice" name=textbsource required onblur="validateEmpty(this,document.getElementById('bsourceerror'),'Enter bus source')"
						value="<%=rs.getString(3)%>">
						<small style="color: red;" id=bsourceerror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputEmail1">Bus Destination</label> <input type="text"
						class="form-control" name=textbdestination required onblur="validateEmpty(this,document.getElementById('bdestinationerror'),'Enter bus destination')"
							value="<%=rs.getString(4)%>"
						>
						<small style="color: red;" id=bdestinationerror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputPassword1">Bus Time</label> <input
						type="text" class="form-control" name=textbtime value="<%=rs.getString(5)%>" id=txtpassword required onblur="validateNumber(this,document.getElementById('btimeerror'),'Invalid time')">
						<small style="color: red;" id=btimeerror></small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputPassword1">Bus Ticket Price</label> <input
						type="text" class="form-control" name=textbtprice value="<%=rs.getString(6)%>" id=txtpassword required onblur="validateNumber(this,document.getElementById('btpriceerror'),'Invalid ticket price')">
						<small style="color: red;" id=btpriceerror></small>
				</div>
				
			
				
				<button type="submit" class="btn btn-warning">Edit Buses</button>
			</form>
		</div>
	</div>
</div>
</div>
</div>
</body>
</html>