<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.101.0">
<title>Dashboard | Bus Depo System</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/dashboard/">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

<!-- Bootstrap core CSS -->
<link href="/docs/4.6/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="dashboard.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/form_val.js"></script>
<%@ include file="../Required/database_connect.jsp" %>

<script>

	function loadProfile() {
		ob = new XMLHttpRequest();
		ob.open("GET", "Myprofile.jsp");
		ob.send();
		ob.onreadystatechange = function() {
			if (ob.readyState == 4)
				document.getElementById("updateFrm").innerHTML = ob.responseText;
			//alert(ob.responseText);
		}
	}

	function searchbuses() {
		ob = new XMLHttpRequest();
		ob.open("GET", "searchbuses.jsp");
		ob.send();
		ob.onreadystatechange = function() {
			if (ob.readyState == 4)
				document.getElementById("updateFrm").innerHTML = ob.responseText;
			//alert(ob.responseText);
		}
	}

	function applypass() {
		ob = new XMLHttpRequest();
		ob.open("GET", "Applypass.jsp");
		ob.send();
		ob.onreadystatechange = function() {
			if (ob.readyState == 4)
				document.getElementById("updateFrm").innerHTML = ob.responseText;
			//alert(ob.responseText);
		}
	}

	function passsatus() {
		ob = new XMLHttpRequest();
		ob.open("GET", "Passsatus.jsp");
		ob.send();
		ob.onreadystatechange = function() {
			if (ob.readyState == 4)
				document.getElementById("updateFrm").innerHTML = ob.responseText;
			//alert(ob.responseText);
		}
	}

	function myticket() {
		ob = new XMLHttpRequest();
		ob.open("GET", "Myticket.jsp");
		ob.send();
		ob.onreadystatechange = function() {
			if (ob.readyState == 4)
				document.getElementById("updateFrm").innerHTML = ob.responseText;
			//alert(ob.responseText);
		}
	}
	
	function myticket() {
		ob = new XMLHttpRequest();
		ob.open("GET", "Myticket.jsp");
		ob.send();
		ob.onreadystatechange = function() {
			if (ob.readyState == 4)
				document.getElementById("updateFrm").innerHTML = ob.responseText;
			//alert(ob.responseText);
		}
	}
	function applyticket(bid) {
		ob = new XMLHttpRequest();
		ob.open("GET", "Applyforticket.jsp?bid="+bid);
		ob.send();
		ob.onreadystatechange = function() {
			if (ob.readyState == 4)
				document.getElementById("updateFrm").innerHTML = ob.responseText;
			//alert(ob.responseText);
		}
	}
	function myfeedback() {
		ob = new XMLHttpRequest();
		ob.open("GET", "feedback.jsp");
		ob.send();
		ob.onreadystatechange = function() {
			if (ob.readyState == 4)
				document.getElementById("updateFrm").innerHTML = ob.responseText;
			//alert(ob.responseText);
		}
	}
	
	
	
	
	
	function searchbus() {
	    var inputName,
	        inputCountry,
	        filterName,
	        filterCountry,
	        table,
	        tr,
	        td,
	        i,
	        name,
	        country;
	    inputFrom = document.getElementById("frombus");
	    inputTo = document.getElementById("tobus");

	    filterFrom = inputFrom.value.toUpperCase();
	    filterTo = inputTo.value.toUpperCase();

	    table = document.getElementById("myTable");
	    tr = table.getElementsByTagName("tr");
	    for (i = 0; i < tr.length; i++) {
	        td = tr[i].getElementsByTagName("td")[2];
	        td1 = tr[i].getElementsByTagName("td")[3];
	        if (td && td1) {
	            from = (td.textContent || td.innerText).toUpperCase();
	            to = (td1.textContent || td1.innerText).toUpperCase();
	            if (
	            		from.indexOf(filterFrom) > -1 &&
	            		to.indexOf(filterTo) > -1
	            ) {
	                tr[i].style.display = "";
	            } else {
	                tr[i].style.display = "none";
	            }
	        }
	    }
	}
	
	
	
	filterSelection("all")
	function filterSelection(c) {
	  var x, i;
	  x = document.getElementsByClassName("filterDiv");
	  if (c == "all") c = "";
	  for (i = 0; i < x.length; i++) {
	    w3RemoveClass(x[i], "show");
	    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
	  }
	}

	function w3AddClass(element, name) {
	  var i, arr1, arr2;
	  arr1 = element.className.split(" ");
	  arr2 = name.split(" ");
	  for (i = 0; i < arr2.length; i++) {
	    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
	  }
	}

	function w3RemoveClass(element, name) {
	  var i, arr1, arr2;
	  arr1 = element.className.split(" ");
	  arr2 = name.split(" ");
	  for (i = 0; i < arr2.length; i++) {
	    while (arr1.indexOf(arr2[i]) > -1) {
	      arr1.splice(arr1.indexOf(arr2[i]), 1);     
	    }
	  }
	  element.className = arr1.join(" ");
	}

	// Add active class to the current button (highlight it)
	var btnContainer = document.getElementById("myBtnContainer");
	var btns = btnContainer.getElementsByClassName("btn");
	for (var i = 0; i < btns.length; i++) {
	  btns[i].addEventListener("click", function(){
	    var current = document.getElementsByClassName("active");
	    current[0].className = current[0].className.replace(" active", "");
	    this.className += " active";
	  });
	}
	
	function calculatePrice(d)
	{
		amount=document.getElementById("tprice").value;
		qty=document.getElementById("tqty").value;
	    price=amount*qty;
	    document.getElementById("tfamount").value=price;
	}
