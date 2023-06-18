<%@ page import="HR.*" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<%



int id= Integer.parseInt(request.getParameter("id"));
//System.out.println(email);
Connection con =Connect.getConnect();
PreparedStatement ps1 =con.prepareStatement("DELETE FROM jobs where jid=?");
ps1.setInt(1, id);

//ps1.setString(1,email);
   int i=ps1.executeUpdate();
   if(i>0)
   {
	   response.sendRedirect("viewjob.jsp");
   }
   else
   {
	   response.sendRedirect("error.html");
   }
   %>

</body>
</html>