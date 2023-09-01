<%@ include file="../Required/database_connect.jsp" %>
<%! String na,update; %>
<% 
na=request.getParameter("passid");
update="Confirm";

PreparedStatement ps=con.prepareStatement("update pass_tbl set pstatus=? where passid=?");

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
		location=Passes.jsp;
	else
		location=Passes.jsp;
	</script>
	<%
}
%>