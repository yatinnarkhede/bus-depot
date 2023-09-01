<%@ include file="../Required/database_connect.jsp" %>
<div
	class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Search buses</h1>
</div>

<div class="container">
	<div class="row">
		<div class="col-4 offset-1 ">
			
				<input type="text" class="form-control" id="frombus"
					name=searchbus placeholder="From...">
		</div>
		
		<div class="col-4">
			<input type="text" class="form-control" id="tobus"
					name=searchbus placeholder="To..." >
		</div>
		
		<div class="col-2">
			<button type="submit" class="btn btn-info" onclick="searchbus()">Search</button>
		</div>
		
	</div>
</div>
<%
			PreparedStatement ps = con.prepareStatement("select * from bus_tbl;");
			ResultSet rs = ps.executeQuery();
			%>
		<div class="col-12">
		<h2>Buses</h2>
			<table class="table" id="myTable">
				<tr>
					<th>Bus Id</th>
					<th>Bus Name</th>
					<th>Bus From</th>
					<th>Bus To</th>
					<th>Bus Time</th>
					<th>Bus Price</th>
				</tr>
				<%
					while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td colspan="5"><a class="btn btn-primary"  onclick="applyticket(<%=rs.getInt(1)%>)">Apply for ticket</a></td> 
					</tr>
					<%
					}
					%>
			</table>
		</div>
	