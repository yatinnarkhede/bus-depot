<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Pass | Bus Depo System</title>
<link rel="stylesheet" href="//stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin=anonymous>

<script src=//code.jquery.com/jquery-3.3.1.slim.min.js integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin=anonymous></script>

<script src=//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin=anonymous></script>

<script src=//stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin=anonymous></script>

<script src=//code.jquery.com/jquery-3.5.1.slim.js integrity="sha256-DrT5NfxfbHvMHux31Lkhxg42LY6of8TaYyK50jnxRnM=" crossorigin=anonymous></script>
  
<link rel=stylesheet href=../css/bootstrap.min.css>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<link rel=stylesheet href="../css/mystyle.css">
</head>
<body>
<%@ include file="Required/database_connect.jsp" %>
<div class="container my-4"  >
<%!String na,username;  %>
<%
			na=request.getParameter("passid");
			username=session.getAttribute("username").toString();
			PreparedStatement ps = con.prepareStatement("select * from pass_tbl where passid=? and pusername=?;");
			ps.setString(1,na);
			ps.setString(2,username);
			ResultSet rs = ps.executeQuery();
			rs.next();
			%>

	<div class="row justify-content-center">
		<div class="col-12 shadow p-3 mb-5 bg-white">
			<h1 class=text-center>Your Pass Details </h1>
			<hr>
			<p class="text-left text-bold">Pass Id: <%=rs.getInt(1)%></p>
		
			
			
			<p class="text-right">Name: <%=rs.getString(2)%><span class="text-muted"></span></p>
			<p class="text-right">Aadhar no: <%=rs.getString(3)%><span class="text-muted"></span></p>
			<p class="text-right">Mobile no: <%=rs.getString(4)%><span class="text-muted"></span></p>
			
			<p class="text-right">Age: <%=rs.getString(5)%><span class="text-muted"></span> 
					
			<p class="text-right">Gender: <%=rs.getString(6)%><span class="text-muted"></span></p>
			<table class="table">
			<tr>
			<th>Pass Id</th>
			<th>Pass StartDate</th>
			<th>Pass EndDate</th>
			<th>Pass Price</th>
			<th>Pass Duration</th>
			<th>Pass Status</th>
			<th>Pass paymentMode</th>
			</tr>
		
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(8)%></td>
						<td><%=rs.getString(9)%></td>
						<td><%=rs.getString(10)%></td>
						<td><%=rs.getString(11)%></td>
						<td><%=rs.getString(13)%></td>
						
					</tr>
				
			</table>
			</div>
			</div>
			</div>
			

</body>
</html>