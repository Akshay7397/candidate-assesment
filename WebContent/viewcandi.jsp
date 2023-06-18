<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="HR.*" %>
<%@ page import="java.sql.*" %>
    
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<head>
<title>Colored  an Admin Panel Category Flat Bootstrap Responsive Website Template | Tables :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Colored Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/screenfull.js"></script>
<script>
	$(function () {
		$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

		if (!screenfull.enabled) {
			return false;
		}

		$('#toggle').click(function () {
			screenfull.toggle($('#container')[0]);
		});	
	});
</script>
<!-- tables -->
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<script type="text/javascript" src="js/jquery.basictable.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });

      $('#table-swap-axis').basictable({
        swapAxis: true
      });

      $('#table-force-off').basictable({
        forceResponsive: false
      });

      $('#table-no-resize').basictable({
        noResize: true
      });

      $('#table-two-axis').basictable();

      $('#table-max-height').basictable({
        tableWrapper: true
      });
    });
</script>
<!-- //tables -->
</head>
<body class="dashboard-page">


<%

	Connection con =Connect.getConnect();
	PreparedStatement ps1 = con.prepareStatement("SELECT * FROM `candi` WHERE `o` >= 3 AND `c` >= 3 AND `e` >= 3 AND `a` >= 3 AND `n` >= 3");
	ResultSet rs =ps1.executeQuery();


%>


	<nav class="main-menu">
		<ul>
			<li>
				<a href="Addjob.html">
					<i class="fa fa-home nav_icon"></i>
					<span class="nav-text">
					Add Jobs
					</span>
				</a>
			</li>
			
				<li>
				<a href="viewjob.jsp">
					<i class="fa fa-bar-chart nav_icon"></i>
					<span class="nav-text">
					View Job
					</span>
				</a>
			</li>
			
			<li>
				<a href="LoginHr.html">
					<i class="fa fa-bar-chart nav_icon"></i>
					<span class="nav-text">
					Delete Job
					</span>
				</a>
			</li>
			
			
				
		
			<li class="has-subnav">
				<a href="job.jsp">
				<i class="fa fa-cogs" aria-hidden="true"></i>
				<span class="nav-text">
				Candidate
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
					<a class="subnav-text" href="viewall.jsp">
					View Candidates
					</a>
					</li>
					<li>
					<a class="subnav-text" href="viewcandi.jsp">
					Shortlist Candidates
					</a>
					</li>
				</ul>
			</li>
			
			
			
			
		</ul>
		<ul class="logout">
			<li>
			<a href="login.html">
			<i class="icon-off nav-icon"></i>
			<span class="nav-text">
			Logout
			</span>
			</a>
			</li>
		</ul>
	</nav>
	<section class="wrapper scrollable">
		<nav class="user-menu">
			<a href="javascript:;" class="main-menu-access">
			<i class="icon-proton-logo"></i>
			<i class="icon-reorder"></i>
			</a>
		</nav>
		<section class="title-bar">
			<div class="logo">
				<h1><a href="index.html"><img src="images/logo.png" alt="" />Candidate </a></h1>
			</div>
			
			
			
			<div class="clearfix"> </div>
		</section>
		<div class="main-grid">
			<div class="agile-grids">	
				<!-- tables -->
				
				<div class="table-heading">
					<h2>Candidate Info</h2>
				</div>
				<div class="agile-tables">
					<div class="w3l-table-info">
					  <h3>Shortlisted Candidates</h3>
					    <table id="table">
						<thead>
						  <tr>
						  <th>CID</th>
							<th>Name</th>
							<th>Mobile</th>
							<th>Email</th>
							<th>City</th>
							<th>DOb</th>
							<th>JOB ID</th>
							<th>Job_Title</th>							
						
						  </tr>
						</thead>
						
						
						
						
						 <%while(rs.next())
						  { %>
						  
						 <td><%= rs.getInt(1) %></td>
						<td><%= rs.getString(2) %></td> 
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td> 
						<td><%=rs.getString(6) %></td>
						<td><%=rs.getString(7) %></td>
						<td><%= rs.getInt(8) %></td>
						<td><%= rs.getString(9) %></td>
						
							
								
						
						
						 </tr>
						</tbody>
					 
					
						<%} %>
						
					 </table>
					 <form action="Hrsection.html">
				
						<button type="submit" class="btn btn-primary" style="align-self: center">BACK</button>

				
					 
					 </form> 
					 <br>
					 
					</div>
				  
			
			

				 

				 

				 

				</div>
				<!-- //tables -->
			</div>
		</div>
		<!-- footer -->
		
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>
