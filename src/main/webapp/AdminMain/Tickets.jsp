<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tickets Admin | Bus Depo System</title>
</head>
<body>
<%@ include file="../Required/adminheader.html" %>
<%@ include file="../Required/database_connect.jsp" %>
<%
			PreparedStatement ps = con.prepareStatement("select * from ticket_tbl;");
			ResultSet rs = ps.executeQuery();
			%>
			
			<div class="container">
		<div class="row shadow-lg p-3 mb-5 bg-white rounded">
			<h3>Tickets Details</h3>
			<div class="col-12">
				<table class=table>
					<tr>
						
						<th>Bus Id</th>
						<th>Applicant Name</th>
						<th>Applicant Age</th>
						<th>Bus Source</th>
						<th>Bus Destination</th>
						<th>Payment Mode</th>
						<th>Ticket Status</th>
						<th>Ticket Action</th>
					</tr>
					<%
					while (rs.next()) {
					%>
					<tr>
					
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(13)%></td>
						<td><%=rs.getString(12)%></td>
						<td><a class="btn btn-warning" href=ticketconfirm.jsp?tid=<%=rs.getInt(1)%>>Confirm</a>
						<a class=" mx-1 btn btn-danger" href=deleteticket.jsp?tid=<%=rs.getInt(1) %>>Delete</a></td>
						
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