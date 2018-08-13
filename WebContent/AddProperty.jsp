<%@page import="rakshit.ICSDAuthenticationSupport"%>
<%@ page import="rakshit.AuthenticationException" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.function.ObjDoubleConsumer"%>
    <%@page import="rakshit.dbhandler" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add your property</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" >
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">

  
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


<style>
</style>
</head>

<body background =".jpg" >
<%
try{
	ICSDAuthenticationSupport.checkAuthentication(request);
	dbhandler objdh=new dbhandler();
	String strunm=(String)session.getAttribute("unm");
	String strtype=request.getParameter("type");
	out.println("welcome "+strunm);




	%>
	<br><br>
	

	<div class="container-fluid">
	  <div class="jumbotron" style="background-color:#D3D3D3">
	    <h1>List Your Property Here..</h1>      
	  </div>
	</div>

	<div class="container-fluid">
	<div class="row">
	  <div class="col-md-3"></div>
	  <div class="col-md-3"></div>
	  <div class="col-md-3"></div>
	  <div class="col-md-3">
	   <a href="Login.html" class="btn btn-info btn-lg">
	          <span class="glyphicon glyphicon-off"></span> Logout </a>
	  </div>
	  <%
	    //session.invalidate();
	  %>
	</div>
	</div>

	<div class="container">



		<div class="row">

			<div class="col-md-12 mx-auto" >      

				<form action="property" method="post" enctype="multipart/form-data">

			<div class="card border-primary mb-8">

					<div class="card-body">
				
					<h3 class="card-title">Property Details</h3>
						<hr>
						
						<div class="form-group">
				
				<label>Property ID <span class="text-danger">*</span></label>
		
						<input disabled name="id" type="text" value=<%=objdh.getmaxPropertyid("propertyid", "addproperty") %> class="form-control" >
		
					   </div>
					   
					
						<div class="form-group">
				
				<label>Owner Name <span class="text-danger">*</span></label>
		
						<input type="text" required class="form-control" value=<%=strunm %>>
		
		
					   </div>
					   
					   <div class="form-group">
				
				<label>Mobile Number <span class="text-danger">*</span></label>
		
						<input type="number"  name="phoneno" required class="form-control" >
		
		
					   </div>
					   
					   
				
			            <div class="form-group">
			
				<label>Property Description <span class="text-danger">*</span></label>
				
				<textarea class="form-control" required name="desc" rows="4" cols="10" required></textarea>
			
				       </div>
						

						<div class="row">
				
			<div class="form-group col-md-4">
				
				<label>Type <span class="text-danger">*</span></label>
				
				<select  required="required" class="form-control" name="propertytype" >
					
				<option>Select Type</option>
					
				<option >PG</option>
					
				<option>flat-mate</option>
				<option>Rent</option>
				<option>Sale</option>
					
				
				</select>
				
			</div>
			<div class="form-group col-md-4">
				
				<label>Bedrooms <span class="text-danger">*</span></label>
				
				<input type="number"  required name="bedrooms"class="form-control" required placeholder="Enter Bedrooms">
				
			</div>
			<div class="form-group col-md-4">
				
				<label>Size <span class="text-danger">*</span></label>
				
				<input type="number" required name="size" class="form-control" placeholder="sq ft">
				
			</div>
				
			</div>
						
					<div class="row">
				
			<div class="form-group col-md-4">
				
				<label>Sale of Rent Price <span class="text-danger">*</span></label>
				
				<input type="number" required name="price"class="form-control" placeholder="Enter Rent Price">
				
			</div>
				
				
			</div>
						

									
			
			</div>
				
	</div>
				
				

				
			
		<div class="card  ">
			
			<div class="card-body ">

	<h3 class="card-title">Ammenities</h3>	
	<hr>		
			<div class="row">
				
				<div class="col-md-4">
					
				<div>
						
				<input type="checkbox" required name="checkbox" value="furnished" id="osahan-checkbox">
						
				<label for="osahan-checkbox">furnished</label>
					
				</div>
					
				<div>
					
					<input type="checkbox" name="checkbox" value="ac" id="osahan-checkbox">
				
						<label for="osahan-checkbox">AC</label>
		
							</div>
					
							
				</div>
					
			<div class="col-md-4">
					
				<div >
					
					<input type="checkbox" name="checkbox" value="gym" id="osahan-checkbox">
					
					<label  for="osahan-checkbox">Gym</label>
			
						</div>
					
				<div>
						
				<input type="checkbox" name="checkbox" value="parking" id="osahan-checkbox">
				
						<label  for="osahan-checkbox">Parking</label>
			
						</div>
						
				
				</div>
				
				<div class="col-md-4">
						
			<div >
						
				<input type="checkbox"   name="checkbox" value="security" id="osahan-checkbox">
						
				<label for="osahan-checkbox">Security</label>
						
			</div>
					
				<div >
						
				<input type="checkbox" name="checkbox" value="pet" id="osahan-checkbox">
					
					<label for="osahan-checkbox">Pet friendly</label>
					
				</div>
					
				</div>
				
			</div>
			
			</div>
			
		</div>	
		
				
		
			
				<div class="card">
			
			<div class="card-body">
		
	<h3 class="card-title">Upload Images</h3>
	<hr>		
			<div class="row">
				
				<div class="col-md-4">
					
				<div class="fuzone">
					
					<div class="fu-text">
						
					<span><i class="mdi mdi-image-area"></i> Click here or drop files to upload</span>
			
							</div>
						
				<input class="upload" required type="file" name="file">
					
				</div>
					
			</div>
				
				<div class="col-md-4">
						
			<div class="fuzone">
						
				<div class="fu-text">
						
					<span><i class="mdi mdi-image-area"></i> Click here or drop files to upload</span>
						
				</div>
						
				<input class="upload" type="file" name="file1">
					
				</div>
					
			</div>
					
			<div class="col-md-4">
					
				<div class="fuzone">
						
				<div class="fu-text">
						
					<span><i class="mdi mdi-image-area"></i> Click here or drop files to upload</span>
						
				</div>
					
					<input class="upload" type="file" name="file">
				
					</div>
					
			</div>
				
			</div>
			
			</div>
			
		</div>		
			
		
				
		
			<div class="card ">
			
			<div class="card-body">

			<h3 class="card-header">Location</h3>
		
	<hr>		
			<div class="row">
				
			<div class="form-group col-md-4">
					
			<label>Address <span class="text-danger">*</span></label>
					
			<input type="text" required name="address" class="form-control" placeholder="Enter Address">
				
			</div>
				
				
			<div class="form-group col-md-4">
					
			<label>State <span class="text-danger">*</span></label>
				<br>
			<label><select required name="state" id="state" onchange="changecat(this.value);">
	    <option value="">Select</option>
	    <option value="Haryana">Haryana</option>
	    <option value="Punjab">Punjab</option>
	    <option value="Uttarpradesh">Uttar pradesh</option>
	</select></label>
				
			</div>
					
			<div class="form-group col-md-4">
				
				<label>City <span class="text-danger">*</span></label>
				<br>
				
			<label><select name="city" id="city" >
	    <option value="">Select</option>
	</select>		</label>
				
			</div>
			</div>
				<div class="row">
			<div class="form-group col-md-4">
					
			<label>Zip/Postal Code <span class="text-danger">*</span></label>
					
			<input type="number"  required name="zipcode" class="form-control" placeholder="Enter Zip/Postal">
					
		</div>
				</div>
				
			</div>
		

		</div>
			
		</div>		
				
			
		
				<input type="submit" value="addproperty" name="btn" class="btn btn-success">
				<!-- <input type="submit" value="display" name="btn" class="btn btn-info"> -->
				
		 <%-- ${pageContext.request.contextPath}/images/BGFnl.jpg --%>
	        <input type="hidden" value=${pageContext.request.contextPath} 
	                          name="hdn"  required>
	  <input type="hidden" value=${pageContext.request.contextPath} 
	                          name="hdn1"  required>
	
	<!--C:\Users\RAKSHIT MITTAL\eclipse-workspace\demo\WebContent\images
	 -->    
	    
			</form>
			<a href="displayProperty.jsp">Display</a>
			
	</div>

		</div>

	</div>









	<div class="navbar navbar-inverse navbar-fixed-botttom">
	<div class="container">
	<div class="navbar-text pull-right">
		<p>copyright @  NextRoof 2018</p>
	</div>
	<div class="navbar-text pull-left" style="padding:2px">
		<a href="#"><i class="fas fa-home fa-3x"></i></a>
		<a href="#"><i class="fab fa-facebook-f fa-3x"></i></a>
		
		<a href="#"><i class="fab fa-twitter fa-3x"></i></a> 
		<a href="#"><i class="fab fa-instagram fa-3x"></i></a> 

	</div>
	</div>
	</div>
<% }



catch (AuthenticationException e1) {
	// TODO Auto-generated catch block
	%>
	out.println("<p><a href='login.html'>" +e1.getMessage()+"</a></p>");
	
	 e1.printStackTrace();
	 <%
}
%>



</body>
</html>