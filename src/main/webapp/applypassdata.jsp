<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Required/database_connect.jsp" %>

<%! String name,mobilno,dob,adharno,age,pduration,psdate,pedate,pprice,satus,ppaymentmode,username; %>
<% 
username=session.getAttribute("username").toString();
name=request.getParameter("textname");
mobilno=request.getParameter("textmobileno");
dob=request.getParameter("textdob");
adharno=request.getParameter("textaadhar");
age=request.getParameter("textage");
pduration=request.getParameter("textpduration");
psdate=request.getParameter("textsdate");

pedate=request.getParameter("textedate");
pprice=request.getParameter("textpprice");
//satus=request.getParameter("textpstatus");
satus="Not Confirm";
ppaymentmode=request.getParameter("textpayment");
PreparedStatement ps=con.prepareStatement("insert into  pass_tbl(pfullname,pmobileno,pgender,padharnumber,page,pduration,pstartdate,penddate,pprice,pstatus,ppaymentmode,pusername) values(?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,mobilno);
ps.setString(3,dob);
ps.setString(4,adharno);
ps.setString(5,age);
ps.setString(6, pduration);
ps.setString(7,psdate);
ps.setString(8,pedate);
ps.setString(9,pprice);
ps.setString(10,satus);
ps.setString(11, ppaymentmode);
ps.setString(12,username);
int x=ps.executeUpdate();
if(x>0)
{
	%>
<script>
	if(confirm("Succesfully applied for pass"))
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
	if(confirm("Error in application"))
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