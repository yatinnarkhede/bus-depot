<%@ include file="Required/database_connect.jsp"%>

<div
	class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Feedback</h1>
</div>


    


<%
if((request.getParameter("isSubmit") == null)?false:true)
{
	String username=session.getAttribute("username").toString();
    String feedback=request.getParameter("txtFeedback");
    try
	{
		PreparedStatement ps=con.prepareStatement("INSERT INTO feedback_tbl(feedback,username) VALUES (?,?)");
		ps.setString(1,feedback);
		ps.setString(2,username);
		int x=ps.executeUpdate();
		if(x>0)
		{
	%>	
			<script>
			if(confirm("Thank you for your Valueable Feedback!!"))
			{
				location="Dashboard.jsp";
			}
			else
			{
				location="Dashboard.jsp";
			}
			
		</script>	
		<%
			
		}
		else
		{
	%>
			<script>
				if(confirm("Error in Uploading Feedback"))
				{
					location="feedback.jsp";
				}
				else
				{
					location="feedback.jsp";
				}	
			</script>	
	<%
		
		}
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
  
  
}
else{
	%>
	
	<div class="container my-4">
		<div class="row justify-content-center" style="padding-top:10px;">
			<div class="col-6 shadow-none p-3 mb-5 bg-light rounded my-4">
				
				<form action=feedback.jsp id=frmFeedback method=Post>
					
					<div class="form-label mb-2">Your Valuable Words...</div>
					<textarea name=txtFeedback rows=10 cols=50 id=txtFeedback class="form-control mb-2" 
						onblur="validateEmpty(this,document.getElementById('errFeedback'),'Give Feedback')"
						required></textarea> 
						<span id=errFeedback class=text-danger></span>
					<div>
						<br>
					</div>
					<input type=submit name="isSubmit" value="Submit" class="btn btn-info" onclick="addFeedBack()">

				</form>
			</div>


		</div>
	</div>
	
	
	
	<% 
}

%>

  
    
   
        <div class="clearfix"></div>
        <!-- Footer -->


    <!-- /#right-panel -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>

    <!--  Chart js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

    <!--Chartist Chart-->
    <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
    <script src="assets/js/init/weather-init.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
    <script src="assets/js/init/fullcalendar-init.js"></script>

    <!--Local Stuff-->
   </body>
</html>
