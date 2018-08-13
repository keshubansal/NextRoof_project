package rakshit;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.http.Part;
import javax.servlet.jsp.PageContext;

import java.util.Arrays;
import java.util.LinkedList;

/**
 * Servlet implementation class property
 */
@WebServlet("/property")

@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class property extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public property() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doPost(request, response);
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		 final String SAVE_DIR="images";
		 final String SAVE_DIR1="images1";
		PrintWriter out=response.getWriter();
		String strbtn=request.getParameter("btn");
		if(strbtn!=null)
		{
			if(strbtn.equals("addproperty"))
			{
				HttpSession session=request.getSession(false);
				
				String strname,strdesc, strpropertytype, strbedrooms, strpropsize, strprice, straddress, strstate, strcity,strzipcode;
				String strid,strphoneno;
				strname=(String)session.getAttribute("unm");
				 strdesc=request.getParameter("desc");
				 strid=request.getParameter("id");
				 strphoneno=request.getParameter("phoneno");
				strpropertytype=request.getParameter("propertytype");
				session.setAttribute("type", strpropertytype);
				strbedrooms=request.getParameter("bedrooms");
				strpropsize=request.getParameter("size");
				strprice=request.getParameter("price");
				straddress=request.getParameter("address");
				strstate=request.getParameter("state");
				strcity=request.getParameter("city");
				session.setAttribute("city",strcity);
				strzipcode=request.getParameter("zipcode");
				String strContextPath=request.getParameter("hdn");
				String strContextPath1=request.getParameter("hdn1");
				 
			        String savePath = getServletContext().getRealPath("/")+File.separator + SAVE_DIR;
			        String savePath1=getServletContext().getRealPath("/")+File.separator + SAVE_DIR1;
			        File fileSaveDir=new File(savePath);
	                if(!fileSaveDir.exists()){
	                    fileSaveDir.mkdir();
	                }
	                File fileSaveDir1=new File(savePath1);
	                if(!fileSaveDir1.exists()){
	                    fileSaveDir1.mkdir();
	                }
	                Part part=request.getPart("file");
		            String fileName=extractFileName(part);
		            part.write(savePath + File.separator + fileName);
		            
		            Part part1=request.getPart("file1");
		            String fileName1=extractFileName1(part1);
		            part1.write(savePath1 + File.separator + fileName1);
		            
	            
	            //You need this loop if you submitted more than one file
	                //String fileName= ""; 
	            //for (Part part : request.getParts()) {
	            //fileName = extractFileName(part);
	            //part.write(savePath + File.separator + fileName);
	            //String filePath= savePath + File.separator + fileName;
	       // }

	                String filePath= savePath + File.separator + fileName;
	                String filePath1= savePath1 + File.separator + fileName1;

				String[] amm = request.getParameterValues("checkbox");
				
				String ammenities=Arrays.toString(amm);
				dbhandler objdh=new dbhandler();
				System.out.println("property......");
				
				int maxpropid=objdh.getmaxPropertyid("propertyid", "addproperty");
				//maxpropid=maxpropid+1;
				
				
				System.out.println(maxpropid);
				
				//int intCatid=Integer.parseInt(strcatid);
				
				//int propertyid=Integer.parseInt(maxstrid);
				objdh.addproperty(maxpropid,strname, strdesc, strpropertytype, strbedrooms, strpropsize, strprice, straddress, strstate, strcity, strzipcode, ammenities,fileName,strphoneno,fileName1);
				String s ="<HTML><HEAD><TITLE>MESSAGE</TITLE>"+
						"<SCRIPT LANGUAGE=JavaScript>"+
						 "alert('property added');"+
						 "</SCRIPT>"+
						   "</HEAD><body><br/> <a href='OwnerPage.html'>Back- go to Owner page</a></body>"+
						 
						  "</HTML>";
						 out.print(s);
			
				//response.sendRedirect("AddProperty.jsp");
				 out.println("property added");

			}}
//			
	}
	
	
	 private String extractFileName(Part part) {
	        String contentDisp = part.getHeader("content-disposition");
	        String[] items = contentDisp.split(";");
	        for (String s : items) {
	            if (s.trim().startsWith("filename")) {
	                return s.substring(s.indexOf("=") + 2, s.length()-1);
	            }
	        }
	        return "";
	    }

	 private String extractFileName1(Part part1) {
	        String contentDisp = part1.getHeader("content-disposition");
	        String[] items = contentDisp.split(";");
	        for (String s : items) {
	            if (s.trim().startsWith("filename")) {
	                return s.substring(s.indexOf("=") + 2, s.length()-1);
	            }
	        }
	        return "";
	    }

}
