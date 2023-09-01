<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="../Required/database_connect.jsp"%>
<%! String id; %>
<% 
id=request.getParameter("passid");
PreparedStatement ps=con.prepareStatement("delete from pass_tbl where passid=?");
ps.setString(1,id);
int x= ps.executeUpdate();
if(x>0)
{
	%>
<script>
	if(confirm("Pass Deleted"))
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
	if(confirm("Unable to delete pass"))
	{
		location="Passes.jsp";
	}
	else
	{
		loaction="Passes.jsp"
	}
	</script>

<%
}
%>