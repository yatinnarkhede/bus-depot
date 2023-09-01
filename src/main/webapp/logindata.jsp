<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Required/database_connect.jsp" %>
<%! String na,pa; %>
<% 
na=request.getParameter("textname");
pa=request.getParameter("textpassword");
PreparedStatement ps=con.prepareStatement("select count(*) from passenger_tbl where puname=? and ppass=?;");
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
		location="Login.jsp";
	}
	else
	{
		location="Login.jsp";
	}
	</script>
	<%
}
else
{
	session.setAttribute("username",na);
	
	%>
	<script>
	if(confirm("Login Successfully"))
	{
		location="Dashboard.jsp";
	}
	else
	{
		loaction="Dashboard.jsp"
	}
	</script>
	<%
}
%>