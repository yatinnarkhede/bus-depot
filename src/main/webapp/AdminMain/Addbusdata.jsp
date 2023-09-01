<%@ include file="../Required/database_connect.jsp" %>
<%! String textbid,textbname,textbsource,textbdestination,textbtime,textbtprice;%>
<%
textbname=request.getParameter("textbname");
textbsource=request.getParameter("textbsource");
textbdestination=request.getParameter("textbdestination");
textbtime=request.getParameter("textbtime");
textbtprice=request.getParameter("textbtprice");

PreparedStatement ps=con.prepareStatement("insert into bus_tbl(bname,bsource,bdestination,btime,bticketprice)values(?,?,?,?,?)");

ps.setString(1,textbname);
ps.setString(2,textbsource);
ps.setString(3,textbdestination);
ps.setString(4,textbtime);
ps.setString(5,textbtprice);


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
		location=addbus.jsp;
	else
		location=addbus.jsp;
	</script>
	<%
}
%>