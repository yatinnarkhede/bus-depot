<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Required/database_connect.jsp" %>
<%! String na,em,mb,pa,ag; %>
<% 
na=request.getParameter("textname");
em=request.getParameter("textemail");
mb=request.getParameter("textmobileno");
pa=request.getParameter("textpassword");
ag=request.getParameter("textage");
PreparedStatement ps=con.prepareStatement("insert into passenger_tbl(puname,pemail,pmob,ppass,page) values(?,?,?,?,?)");
ps.setString(1,na);
ps.setString(2,em);
ps.setString(3,mb);
ps.setString(4,pa);
ps.setString(5,ag);
int x=ps.executeUpdate();
if(x>0)
{
	%>
	<script>
	if(confirm("Registration Successful"))
	{
		location="Login.jsp";
	}
	else
	{
		loaction="Login.jsp"
	}
	</script>
	<%
}
else
{
	%>
	<script>
	if(confirm("Error occured in register"))
	{
		location="Signup.jsp";
	}
	else
	{
		loaction="Signup.jsp"
	}
	</script>
	<%
}
%>