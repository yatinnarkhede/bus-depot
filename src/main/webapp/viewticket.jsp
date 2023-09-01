<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View ticket | Bus Depo System</title>
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
			na=request.getParameter("bid");
			username=session.getAttribute("username").toString();
			PreparedStatement ps = con.prepareStatement("select * from ticket_tbl where bid=? and tusername=?;");
			ps.setString(1,na);
			ps.setString(2,username);
			ResultSet rs = ps.executeQuery();
			rs.next();
			%>

	<div class="row justify-content-center">
		<div class="col-12 shadow p-3 mb-5 bg-white">
			<h1 class=text-center>Your Ticket Details </h1>
			<hr>
			<p class="text-left text-bold">Ticket No: <%=rs.getInt(1)%></p>
			<p class="text-left ">Bus Time: <%=rs.getInt(3)%></p>
			<p class="text-left ">Ticket status: <%=rs.getString(12)%></p>
			
			<p class="text-right">Name : <%=rs.getString(4)%><span class="text-muted"></span></p>
			<p class="text-right">Ticket QTY : <%=rs.getInt(9)%><span class="text-muted"></span></p>
			<p class="text-right">Bus Source : <%=rs.getString(5)%><span class="text-muted"></span></p>
			
			<p class="text-right">Bus Destination : <%=rs.getString(6)%><span class="text-muted"></span> 
					
			<p class="text-right">Ticket Payment Mode : <%=rs.getString(13)%><span class="text-muted"></span></p>
			<p class="text-right">Ticket Price : <%=rs.getInt(10)%><span class="text-muted"></span></p>
			</div>
			</div>
			</div>
			
</body>
</html>