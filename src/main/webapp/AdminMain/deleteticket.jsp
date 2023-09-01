<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="../Required/database_connect.jsp"%>
<%! String id; %>
<% 
id=request.getParameter("tid");
PreparedStatement ps=con.prepareStatement("delete from ticket_tbl where tid=?");
ps.setString(1,id);
int x= ps.executeUpdate();
if(x>0)
{
	%>
<script>
	if(confirm("Ticket Deleted"))
	{
		location="Admindashboard.jsp";
	}
	else
	{
		location="Admindashboard.jsp";
	}
	</script>
<%
}
else
{
	%>
<script>
	if(confirm("Unable to delete ticket"))
	{
		location="Tickets.jsp";
	}
	else
	{
		loaction="Tickets.jsp"
	}
	</script>

<%
}
%>