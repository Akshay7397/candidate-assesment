package HR;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ACandidate
 */
public class ACandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ACandidate() {
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
		
		
		Data.setRange21(request.getParameter("range21"));
		Data.setRange22(request.getParameter("range22"));
		Data.setRange23(request.getParameter("range23"));
		Data.setRange24(request.getParameter("range24"));
		Data.setRange25(request.getParameter("range25"));
		
		
		String cname =Data.getName();
		String mob =Data.getMobile();
		String cemail =Data.getEmail();
		String cpass =Data.getPass();
		String city =Data.getCity();
		String dob =Data.getDob();
		int jid=Data.getJid();
		String title=Data.getTitle();
		
		int r1 =Integer.parseInt(Data.getRange1());
		int r2 =Integer.parseInt(Data.getRange2());
		int r3 =Integer.parseInt(Data.getRange3());
		int r4 =Integer.parseInt(Data.getRange4());
		int r5 =Integer.parseInt(Data.getRange5());
		int r6 =Integer.parseInt(Data.getRange6());
		int r7 =Integer.parseInt(Data.getRange7());
		int r8 =Integer.parseInt(Data.getRange8());
		int r9 =Integer.parseInt(Data.getRange9());
		int r10 =Integer.parseInt(Data.getRange10());
		int r11 =Integer.parseInt(Data.getRange11());
		int r12 =Integer.parseInt(Data.getRange12());
		int r13 =Integer.parseInt(Data.getRange13());
		int r14 =Integer.parseInt(Data.getRange14());
		int r15 =Integer.parseInt(Data.getRange15());
		int r16 =Integer.parseInt(Data.getRange16());
		int r17 =Integer.parseInt(Data.getRange17());
		int r18 =Integer.parseInt(Data.getRange18());
		int r19 =Integer.parseInt(Data.getRange19());
		int r20 =Integer.parseInt(Data.getRange20());
		int r21 =Integer.parseInt(Data.getRange21());
		int r22 =Integer.parseInt(Data.getRange22());
		int r23 =Integer.parseInt(Data.getRange23());
		int r24 =Integer.parseInt(Data.getRange24());
		int r25 =Integer.parseInt(Data.getRange25());
		
		
		int o =((r1+r2+r3+r4+r5)/5);
		int c =((r6+r7+r8+r9+r10)/5);
		int e =((r11+r12+r13+r14+r15)/5);
		int a =((r16+r17+r18+r19+r20)/5);
		int n =((r21+r22+r23+r24+r25)/5);
		
		try
		{
			Connection con= Connect.getConnect();
			PreparedStatement ps1=con.prepareStatement("insert into candi values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps1.setInt(1,0);
			ps1.setString(2,cname);
			ps1.setString(3,mob);
			ps1.setString(4,cemail);
			ps1.setString(5,cpass);
			ps1.setString(6,city);
			ps1.setString(7,dob);
			ps1.setInt(8,jid);
			ps1.setString(9,title);
			ps1.setInt(10,o);
			ps1.setInt(11,c);
			ps1.setInt(12,e);
			ps1.setInt(13,a);
			ps1.setInt(14,n);
			
			int i= ps1.executeUpdate();
			
			if(i>0)
			{
				response.sendRedirect("success.html");
			}
			else
			{
				
				response.sendRedirect("error.html");
			}
			
		
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
		
	}

}
