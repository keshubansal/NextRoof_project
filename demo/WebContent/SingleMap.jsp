<%@page import="rakshit.LatLng"%>
<%@page import="rakshit.Listproperty" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#map
{

height:400px;
width:100%;
}

</style>
</head>
<body>
<%
String address=(String)session.getAttribute("address");



%>
<h1>my google map </h1>
<div id = "map"></div>
<script>
function initMap()
{
	var options={
			zoom:8,
			center:{lat:29.39268,lng:76.96864}

	}
	var map = new google.maps.Map(document.getElementById('map'),options);
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


</body>
</html>