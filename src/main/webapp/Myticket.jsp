<%@ include file="../Required/database_connect.jsp" %>
<div
	class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">My ticket</h1>

</div>
<%
			String username=session.getAttribute("username").toString();
			PreparedStatement ps = con.prepareStatement("select * from ticket_tbl where tusername=?;");
			ps.setString(1,username);
			ResultSet rs = ps.executeQuery();
			
			%>
<div class="container">
<div class="row">
<div class="col-12">
<h2>Ticket details</h2>
			<table class=table>
				<tr>
					<th>Ticket Id</th>


					<th>Ticket QTY</th>


					<th>Ticket Amount</th>


					<th>User</th>


					<th></th>

				</tr>
				
				<%
					while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(9)%></td>
						<td><%=rs.getString(10)%></td>
						<td><%=rs.getString(11)%></td>
						
						<td><a class="btn btn-info" href="viewticket.jsp?bid=<%=rs.getString(2)%>">Get ticket details</a></td>
						
					</tr>
					<%
					}
					%>
			</table>

</div>

</div>

</div>