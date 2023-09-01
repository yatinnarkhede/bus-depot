<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Passengers Admin | Bus Depo System</title>
</head>
<body>
<%@ include file="../Required/adminheader.html" %>
<%@ include file="../Required/database_connect.jsp" %>
<%
			PreparedStatement ps = con.prepareStatement("select * from passenger_tbl;");
			ResultSet rs = ps.executeQuery();
			%>
<div class="container">
		<div class="row shadow-lg p-3 mb-5 bg-white rounded">
			<h3>Passengers Details</h3>
			
			<div class="col-12">
				<table class=table>
					<tr>
						<th>Passenger Fullname</th>
						<th>Passenger Address</th>
						<th>Passenger Mobile no</th>
						<th>Passenger Email</th>
						<th>Passenger Image</th>
						<th>Passenger age</th>
					</tr>
					<%
					while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><img src="../<%=rs.getString(9)%>" height=100px
							width=100px></img></td>
						<td><%=rs.getString(7)%></td>
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