<%@ include file="Required/database_connect.jsp" %>
<div
	class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Pass status</h1>

</div>
<%
			String username=session.getAttribute("username").toString();
			PreparedStatement ps = con.prepareStatement("select * from pass_tbl where pusername=?;");
			ps.setString(1,username);
			ResultSet rs = ps.executeQuery();
			%>
<div class="container my-4">
	<div class="row">
		<div class="col-12">
			<h2>Pass Information</h2>
			<table class=table>
				<tr>
					<th>Id</th>


					<th>Full Name</th>


					<th>Aadhar Number</th>


					<th>Pass Start Date</th>


					<th>Pass End Date</th>


					<th>Pass Status</th>
					
					<th>Pass Print</th>
				</tr>
				
				<%
					while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(8)%></td>
						<td><%=rs.getString(11)%></td>
						<td><a class="btn btn-info" href="viewpass.jsp?passid=<%=rs.getInt(1)%>">View pass</a></td>
						
					</tr>
					<%
					}
					%>
			</table>

		</div>
	</div>
</div>