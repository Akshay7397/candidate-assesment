
<!DOCTYPE html>
<html>
<head>





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
   background-color: white;
   color: black;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: black;
  color: white;
  
  
  
 }
 
 
  body {
  
  background-image: url("5.jpg"); 
background-repeat: no-repeat; 
 background-color: #cccccc;  

/* 	background-color:white */

 } 
</style>
</head>
<body>



<body class="dashboard-page">
<%@ page import="HR.*" %>
<%@ page import="java.sql.*" %>



<%

	Connection con =Connect.getConnect();
	PreparedStatement ps1 = con.prepareStatement("select * from jobs");
	ResultSet rs =ps1.executeQuery();


%>

	<script>
	        var theme = $.cookie('protonTheme') || 'default';
	        $('body').removeClass (function (index, css) {
	            return (css.match (/\btheme-\S+/g) || []).join(' ');
	        });
	        if (theme !== 'default') $('body').addClass(theme);
        </script>
	
			
			
			
		<div class="main-grid" style="margin-left: 150px;">
			<div class="agile-grids">	
				<!-- tables -->
				
				<div class="table-heading">
					<h2 style>View All JObs</h2>
				</div>
				<div class="agile-tables">
					<div class="w3l-table-info">
					  <h3></h3>
					    <table id="customers">
						<thead>
						  <tr>
						  <th>ID</th>
							<th>Title</th>
							<th>description</th>
							<th>salary</th>
							<th>Quality</th>
							<th>Experiance</th>
							<th>Delete</th>
							
							
						  </tr>
						</thead>
						<tbody>
						
						  <tr>
						  
						  <%while(rs.next())
						  { %>
						  
						 <td><%= rs.getInt(1) %></td>
						<td><%= rs.getString(2) %></td> 
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getInt(4) %></td> 
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						<td> <a href="deletejob.jsp?id=<%= rs.getInt(1) %>">Delete</a></td>	
						
						
						 </tr>
						</tbody>
					 
					
						<%} %>
						
					 </table>
					 <br>
					 <form action="Hrsection.html">
				<button class="button button1">Back </button>

				
					 
					 </form> 
				  </div>
			
				 
				  
				</div>
				<!-- //tables -->
			</div>
		</div>
	<section class="wrapper scrollable">
		<nav class="user-menu">
			<a href="javascript:;" class="main-menu-access">
			<i class="icon-proton-logo"></i>
			<i class="icon-reorder"></i>
			</a>
		</nav>
		
	
		
	
</body>
</html>
