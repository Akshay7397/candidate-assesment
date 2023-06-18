package HR;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HRlogin
 */
public class HRlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HRlogin() {
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
		
		
		String email =request.getParameter("email");
		String pwd =request.getParameter("Password");
		
		try {
		
			
			Connection con =Connect.getConnect();
			PreparedStatement ps1 =con.prepareStatement(" select * from addhr where email=? and password=?");
			ps1.setString(1, email);
			ps1.setString(2, pwd);
			
			ResultSet rs =ps1.executeQuery();
			
			if(rs.next())
			{
				
				response.sendRedirect("Hrsection.html");
			}
			else
			{
				response.sendRedirect("error.html");
			}
			
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
