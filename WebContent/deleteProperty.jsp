<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="rakshit.dbhandler" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
   String strSelectedRows[]=request.getParameterValues("chb");
    for(String str:strSelectedRows)
    {
    	out.println(str);
    }
    dbhandler objdh=new dbhandler();
    objdh.deleteMultipleRows(strSelectedRows);
    
    String s ="<HTML><HEAD><TITLE>MESSAGE</TITLE>"+
			"<SCRIPT LANGUAGE=JavaScript>"+
			 "alert('property deleted');"+
			 "</SCRIPT>"+
			   "</HEAD><body><br/> <a href='OwnerPage.html'>Back- go to Owner page</a></body>"+
			 
			  "</HTML>";
			 out.print(s);

    //out.println(" sel rows deleted ");
%>


</body>
</html>