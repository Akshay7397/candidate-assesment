<%@ page import="HR.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<head>
<title>Test2</title>
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
	<!-- calendar -->
	<link rel="stylesheet" href="css/monthly.css">
	<!-- //calendar -->
	
	
	<style>

.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {background-color: #4CAF50;} /* Green */
.button2 {background-color: #008CBA;} /* Blue */


#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
	
	
</head>
<body class="dashboard-page">

<%
	Data.setRange6(request.getParameter("range6"));
	Data.setRange7(request.getParameter("range7"));
	Data.setRange8(request.getParameter("range8"));
	Data.setRange9(request.getParameter("range9"));
	Data.setRange10(request.getParameter("range10"));
	


%>

	
	<section class="wrapper scrollable">
		<nav class="user-menu">
			<a href="javascript:;" class="main-menu-access">
			<i class="icon-proton-logo"></i>
			<i class="icon-reorder"></i>
			</a>
		</nav>
		<section class="title-bar">
			<div class="logo">
				<h1><a href="index.html"><img src="images/logo.png" alt="" />Colored</a></h1>
			</div>
			
			
			
			<div class="clearfix"> </div>
		</section>
		<div class="main-grid">
			<div class="agile-grids">	
				<!-- grids -->
				<div class="grids">
					
					<div class="progressbar-heading grids-heading">
						<h2>Candidate Test</h2>
					</div>
					
					<div class="agile-calendar-grid">
						<div class="page">
							
						<div class="main-grid" style="margin-left: 150px;">
			<div class="agile-grids">	
				<!-- tables -->
				
				<div class="table-heading" >
				<h3 style="color:black; " > Extraversion</h3>
				</div>
				<div class="agile-tables">
					<div class="w3l-table-info">
					  <h3></h3>
					  
					   <form action="test3.jsp">
					    <table id="customers">
						<thead>
<!-- 						<h1>Extraversion</h1> -->
						 <tr>
						  <th>ID</th>
							<th>Question</th>
							<th>Answer</th>
							
							
							
						  </tr>
						</thead>
						<tbody>
						
						  <tr>
				

							<td> 11 </td>
							<td>  I am the life of the party.</td>	
							<td> <input type="range" name="range11" value="3" min="1" max="5" oninput="this.nextElementSibling.value=this.value">
							
								<output>3</output>							
							 </td>						
							
						  </tr>
						  
						   <tr>

							<td>12 </td>
							<td> I don't talk a lot.</td>	
							<td> <input type="range" name="range12" value="3" min="1" max="5" oninput="this.nextElementSibling.value=this.value">
							
								<output>3</output>							
							 </td>						
							
						  </tr>
						  
						   <tr>

							<td>13</td>
							<td> 	I feel comfortable around people.</td>	
							<td> <input type="range" name="range13" value="3" min="1" max="5" oninput="this.nextElementSibling.value=this.value">
						
								<output>3</output>							
							 </td>						
							
						  </tr>
						  
						   <tr>

							<td> 14 </td>
							<td> I keep in the background.</td>	
							<td> <input type="range" name="range14"value="3" min="1" max="5" oninput="this.nextElementSibling.value=this.value">
							
								<output>3</output>							
							 </td>						
							
						  </tr>
						  
						   <tr>

							<td> 15 </td>
							<td> I start conversations.</td>	
							<td> <input type="range" name="range15" value="3" min="1" max="5" oninput="this.nextElementSibling.value=this.value">
							
								<output>3</output>							
							 </td>						
							
						  </tr>
						</tbody>
					 
					
						
					 </table>
					 <br>
					
				<button class="button button1">Next </button>

				
					 
					 </form> 
				  </div>
			
				 
				  
				</div>
				<!-- //tables -->
			</div>
		</div>
							
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<!-- //grids -->
			</div>
		</div>

		<!-- footer -->
		
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	
	<!-- calendar -->
	<script type="text/javascript" src="js/monthly.js"></script>
	
	<!-- //calendar -->
	<script src="js/proton.js"></script>

</body>
</html>
