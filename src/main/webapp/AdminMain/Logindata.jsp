<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../Required/database_connect.jsp" %>
<%! String na,pa; %>
<% 
na=request.getParameter("textname");
pa=request.getParameter("textpassword");
PreparedStatement ps=con.prepareStatement("select count(*) from admin where uname=? and upass=?;");
ps.setString(1,na);
ps.setString(2,pa);
ResultSet rs= ps.executeQuery();
rs.next();
int x=rs.getInt(1);
if(x==0)
{
	%>
	<script>
	if(confirm("Either username and password is wrong"))
	{
		location="index.jsp";
	}
	else
	{
		location="index.jsp";
	}
	</script>
	<%
}
else
{
	
	%>
	<script>
	if(confirm("Login Successfully"))
	{
		location="Admindashboard.jsp";
	}
	else
	{
		loaction="Admindashboard.jsp"
	}
	</script>
	<%
}
%>