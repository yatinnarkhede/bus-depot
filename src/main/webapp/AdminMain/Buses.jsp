<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buses Admin | Bus Depo System</title>

</head>
<body>
<%@ include file="../Required/adminheader.html" %>
<%@ include file="../Required/database_connect.jsp" %>
<%
			PreparedStatement ps = con.prepareStatement("select * from bus_tbl;");
			ResultSet rs = ps.executeQuery();
			%>
<div class="container">
		<div class="row shadow-lg p-3 mb-5 bg-white rounded">
			<h3>Bus Details</h3>
			<div class="col-12">
				<table class=table>
					<tr>
						<td colspan=7></td>
					
						<td><a href="addbus.jsp" class="btn btn-info">Add
								Bus</a></td>
								
					</tr>
					<tr>
						<th>Bus Id</th>
						<th>Bus Name</th>
						<th>Bus Source</th>
						<th>Bus Destination</th>
						<th>Bus Time</th>
						<th>Bus Ticket Price</th>
						<th></th>
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
						<td colspan="6"><a href=editbus.jsp?bid=<%=rs.getInt(1)%>
							class="btn btn-warning">Edit</a><a href=deletebus.jsp?bid=<%=rs.getInt(1)%> class="btn btn-danger mx-1">Delete</a></td>
					</tr>
					<%
					}
					%>
				</table>
			</div>
		</div>
	</div>
</body>
</html>