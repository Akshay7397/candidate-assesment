<%@ page import="HR.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>


<%

//int id =Integer.parseInt(request.getParameter("id"));

String email= request.getParameter("email");
System.out.println(email);
Connection con =Connect.getConnect();
PreparedStatement ps1 =con.prepareStatement("delete from addhr where email=? ");
//ps1.setInt(1, id);

ps1.setString(1,email);
   int i=ps1.executeUpdate();
   if(i>0)
   {
	   response.sendRedirect("viewhr.jsp");
   }
   else
   {
	   response.sendRedirect("error.html");
   }
   %>

</body>
</html>