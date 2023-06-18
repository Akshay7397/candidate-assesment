<%@ page import="HR.*" %>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<head>
<title>Colored  an Admin Panel Category Flat Bootstrap Responsive Website Template | Calendar :: w3layouts</title>
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
	Data.setRange1(request.getParameter("range1"));
	Data.setRange2(request.getParameter("range2"));
	Data.setRange3(request.getParameter("range3"));
	Data.setRange4(request.getParameter("range4"));
	Data.setRange5(request.getParameter("range5"));
	


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
				
				<div class="table-heading">
					<h3>Conscientiousness</h3>
				</div>
				<div class="agile-tables">
					<div class="w3l-table-info">
					  <h3></h3>
					  
					   <form action="test2.jsp">
					    <table id="customers">
						<thead>
						
						 <tr>
						  <th>ID</th>
							<th>Question</th>
							<th>Answer</th>
							
							
							
						  </tr>
						</thead>
						<tbody>
						
						  <tr>
				

							<td> 6</td>
							<td>   I am always prepared. </td>	
							<td> <input type="range" name="range6" value="3" min="1" max="5" oninput="this.nextElementSibling.value=this.value">
							
								<output>3</output>							
							 </td>						
							
						  </tr>
						  
						   <tr>

							<td> 7 </td>
							<td> I leave my belongings around.	
							<td> <input type="range" name="range7" value="3" min="1" max="5" oninput="this.nextElementSibling.value=this.value">
							
								<output>3</output>							
							 </td>						
							
						  </tr>
						  
						   <tr>

							<td> 8</td>
							<td> 	I pay attention to details.</td>	
							<td> <input type="range" name="range8" value="3" min="1" max="5" oninput="this.nextElementSibling.value=this.value">
							
								<output>3</output>							
							 </td>						
							
						  </tr>
						  
						   <tr>

							<td> 9</td>
							<td>I make a mess of things.</td>	
							<td> <input type="range" name="range9" value="3" min="1" max="5" oninput="this.nextElementSibling.value=this.value">
							
								<output>3</output>							
							 </td>						
							
						  </tr>
						  
						   <tr>

							<td> 10 </td>
							<td> I get chores done right away.</td>	
							<td> <input type="range" name="range10" value="3" min="1" max="5" oninput="this.nextElementSibling.value=this.value">
							
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
