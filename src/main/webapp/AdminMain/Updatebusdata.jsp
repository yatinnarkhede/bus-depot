<%@ include file="../Required/database_connect.jsp" %>

<%! String textbsource,textbdestination,textbtime,textbtprice,bid;%>
<%
bid=request.getParameter("textbid");
textbsource=request.getParameter("textbsource");
textbdestination=request.getParameter("textbdestination");
textbtime=request.getParameter("textbtime");
textbtprice=request.getParameter("textbtprice");

PreparedStatement ps=con.prepareStatement("update bus_tbl set bsource=?,bdestination=?,btime=?,bticketprice=? where bid=?");

ps.setString(1,textbsource);
ps.setString(2,textbdestination);
ps.setString(3,textbtime);
ps.setString(4,textbtprice);
ps.setString(5,bid);

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
		location=Buses.jsp;
	else
		location=Buses.jsp;
	</script>
	<%
}
%>
