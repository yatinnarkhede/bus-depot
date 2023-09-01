<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedbacks Admin | Bus Depo System</title>
</head>
<body>
<%@ include file="../Required/adminheader.html" %>
<%@ include file="../Required/database_connect.jsp" %>
<%
			PreparedStatement ps = con.prepareStatement("select * from feedback_tbl;");
			ResultSet rs = ps.executeQuery();
			%>
		<div class="container">
		<div class="row shadow-lg p-3 mb-5 bg-white rounded">
			<h3>Feedback Details</h3>
			<div class="col-12">
				<table class=table>
					<tr>
					<th>Passenger's Feebacks</th>
					<th>Username</th>
					</tr>
					<%
					while (rs.next()) {
					%>
					<tr>
					
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
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