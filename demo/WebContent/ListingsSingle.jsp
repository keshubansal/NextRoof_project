<%@page import="rakshit.LatLng"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>- Listings Single</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The Estate Teplate">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link href="plugins/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/listings_single_styles.css">
<link rel="stylesheet" type="text/css" href="styles/listings_single_responsive.css">
</head>

<body>

<div class="super_container">
	
	<!-- Home -->
	<div class="home">
		<!-- Image by: https://unsplash.com/@jbriscoe -->
		<div class="home_background" style="background-image:url(images/listings_single.jpg)"></div>
		
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_content">
						<div class="home_title">
							<h2>single listings</h2>
						</div>
						<div class="breadcrumbs">
							<span><a href="TenantPage.jsp">Home</a></span>
							<span><a href="TenantPage.jsp"> Search</a></span>
							<span><a href="TenantSearchProperty.jsp"> Listings</a></span>
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
							<span>+91-8959478823</span>
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
								<a href="listings.html">listings</a>
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

	<!-- Listing -->
	<%
	  //String list=(String)session.getAttribute("list");
	//out.println(list);
	%>

	<div class="listing">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					
					<!-- Listing Title -->
					<%
					 String location=request.getParameter("id1");
					String zipcode=request.getParameter("id9");
					String price=request.getParameter("id2");
					String file=request.getParameter("id3");
					String ammenities=request.getParameter("id4");
					String type=request.getParameter("id5");
					String size=request.getParameter("id6");
					String desc=request.getParameter("id7");
					String bedrooms=request.getParameter("id8");
					String phoneno=request.getParameter("id10");
					String file1=request.getParameter("id11");
					
					session.setAttribute("address", location);
					%>
					
					<div class="listing_title_container">
						<div class="listing_title"><%=location%></div>
						<div class="room_tags">
							<span class="room_tag">Ammenities: <%=ammenities %></span>
							
						</div>
					</div>
				</div>
				
				<!-- Listing Price -->
				<div class="col-lg-4 listing_price_col clearfix">
					<div class="featured_card_box d-flex flex-row align-items-center trans_300 float-lg-right">
						<img src="images/tag.svg" alt="https://www.flaticon.com/authors/lucy-g">
						<div class="featured_card_box_content">
							<div class="featured_card_price_title trans_300">For <%=type %></div>
							<div class="featured_card_price trans_300">Rs.<%=price %></div>
						</div>
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col">
					
					<!-- Listing Image Slider -->

					<div class="listing_slider_container">
						<div class="owl-carousel owl-theme listing_slider">
							
							<!-- Listing Slider Item -->
							<div class="owl-item listing_slider_item">
								<img src="${pageContext.request.contextPath}/images/<%=file %>" alt="https://unsplash.com/@astute">
							</div>

							<!-- Listing Slider Item -->
							<div class="owl-item listing_slider_item">
								<img src="${pageContext.request.contextPath}/images1/<%=file1 %>" alt="https://unsplash.com/@astute">
							</div>

							<!-- Listing Slider Item -->
							<div class="owl-item listing_slider_item">
								<img src="images/listing_slider_1.jpg" alt="https://unsplash.com/@astute">
							</div>

							
							
						</div>

						<div class="listing_slider_nav listing_slider_prev d-flex flex-row align-items-center justify-content-center trans_200">
							<img src="images/nav_left.png" alt="">
						</div>

						<div class="listing_slider_nav listing_slider_next d-flex flex-row align-items-center justify-content-center trans_200">
							<img src="images/nav_right.png" alt="">
						</div>

					</div>

				</div>
			</div>
					

			

					
				<!-- Listing -->

				<div class="col-lg-8 listing_col">

					<div class="listing_details">
						<div class="listing_subtitle">Facilities</div>
						<p class="listing_details_text"></p>
						<div class="rooms">

							<div class="room">
								<span class="room_title">Bedrooms</span>
								<div class="room_content">
									<div class="room_image"><img src="images/bedroom.png" alt=""></div>
									<span class="room_number"><%=bedrooms %></span>
								</div>
							</div>

							

							<div class="room">
								<span class="room_title">Area</span>
								<div class="room_content">
									<div class="room_image"><img src="images/area.png" alt=""></div>
									<span class="room_number"><%=size %> Sq Ft</span>
								</div>
							</div>

							
						</div>
						
					</div>
					
					<!-- Listing Description -->
					<div class="listing_description">
						<div class="listing_subtitle">Description</div>
						<p class="listing_description_text"><%=desc %></p>
					</div>
					
					<!-- Listing Additional Details -->
					<div class="listing_additional_details">
						<div class="listing_subtitle">Additional Details</div>
						<ul class="additional_details_list">
							<li class="additional_detail"><span>Mobile: <%=phoneno %></span> </li>
							<li class="additional_detail"><span>Address: <%=location+","+zipcode %></span></li>
							
						</ul>
					</div>
					
					

					<!-- Listing Map -->
					<style>
					#map1
{

height:400px;
width:100%;
}
</style>
					
					
					<%
String address=(String)session.getAttribute("address");



%>
<h1>my google map </h1>
<div id = "map1"></div>
<script>
function initMap()
{
	var options={
			zoom:8,
			center:{lat:29.39268,lng:76.96864}

	}
	var map = new google.maps.Map(document.getElementById('map1'),options);
<%
	LatLng obj=new LatLng();
	
   
	   
   
 	String str[]=obj.getLatLongPositions(address);
 %>	


 addMarker({ coords:{lat:<%=str[0]%>,lng:<%=str[1]%>},
	iconImage:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
	content:'<h1>panipat</h1>'
    
});
	
//var map = new google.maps.Map(document.getElementById('map'),options);
		//map:map,
	
	
	
	
	//});
	
	
	
	
	//addMarker({ coords:{lat:29.6405:,lng:77.3118}});
	function addMarker(props)
	{
		var marker=new google.maps.Marker({position:props.coords,
			map:map,
			//iconImage:props.iconImage
			content:'<h1>markers content</h1>'
		
		
		
		
		});
		if(props.iconImage)
			{
			marker.setIcon(props.iconImage);
			}
		if(props.content)
			{
			var infoWindow = new google.maps.InfoWindow({
			content:props.coords,
			map:map
			});
			marker.addListener('click',function(){
				infoWindow.open(map,marker);
			});
			}
	}
	}
</script>
 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCxQh_r3Jr8VtJvJdcei-JFaPfm_KKU5VE&callback=initMap"
    async defer></script>
					
					
						<!-- Newsletter -->

	
	<!-- Footer -->

	<!-- Credits -->

	
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/listings_single_custom.js"></script>
</body>

</html>