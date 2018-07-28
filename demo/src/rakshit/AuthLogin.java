package rakshit;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class AuthLogin
 */
@WebServlet("/AuthLogin")
public class AuthLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		PrintWriter out=response.getWriter();
		String type;
		
		String strunm,strpwd;
		type=request.getParameter("type");
		if(type.equals("tenant"))
		{
			strunm=request.getParameter("txtUnm");
			strpwd=request.getParameter("txtPwd");
			dbhandler objdh=new dbhandler();
			Connection con=objdh.getdbcon();
			try {
				PreparedStatement stmt=con.prepareStatement("select * from tbltenant where unm=? and upwd=?");
				stmt.setString(1, strunm);
				stmt.setString(2, strpwd);
				ResultSet rset=stmt.executeQuery();
				if(rset.next())
				{
					HttpSession session=request.getSession();
					session.setAttribute("unm", strunm);
					
					response.sendRedirect("SearchProperty.jsp");
					//response.sendRedirect(request.getContextPath()+"/Welcome?unm="+strunm+ "&type="+type);
				}
				else
				{
					response.sendRedirect(request.getContextPath()+"/ErrorPage");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		else if(type.equals("owner"))
		{
			strunm=request.getParameter("txtUnm");
			strpwd=request.getParameter("txtPwd");
			dbhandler objdh=new dbhandler();
			Connection con=objdh.getdbcon();
			try {
				PreparedStatement stmt=con.prepareStatement("select * from tblowner where unm=? and upwd=?");
				stmt.setString(1, strunm);
				stmt.setString(2, strpwd);
				ResultSet rset=stmt.executeQuery();
				if(rset.next())
				{
					HttpSession session=request.getSession();
					session.setAttribute("unm", strunm);
					
					response.sendRedirect("OwnerPage.html");
					//RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
					//rd.forward(request, response);
					//response.sendRedirect(request.getContextPath()+"/Welcome?unm="+strunm+ "&type="+type);
				}
				else
				{
					response.sendRedirect(request.getContextPath()+"/ErrorPage");
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
	}
}


			
		
			