</Script>
<style>
#passtbl{
margin-top:60px;
}
</style>

<div id="google_translate_element"></div>

<script type="text/javascript">
		function googleTranslateElementInit() {
			new google.translate.TranslateElement(
				{pageLanguage: 'en'},
				'google_translate_element'
			);
		}
</script>

	<script type="text/javascript" src="https://translate.google.com/translate_a/element.js?
cb=googleTranslateElementInit"></script>
</head>
<body>

	<nav
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3 text-center"
			href="index.jsp">Bus Depo System</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-toggle="collapse" data-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<span style="color:cyan;">Welcome <%=session.getAttribute("username") %></span>
		<ul class="navbar-nav px-3">
			<li class="nav-item text-nowrap"><a class="nav-link"
				href="Login.jsp">Sign out</a></li>
		</ul>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="sidebar-sticky pt-3">
					<ul class="nav flex-column">
						<li class="nav-item"><a
							class="nav-link active btn btn-primary" href="Dashboard.jsp">
								<span data-feather="home"></span> Dashboard <span
								class="sr-only"></span>
						</a></li>
						<li class="nav-item"><a onClick="searchbuses()"
							class="nav-link btn btn-secondary my-1" href="#"> <span
								data-feather="file"></span> Search buses
						</a></li>
						<li class="nav-item"><a onclick="myticket()"
							class="nav-link btn btn-secondary my-1" href="#"> <span
								data-feather="shopping-cart"></span> My tickets
						</a></li>
						<li class="nav-item"><a onClick="applypass()"
							class="nav-link btn btn-secondary my-1" href="#"> <span
								data-feather="users"></span> Apply for pass
						</a></li>

						<li class="nav-item"><a onclick="passsatus()"
							class="nav-link btn btn-secondary my-1" href="#"> <span
								data-feather="bar-chart-2"></span> Pass status
						</a></li>
						<li class="nav-item"><a onClick="loadProfile()"
							class="nav-link btn btn-secondary my-1" href="#"> <span
								data-feather="layers"></span> My profile
						</a></li>
						<li class="nav-item"><a onClick="myfeedback()"
							class="nav-link btn btn-secondary my-1" href="#"> <span
								data-feather="layers"></span> Feedback
						</a></li>
					</ul>
					<h6
						class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
				</div>
			</nav>

			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4"
				id=updateFrm>
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">Passengers Dashboard</h1>

				</div>
				<div class=container>
					<div class="row my-4">
					<% 
					String username=session.getAttribute("username").toString();
					PreparedStatement ps3 = con.prepareStatement("select count(bid) from bus_tbl;");
			
			ResultSet rs3 = ps3.executeQuery();
			rs3.next();
			%>
						<div class="col-3 offset-1">
							<div
					<%
				String status="Confirm";	
			PreparedStatement ps1 = con.prepareStatement("select count(passid) from pass_tbl where pusername=? and 	pstatus=?;");
			ps1.setString(1,username);
			ps1.setString(2,status);
			ResultSet rs1 = ps1.executeQuery();
			rs1.next();
			
			%>
							
							
								class="card text-white bg-secondary mb-3 animate__animated animate__flipInX"
								style="max-width: 18rem;">
								<div class="card-header">Local Buses</div>
								<div class="card-body">
									<p class="card-text"><%=rs3.getInt(1)%></p>
								</div>
							</div>
						</div>
						<div class="col-3">
							<div
								class="card text-white bg-warning mb-3 animate__animated animate__flip"
								style="max-width: 18rem;">
								<div class="card-header">Pass Generated</div>
								<div class="card-body">

									<p class="card-text"><%=rs1.getInt(1)%></p>
								</div>
							</div>
						</div>
						<div class="col-3">
						<%
						String status1="Confirm";
			PreparedStatement ps2 = con.prepareStatement("select count(tid) from ticket_tbl where tusername=? and tstatus=?;");
			ps2.setString(1,username);
			ps2.setString(2,status1);
			ResultSet rs2 = ps2.executeQuery();
			rs2.next();
			
			%>
							<div
								class="card text-white bg-primary mb-3 animate__animated animate__flipInY"
								style="max-width: 18rem;">
								<div class="card-header">Ticket Generated</div>
								<div class="card-body">

									<p class="card-text"><%=rs2.getInt(1)%></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="container">
				<%
			PreparedStatement ps = con.prepareStatement("select * from bus_tbl;");
			ResultSet rs = ps.executeQuery();
			%>
				
				
					<div class="row  my-4">
						<div class="col-12">
						<h2>Buses</h2>
			<table class="table" id="myTable">
				<tr>
					<th>Bus Id</th>
					<th>Bus Name</th>
					<th>Bus From</th>
					<th>Bus To</th>
					<th>Bus Time</th>
					<th>Bus Price</th>
				</tr>
				<%
					while (rs.next()) {
					%>
					<tr>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
					</tr>
					<%
					}
					%>
			</table>
							</span>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
	

</body>
</html>





