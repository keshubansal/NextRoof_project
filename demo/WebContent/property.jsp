<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Arrays" %>
<%@page import="rakshit.dbhandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String strbtn=request.getParameter("btn");
if(strbtn!=null)
{
	if(strbtn.equals("addproperty"))
	{
		String strname,strdesc, strpropertytype, strbedrooms, strpropsize, strprice, straddress, strstate, strcity,strzipcode;
		String furnished, gym, security, parking, ac, pet;
		strname=(String)session.getAttribute("unm");
		 strdesc=request.getParameter("desc");
		//out.println("<br>"+strdesc);
		strpropertytype=request.getParameter("propertytype");
		//out.println("<br>"+strpropertytype);
		strbedrooms=request.getParameter("bedrooms");
		//out.println("<br>"+strbedrooms);
		strpropsize=request.getParameter("size");
		//out.println("<br>"+strpropsize);
		strprice=request.getParameter("price");
		//out.println("<br>"+strprice);
		straddress=request.getParameter("address");
		//out.println("<br>"+straddress);
		strstate=request.getParameter("state");
		//out.println("<br>"+strstate);
		strcity=request.getParameter("city");
		//out.println("<br>"+strcity);
		strzipcode=request.getParameter("zipcode");
		//out.println("<br>"+strzipcode);


		String[] amm = request.getParameterValues("checkbox");
		
		String ammenities=Arrays.toString(amm);
		dbhandler objdh=new dbhandler();
		System.out.println("property......");
		//objdh.addproperty(strname, strdesc, strpropertytype, strbedrooms, strpropsize, strprice, straddress, strstate, strcity, strzipcode, ammenities);
		out.println("property added");

	}
	else if(strbtn.equals("display"))
	{
		out.println("display");
		
	}
}

%>

</body>
</html>