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
<title>Tenant Page</title>
<script>
var Category = {
	    Haryana: ["Panipat", "Sonipat", "karnal", "kurukshetra"],
	    Punjab: ["ludhiana", "Chandigarh", "Ambala", "Jalandhar"],
	    Uttarpradesh: ["Noida", "Agra", "Kanpur", "Lucknow"]
	}

	    function changecat(value) {
	        if (value.length == 0) document.getElementById("city").innerHTML = "<option></option>";
	        else {
	            var catOptions = "";
	            for (categoryId in Category[value]) {
	                catOptions += "<option>" + Category[value][categoryId] + "</option>";
	            }
	            document.getElementById("city").innerHTML = catOptions;
	        }
	    }



	
</script>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The Estate Teplate">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
</head>

<body>

<div class="super_container">
	
	<!-- Home -->
	<div class="home">
		
		<!-- Home Slider -->
		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">

				<!-- Home Slider Item -->
				<div class="owl-item home_slider_item">
					<!-- Image by https://unsplash.com/@aahubs -->
					<div class="home_slider_background" style="background-image:url(images/home_slider_bcg.jpg)"></div>
					<div class="home_slider_content_container text-center">
						<div class="home_slider_content">
							<h1 data-animation-in="flipInX" data-animation-out="animate-out fadeOut">find your home</h1>
						</div>
					</div>
				</div>

				<!-- Home Slider Item -->
				<div class="owl-item home_slider_item">
					<!-- Image by https://unsplash.com/@aahubs -->
					<div class="home_slider_background" style="background-image:url(images/home_slider_bcg.jpg)"></div>
					<div class="home_slider_content_container text-center">
						<div class="home_slider_content">
							<h1 data-animation-in="flipInX" data-animation-out="animate-out fadeOut">find your home</h1>
						</div>
					</div>
				</div>

				<!-- Home Slider Item -->
				<div class="owl-item home_slider_item">
					<!-- Image by https://unsplash.com/@aahubs -->
					<div class="home_slider_background" style="background-image:url(images/home_slider_bcg.jpg)"></div>
					<div class="home_slider_content_container text-center">
						<div class="home_slider_content">
							<h1 data-animation-in="flipInX" data-animation-out="animate-out fadeOut">Look For Roommate</h1>
								
						</div>
					</div>
				</div>
			</div>
			
			<!-- Home Slider Nav -->
			<div class="home_slider_nav_left home_slider_nav d-flex flex-row align-items-center justify-content-end">
				<img src="images/nav_left.png" alt="">
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
								<li class="main_nav_item"><a href="login.html">logout</a></li>
							</ul>
						</nav>
						
						
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
								<a href="#">home</a>
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
	
	<!-- Search Box -->

	<div class="search_box">
		<div class="container">
			<div class="row">
				<div class="col">

					<div class="search_box_outer">
						<div class="search_box_inner">

							<!-- Search Box Title -->
							<div class="search_box_title text-center">
								<div class="search_box_title_inner">
									<div class="search_box_title_icon d-flex flex-column align-items-center justify-content-center"><img src="images/search.png" alt=""></div>
									<span>search your next roof</span>
								</div>
							</div>

							<!-- Search Arrow -->
							<div class="search_arrow_box">
								<div class="search_arrow_box_inner">
									<div class="search_arrow_circle d-flex flex-column align-items-center justify-content-center"><span>Search it here</span></div>
									<img src="images/search_arrow.png" alt="">
								</div>
							</div>

							<!-- Search Form -->
							<form class="search_form" action="TenantSearchProperty.jsp" method="post">
								<div class="search_box_container">
									<ul class="dropdown_row clearfix">
										
										<li class="dropdown_item dropdown_item_5">
											<div class="dropdown_item_title">Property Type</div>
											<select name="propertytype" id="property_type" class="dropdown_item_select" required>
												<option>Select Type</option>
				
			                        <option name="type">PG</option>
				
			                   <option>flat-mate</option>
		                    	<option>Rent</option>
			                    <option>Sale</option>
											</select>
										</li>
										
										<li class="dropdown_item dropdown_item_5">
											<div class="dropdown_item_title">state</div>
											<select name="state" id="state" class="dropdown_item_select" onchange="changecat(this.value);" >
				
			 <option value="">Select</option>
	    <option value="Haryana">Haryana</option>
	    <option value="Punjab">Punjab</option>
	    <option value="Uttarpradesh">Uttar pradesh</option>
											</select>
										</li>
										<li class="dropdown_item dropdown_item_5">
											<div class="dropdown_item_title">City</div>
											<select name="city" id="city" class="dropdown_item_select">
												<option value="">Select city</option>
												
											</select>
										</li>
										
									
								

								
									
										<li class="dropdown_item">
											<div class="search_button">
												<input value="search" type="submit" class="search_submit_button">
											</div>
										</li>
