<%@ page import="HR.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<head>
<title>Colored  an Admin Panel Category Flat Bootstrap Responsive Website Template | Signup :: w3layouts</title>
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
</head>
<body class="signup-body">



<%
	Data.setJid(Integer.parseInt(request.getParameter("jid")));
	//String title=request.getParameter("title");
	Data.setTitle(request.getParameter("title"));
	
%>


		<div class="agile-signup">	
		
			<div class="content2">
				<div class="grids-heading gallery-heading signup-heading">
					<h2>Register Candidate</h2>
				</div>
				<form action="test.jsp" >
					<input type="text" name="name" value="Enter name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}">
					<input type="text" name="Phone" value="EnterPhone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}">
					<input type="text" name="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
					<input type="password" name="Password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
					<input type="text" name="city" value="Enter city" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}">
					<br><br>
				<label style="margin-right: 553px;">DOB</label><br>
						
					<input style="margin-right: 377px;" type="date" name="dob" value="Enter Dob" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}">
					
					<input type="submit" class="register" value="Add">
				</form>
				<a href="index.html">Back To Home</a>
			</div>
			
			
			
		</div>
	<script src="js/proton.js"></script>
</body>
</html>
