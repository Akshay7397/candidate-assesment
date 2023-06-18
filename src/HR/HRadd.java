package HR;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HRadd
 */
public class HRadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HRadd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		String uname =request.getParameter("Username");
		String email =request.getParameter("email");
		String pwd =request.getParameter("Password");
		String mobile =request.getParameter("Phone");
		String desig =request.getParameter("designation");
		
		try {
			
			
			
			
			
			Connection con =Connect.getConnect();
			PreparedStatement ps1 =con.prepareStatement("insert into addhr values(?,?,?,?,?,?)");
			ps1.setInt(1,0);
			ps1.setString(2,email);
			ps1.setString(3,pwd);
			ps1.setString(4,uname);
			ps1.setString(5,mobile);
			ps1.setString(6,desig);
			
			
			int i=ps1.executeUpdate();
			
			if(i>0)
			{
				
				response.sendRedirect("AddHr.html");
			}
			else
			{
				response.sendRedirect("hr.html");
			}

		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
