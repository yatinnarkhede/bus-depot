<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Required/database_connect.jsp" %>

<%! String name,busid,age,gender,busfrom,busto,qty,tprice,payment,status,username,btime; %>
<% 
username=session.getAttribute("username").toString();;
name=request.getParameter("textname");
busid=request.getParameter("textbusid");
age=request.getParameter("textage");
gender=request.getParameter("textgender");
busfrom=request.getParameter("textsdate");
busto=request.getParameter("textbusto");
qty=request.getParameter("textqty");
status="Not Confirm";
tprice=request.getParameter("textpstatus");
payment=request.getParameter("textpayment");
btime=request.getParameter("textbustime");

PreparedStatement ps=con.prepareStatement("insert into  ticket_tbl(puname,bid,page,pgender,bsource,bdestination,btqty,bticketprice,tpaymentmode,tstatus,tusername,btime) values(?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,busid);
ps.setString(3,age);
ps.setString(4,gender);
ps.setString(5,busfrom);
ps.setString(6,busto);
ps.setString(7,qty);
ps.setString(8,tprice);
ps.setString(9,payment);
ps.setString(10,status);
ps.setString(11,username);
ps.setString(12,btime);
int x=ps.executeUpdate();
if(x>0)
{
	%>
<script>
	if(confirm("Succesfully applied for ticket"))
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
	if(confirm("Error in applying"))
	{
		location="Applyforticket.jsp";
	}
	else
	{
		loaction="Applyforticket.jsp"
	}
	</script>
<%
}
%>