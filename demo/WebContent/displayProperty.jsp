<%@page import="java.util.LinkedList"%>
<%@page import="rakshit.dbhandler"%>
<%@page import="rakshit.Listproperty" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The Estate Teplate">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/listings_styles.css">
<link rel="stylesheet" type="text/css" href="styles/listings_responsive.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>property listings</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<!-- Listings -->
    	

					<!-- Listings Item -->
					<div class="container-fluid">
<%
dbhandler objdh=new dbhandler();
String strunm=(String)session.getAttribute("unm");

LinkedList<Listproperty> lst=objdh.getpropertytable(strunm);
    		%>
    		<form action="deleteProperty.jsp" method="post">
    				
   	<%
   	
    		for(Listproperty p:lst)
    		{
    			String str=p.getStrcity()+p.getStrstate();
    			
    			%>
    			<div>
    			
    			<div class="listing_item">
						<div class="listing_item_inner d-flex flex-md-row flex-column trans_300">
							<div class="listing_image_container">
								<div class="listing_image">
									<!-- Image by: https://unsplash.com/@breather -->
									<div class="listing_background" style="background-image:url('${pageContext.request.contextPath}/images/<%=p.getFilename() %>')"></div>
								</div>
								<div class="featured_card_box d-flex flex-row align-items-center trans_300">
									<img src="images/tag.svg" alt="https://www.flaticon.com/authors/lucy-g">
									<div class="featured_card_box_content">
										<div class="featured_card_price_title trans_300">For <%=p.getStrpropertytype() %></div>
										<div class="featured_card_price trans_300">Rs. <%=p.getStrprice() %></div>
									</div>
								</div>
							</div>
							<div class="listing_content">
							
								<div class="listing_title"><a href="">Owner Name: <%=p.getStrname() %></a></div>
								<div class="listing_title">Location: <%=p.getStraddress()+","+p.getStrcity()+" "+p.getStrstate() %></div>
								<div class="listing_text">Contact Number: <%=p.getStrphoneno() %></div>
								<div class="listing_text">Description: <%=p.getStrdesc() %></div>
								
								<div class="rooms">

									<div class="room">
										<span class="room_title">Bedrooms</span>
										<div class="room_content">
											<div class="room_image"><img src="images/bedroom.png" alt=""></div>
											<span class="room_number"><%=p.getStrbedrooms() %></span>
										</div>
									</div>

									

									<div class="room">
										<span class="room_title">Area</span>
										<div class="room_content">
											<div class="room_image"><img src="images/area.png" alt=""></div>
											<span class="room_number"><%=p.getStrpropsize() %> Sq Ft</span>
										</div>
									</div>

								</div>

								<div class="room_tags">
									<span><b>Ammenities: </b></span><span class="room_tag"><a href="#"><%=p.getAmmenities() %></a></span>
									<p class="card-text"><input type="checkbox" name="chb" value=<%=p.getPropertyid()%>></p>
								</div>
							</div>
							
						</div>
					</div>
    </div>
  </div>
  
  </div>
<%
   }
  %>		
   <button type="Submit" name="btn" value="deletePropery" class="btn btn-danger btn-sm">
   <span class="glyphicon glyphicon-remove"></span> Delete
   </button>
    		
    		
   </form>
    		
    		
    </div>
   </div>
    </div>
   </div>
   </div>
    	
</body>
</html>