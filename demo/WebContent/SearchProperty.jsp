<%@page import="rakshit.Listproperty"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="rakshit.dbhandler"%>
<%@page import="rakshit.LatLng"%>
<%@page import="rakshit.Listproperty" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#map
{

height:400px;
width:100%;
}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>




</head>
<body>
<div class="container-fluid">
<form action="SearchProperty.jsp" method="post">
<div class="row">
			
		<div class="form-group col-md-4">
			
			<label>Type <span class="text-danger">*</span></label>
			
			<select class="form-control" name="propertytype">
				
			<option>Select Type</option>
				
			<option name="type">PG</option>
				
			<option>flat-mate</option>
			<option>Rent</option>
			<option>Sale</option>
				
			
			</select>
			
		</div>
		
		
		<div class="form-group col-md-4">
			
			<label>City <span class="text-danger">*</span></label>
			
			<select class="form-control" name="city" required>
				
			<option>Select city</option>
				
			<option >Panipat </option>
				
			<option>Chandigarh</option>
			<option>ludhiana</option>
			<option>Karnal</option>
				
			
			</select>
			
		</div>
		</div>
		
		
		<input type="submit" value="Searchproperty" name="btn" class="btn btn-success">
</form>
</div>


<%
   String strbtn=request.getParameter("btn");
if(strbtn!=null)
{
if(strbtn.equals("Searchproperty"))
{
	//String propertyType=(String)session.getAttribute("type");
	String type=request.getParameter("propertytype");
	//String strcity=(String)session.getAttribute("city");
	String city=request.getParameter("city");
	
	//out.println(propertyType);
	dbhandler objdh=new dbhandler(); 
	LinkedList<Listproperty> lst=objdh.Searchpropertytable(type,city);
	//session.setAttribute("list", lst);
	if(lst!=null)
	{
		
	}
	else
	{
		out.println("no....");
	}
	
	%>
	<div class="container">
	<div class="row">
    		<table class="table table-bordered table-hover table-dark">
    		<tr>
    		
    		<th>owner name</th>
    		<th>property desc</th>
    		<th>type</th>
    		<th>bedrooms</th>
    		<th>prop size</th>
    		<th>price</th>
    		<th>address</th>
    		<th>state</th>
    		<th>city</th>
    		<th>zip code</th>
    		<th>ammenities</th>
    		<th>full address</th>
    		<th>image</th>
    		</tr>
   	<%
   	

   	String arrAddress[]=new String[lst.size()];
   	int i=0;
    		for(Listproperty p:lst)
    		{
    			String Address=p.getStraddress()+" "+p.getStrcity()+" "+p.getStrstate();
    			arrAddress[i]=Address;
    			i++;
    			%>
    			<tr>
    			
    			<th><%=p.getStrname() %></th>
    			<th><%=p.getStrdesc() %></th>
    			<th><%=p.getStrpropertytype() %></th>
    			<th><%=p.getStrbedrooms() %></th>
    			<th><%=p.getStrpropsize() %></th>
    			<th><%=p.getStrprice() %></th>
    			<th><%= p.getStraddress()%></th>
    			<th><%=p.getStrstate() %></th>
    			<th><%=p.getStrcity() %></th>
    			<th><%= p.getStrzipcode()%></th>
    			<th><%=p.getAmmenities() %></th>
    			
    			<th><img width=200 height=200 src='${pageContext.request.contextPath}/images/<%=p.getFilename() %>'/></th>
    			</tr>
    			<%
    		}
    		session.setAttribute("ssnadd", arrAddress);
    		
    		
    		%>
    		
    		    		
    		</table>
    		
    		
    		</form>
    		<a href="Map.jsp">view</a>
    		
    		
    		</div>
    		</div>
    		
    		
	<%
}}
%>




</body>
</html>