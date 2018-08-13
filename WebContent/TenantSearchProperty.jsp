<%@page import="rakshit.Listproperty"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="rakshit.dbhandler"%>
<%@page import="rakshit.LatLng" %>
<%@page import="rakshit.Listproperty" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> - Listings</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The Estate Teplate">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/listings_styles.css">
<link rel="stylesheet" type="text/css" href="styles/listings_responsive.css">
</head>

<body>

<div class="super_container">
	
	<!-- Home -->
	<div class="home">
		<!-- Image by: https://unsplash.com/@jbriscoe -->
		<div class="home_background" style="background-image:url(images/listings.jpg)"></div>
		
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_content">
						<div class="home_title">
							<h2>listings</h2>
						</div>
						<div class="breadcrumbs">
							<span><a href="TenantPage.jsp">Home</a></span>
							<span><a href="TenantPage.jsp"> Search</a></span>
							<span><a href="#"> Listings</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Header -->

	<header class="header trans_300">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="header_container d-flex flex-row align-items-center trans_300">

						<!-- Logo -->

						<div class="logo_container">
							<a href="#">
								<div class="logo">
									<img src="images/logo.png" alt="">
									<span>Next Roof</span>
								</div>
							</a>
						</div>
						
						<!-- Main Navigation -->

						<nav class="main_nav">
							<ul class="main_nav_list">
								<li class="main_nav_item"><a href="TenantPage.jsp">home</a></li>
								<li class="main_nav_item"><a href="about.html">about us</a></li>
								<li class="main_nav_item"><a href="contact.html">contact</a></li>
							</ul>
						</nav>
						
						<!-- Phone Home -->

						<div class="phone_home text-center">
							<span>+91-8950478823</span>
						</div>
						
						<!-- Hamburger -->

						<div class="hamburger_container menu_mm">
							<div class="hamburger menu_mm">
								<i class="fas fa-bars trans_200 menu_mm"></i>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- Menu -->

		<div class="menu menu_mm">
			<ul class="menu_list">
				<li class="menu_item">
					<div class="container">
						<div class="row">
							<div class="col">
								<a href="index.html">home</a>
							</div>
						</div>
					</div>
				</li>
				<li class="menu_item">
					<div class="container">
						<div class="row">
							<div class="col">
								<a href="about.html">about us</a>
							</div>
						</div>
					</div>
				</li>
				<li class="menu_item">
					<div class="container">
						<div class="row">
							<div class="col">
								<a href="#">listings</a>
							</div>
						</div>
					</div>
				</li>
				<li class="menu_item">
					<div class="container">
						<div class="row">
							<div class="col">
								<a href="news.html">news</a>
							</div>
						</div>
					</div>
				</li>
				<li class="menu_item">
					<div class="container">
						<div class="row">
							<div class="col">
								<a href="contact.html">contact</a>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>

	</header>

	

				<!-- Listings -->
    	<div class="col-lg-8 listings_col"></div>
				<div class="col-lg-8 listings_col">

					<!-- Listings Item -->
					<div class="container-fluid">
 <div class="row">
 <div class="col md-4"></div>
 <div class="col md-4"></div>
 <div class="col md-4"><a  class="btn btn-success" href="Map.jsp">view property on map</a></div>
 </div></div>
					
					
					<%
					String type=request.getParameter("propertytype");
					String city=request.getParameter("city");
					String state=request.getParameter("state");
					
					//out.println(propertyType);
					dbhandler objdh=new dbhandler(); 
					LinkedList<Listproperty> lst=objdh.Searchpropertytable(type,city,state);
					session.setAttribute("list", lst);
					
					String arrAddress[]=new String[lst.size()];
                   	int i=0;
					for(Listproperty p:lst)
    		{
						String Address=p.getStraddress()+" "+p.getStrcity()+" "+p.getStrstate();
		    			arrAddress[i]=Address;
		    			i++;
    		
										
					%>
					
					  
 
 

					<div class="listing_item">
						<div class="listing_item_inner d-flex flex-md-row flex-column trans_300">
							<div class="listing_image_container">
							
							<div class="listing_image">
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
							
								<div class="listing_title"><a href="ListingsSingle.jsp?id1=<%=p.getStraddress()+","+p.getStrcity()+","+p.getStrstate() %>&id2=<%=p.getStrprice() %>&id3=<%=p.getFilename() %>&id5=<%=p.getStrpropertytype()%>&id6=<%=p.getStrpropsize()%>&id7=<%=p.getStrdesc()%>&id8=<%=p.getStrbedrooms()%>&id9=<%=p.getStrzipcode()%>&id10=<%=p.getStrphoneno()%>&id11=<%=p.getFilename1()%>">Owner Name: <%=p.getStrname() %></a></div>
								<div class="listing_title">Location: <%=p.getStrcity()+" "+p.getStrstate() %></div>
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
									
								</div>
							</div>
						</div>
					</div>

					<%
    		}
					session.setAttribute("ssnadd", arrAddress);
    		%>
				</div>

			</div>
			
			 

			
		</div>
	</div>
	

	

	

	

</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/listings_custom.js"></script>
</body>

</html>