</ul>
									
								</div>

								

							</form>
						</div>
					</div>

				</div>
			</div>
		</div>		
	</div>

	

	<!-- Testimonials -->

	<div class="testimonials">
		<div class="testimonials_background_container prlx_parent">
			<div class="testimonials_background prlx" style="background-image:url(images/testimonials_background.jpg)"></div>
		</div>
		<div class="container">

			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h3>clients testimonials</h3>
						<span class="section_subtitle">See our best offers</span>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					
					<div class="testimonials_slider_container">

						<!-- Testimonials Slider -->
						<div class="owl-carousel owl-theme testimonials_slider">
							
							<!-- Testimonials Item -->
							<div class="owl-item">
								<div class="testimonials_item text-center">
									<p class="testimonials_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae neque libero. Vivamus vel interdum massa. Mauris ut felis vel diam pretium eleifend vel eu neque. Mauris a condimentum tortor. Cras nec molestie est. Nulla vel facilisis metus. Quisque tempus fermentum enim, in feugiat sem laoreet</p>
									<div class="testimonial_user">
										<div class="testimonial_image mx-auto">
											<img src="images/person.jpg" alt="https://unsplash.com/@remdesigns">
										</div>
										<div class="testimonial_name">natalie smith</div>
										<div class="testimonial_title">Client in California</div>
									</div>
								</div>
							</div>

							<!-- Testimonials Item -->
							<div class="owl-item">
								<div class="testimonials_item text-center">
									<p class="testimonials_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae neque libero. Vivamus vel interdum massa. Mauris ut felis vel diam pretium eleifend vel eu neque. Mauris a condimentum tortor. Cras nec molestie est. Nulla vel facilisis metus. Quisque tempus fermentum enim, in feugiat sem laoreet</p>
									<div class="testimonial_user">
										<div class="testimonial_image mx-auto">
											<img src="images/person.jpg" alt="https://unsplash.com/@remdesigns">
										</div>
										<div class="testimonial_name">natalie smith</div>
										<div class="testimonial_title">Client in California</div>
									</div>
								</div>
							</div>

							<!-- Testimonials Item -->
							<div class="owl-item">
								<div class="testimonials_item text-center">
									<p class="testimonials_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae neque libero. Vivamus vel interdum massa. Mauris ut felis vel diam pretium eleifend vel eu neque. Mauris a condimentum tortor. Cras nec molestie est. Nulla vel facilisis metus. Quisque tempus fermentum enim, in feugiat sem laoreet</p>
									<div class="testimonial_user">
										<div class="testimonial_image mx-auto">
											<img src="images/person.jpg" alt="https://unsplash.com/@remdesigns">
										</div>
										<div class="testimonial_name">natalie smith</div>
										<div class="testimonial_title">Client in California</div>
									</div>
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- Workflow -->

	<div class="workflow">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h3>see how we operate</h3>
						<span class="section_subtitle">What you need to do</span>
					</div>
				</div>
			</div>

			<div class="row workflow_row">
				<div class="workflow_rocket"><img src="images/rocket.png" alt=""></div>

				<!-- Workflow Item -->
				<div class="col-lg-4 workflow_col">
					<div class="workflow_item">
						<div class="workflow_image_container d-flex flex-column align-items-center justify-content-center">
							<div class="workflow_image_background">
								<div class="workflow_circle_outer trans_200"></div>
								<div class="workflow_circle_inner trans_200"></div>
								<div class="workflow_num text-center trans_200"><span>01.</span></div>
							</div>
							<div class="workflow_image">
								<img src="images/workflow_1.png" alt="">
							</div>
							
						</div>
						<div class="workflow_item_content text-center">
							<div class="workflow_title">Choose a Location</div>
							<p class="workflow_text"></p>
						</div>
					</div>
				</div>

				<!-- Workflow Item -->
				<div class="col-lg-4 workflow_col">
					<div class="workflow_item">
						<div class="workflow_image_container d-flex flex-column align-items-center justify-content-center">
							<div class="workflow_image_background">
								<div class="workflow_circle_outer trans_200"></div>
								<div class="workflow_circle_inner trans_200"></div>
								<div class="workflow_num text-center trans_200"><span>02.</span></div>
							</div>
							<div class="workflow_image">
								<img src="images/workflow_2.png" alt="">
							</div>
							
						</div>
						<div class="workflow_item_content text-center">
							<div class="workflow_title">Find the Perfect Home</div>
							<p class="workflow_text"></p>
						</div>
					</div>
				</div>

				<!-- Workflow Item -->
				<div class="col-lg-4 workflow_col">
					<div class="workflow_item">
						<div class="workflow_image_container d-flex flex-column align-items-center justify-content-center">
							<div class="workflow_image_background">
								<div class="workflow_circle_outer trans_200"></div>
								<div class="workflow_circle_inner trans_200"></div>
								<div class="workflow_num text-center trans_200"><span>03.</span></div>
							</div>
							<div class="workflow_image">
								<img src="images/workflow_3.png" alt="">
							</div>
							
						</div>
						<div class="workflow_item_content text-center">
							<div class="workflow_title">Move in your new life</div>
							<p class="workflow_text"></p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	





<div class="navbar navbar-inverse navbar-fixed-botttom">
<div class="container">
<div class="navbar-text pull-left">
	<p>copyright @  NextRoof 2018</p>
</div>
<div class="navbar-text pull-right " style="padding:2px">
	<a href="#"><i class="fas fa-home fa-3x"></i></a>
	<a href="#"><i class="fab fa-facebook-f fa-3x"></i></a>
	
	<a href="#"><i class="fab fa-twitter fa-3x"></i></a> 
	<a href="#"><i class="fab fa-instagram fa-3x"></i></a> 

</div>
</div>
</div>
	
	
				

				


<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/custom.js"></script>
</body>

</html>