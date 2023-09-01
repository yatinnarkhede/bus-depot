<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Required/database_connect.jsp" %>

<%! String na,em,mb,full,pa,ad,ag,img,aadhar,dob; %>
<% 
na=request.getParameter("textname");
em=request.getParameter("textemail");
mb=request.getParameter("textmobileno");
full=request.getParameter("textfullname");
pa=request.getParameter("textpassword");
ad=request.getParameter("textaddress");
img=request.getParameter("textimage");
img="uploads/"+img;
ag=request.getParameter("textage");
aadhar=request.getParameter("textaadhar");
dob=request.getParameter("textdob");
PreparedStatement ps=con.prepareStatement("update passenger_tbl set pemail=?,pmob=?,pfullname=?,ppass=?,paddress=?,pimage=?,page=?,padharnumber=?,pdob=? where puname=?");
ps.setString(1,em);
ps.setString(2,mb);
ps.setString(3,full);
ps.setString(4,pa);
ps.setString(5,ad);
ps.setString(6, img);
ps.setString(7,ag);
ps.setString(8,aadhar);
ps.setString(9,dob);
ps.setString(10,na);
int x=ps.executeUpdate();
if(x>0)
{
	%>
<script>
	if(confirm("Profile Updated"))
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
else
{
	%>
<script>
	if(confirm("Error in Updation"))
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