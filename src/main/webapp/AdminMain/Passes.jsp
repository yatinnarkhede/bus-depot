<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Passes Admin | Bus Depo System</title>
</head>
<body>
<%@ include file="../Required/adminheader.html" %>
<%@ include file="../Required/database_connect.jsp" %>
<div class="container">
		<div class="row shadow-lg p-3 mb-5 bg-white rounded">
			<h3>Passes Details</h3>
			<div class="col-12">
			<%
			PreparedStatement ps = con.prepareStatement("select * from pass_tbl;");
			ResultSet rs = ps.executeQuery();
			%>
				<table class=table>
					
					<tr>
						<th>Pass Id</th>
						<th>Applicant Name</th>
						<th>Applicant Age</th>
						<th>Start Date</th>
						<th>End Date</th>
						<th>Payment Mode</th>
						<th>Pass Status</th>
						<th>Pass Action</th>
					</tr>
					<%
					while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(8)%></td>
						<td><%=rs.getString(13)%></td>
						<td><%=rs.getString(11)%></td>
						<td><a class="btn btn-warning" href=passconfirm.jsp?passid=<%=rs.getInt(1)%>>Confirm</a>
						<a class=" mx-1 btn btn-danger" href=deletepass.jsp?passid=<%=rs.getInt(1)%>>Delete</a></td>
						
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