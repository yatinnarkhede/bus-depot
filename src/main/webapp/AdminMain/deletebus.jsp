<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="../Required/database_connect.jsp"%>
<%! String id; %>
<% 
id=request.getParameter("bid");
PreparedStatement ps=con.prepareStatement("delete from bus_tbl where bid=?");
ps.setString(1,id);
int x= ps.executeUpdate();
if(x>0)
{
	%>
<script>
	if(confirm("Bus Deleted"))
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
	if(confirm("Unable to delete bus"))
	{
		location="Buses.jsp";
	}
	else
	{
		loaction="Buses.jsp"
	}
	</script>

<%
}
%>