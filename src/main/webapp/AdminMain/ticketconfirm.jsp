<%@ include file="../Required/database_connect.jsp" %>
<%! String na,update; %>
<% 
na=request.getParameter("tid");
update="Confirm";

PreparedStatement ps=con.prepareStatement("update ticket_tbl set tstatus=? where tid=?");

ps.setString(1,update);
ps.setString(2,na);
int x=ps.executeUpdate();
if(x>0)
{
	response.sendRedirect("Admindashboard.jsp");
}
else
{
	%>
	<script>
	if(confirm("Something is wrong"))
		location=Tickets.jsp;
	else
		location=Tickets.jsp;
	</script>
	<%
}
%>