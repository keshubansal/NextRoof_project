package rakshit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Authsignup
 */
@WebServlet("/Authsignup")
public class Authsignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Authsignup() {
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
		String strunm,strpwd,strmail;
		String gender,strcity,strcontact;
		String type;
		type=request.getParameter("type");
		if(type.equals("tenant"))
		{
			//out.println("tenant");
		gender=request.getParameter("gender");
		strunm=request.getParameter("txtUnm");
		strpwd=request.getParameter("txtPwd");
		strmail=request.getParameter("txtmail");
		strcity=request.getParameter("txtcity");
		strcontact=request.getParameter("txtmobile");
		dbhandler objdh=new dbhandler();
		objdh.insertIntotbltenant(strunm, strpwd,strmail);
		String s ="<HTML><HEAD><TITLE>MESSAGE</TITLE>"+
				"<SCRIPT LANGUAGE=JavaScript>"+
				 "alert('user registered successfully');"+
				 "</SCRIPT>"+
				   "</HEAD><body><br/> <a href='login.html'>Back- go to login page</a></body>"+
				 
				  "</HTML>";
				 out.print(s);
		//out.println("data inserted for type"+type);
		
		
		
	}
		else if(type.equals("owner"))
		{
			gender=request.getParameter("gender");
			strunm=request.getParameter("txtUnm");
			strpwd=request.getParameter("txtPwd");
			strmail=request.getParameter("txtmail");
			strcity=request.getParameter("txtcity");
			strcontact=request.getParameter("txtmobile");
			dbhandler objdh=new dbhandler();
			objdh.insertIntotblowner(strunm, strpwd, strmail);
			String s ="<HTML><HEAD><TITLE>MESSAGE</TITLE>"+
					"<SCRIPT LANGUAGE=JavaScript>"+
					 "alert('user registered successfully');"+
					 "</SCRIPT>"+
					   "</HEAD><body><br/> <a href='login.html'>Back- go to login page</a></body>"+
					 
					  "</HTML>";
					 out.print(s);
			//out.println("data inserted for type"+type);
			
	
		}


	}

}
