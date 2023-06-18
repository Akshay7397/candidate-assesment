package HR;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddJob
 */
public class AddJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddJob() {
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
		
		String title =request.getParameter("title");
		String desc =request.getParameter("description");
		int sal =Integer.parseInt(request.getParameter("salary"));
		String qual =request.getParameter("qualities");
		String expr =request.getParameter("experiance");
		
		
		try {
			
			Connection con =Connect.getConnect();
			PreparedStatement ps1 =con.prepareStatement("insert into jobs values(?,?,?,?,?,?)");
			ps1.setInt(1,0);
			ps1.setString(2,title);
			ps1.setString(3,desc);
			ps1.setInt(4,sal);
			ps1.setString(5,qual);
			ps1.setString(6,expr);
			
			int i=ps1.executeUpdate();
			
			if(i>0)
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
