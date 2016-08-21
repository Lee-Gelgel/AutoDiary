<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAFAhJKA0jxjtSun_JTCeMrx7-a1mc57ME&signed_in=true&libraries=places&callback=initMap"
	async defer>
</script>
<script>
var late;
var longit;
var map;
var pos;
	function initMap() {
		
		map = new google.maps.Map(document.getElementById('map'), {
			//center: {lat: -34.397, lng: 150.644},
			zoom : 18
		});
		var infoWindow = new google.maps.InfoWindow({
			map : map
		});
		
		// Try HTML5 geolocation.
		if (navigator.geolocation) {
			    navigator.geolocation.getCurrentPosition(function(position) {
				late = position.coords.latitude;
				longit = position.coords.longitude;
				pos = {
					lat : position.coords.latitude,
					lng : position.coords.longitude
				};
				
				var geocoder = new google.maps.Geocoder();
				var latlng = new google.maps.LatLng(position.coords.latitude,
				position.coords.longitude);
				geocoder.geocode({
					'latLng' : latlng
				}, function(results, status)
				{
					if (status == google.maps.GeocoderStatus.OK) {
						if (results[1]) {
							forAddress.value = results[3].formatted_address;
						}
					} else {
						alert("Geocoder failed due to: " + status);
					}
				});

				infoWindow.setPosition(pos);
				infoWindow.setContent('Location found.');
				map.setCenter(pos);
	
				latitude.value = position.coords.latitude;
				longitude.value = position.coords.longitude;
				
				var d = new Date();
				today.value=d.getFullYear()+"년"+(d.getMonth() + 1)+"월"+d.getDate()+"일";
				totime.value=d.getHours()+"시"+d.getMinutes()+"분";
				
				marking();
			
			}, function() {
				handleLocationError(true, infoWindow, map.getCenter());
			});
		} else {
			// Browser doesn't support Geolocation
			handleLocationError(false, infoWindow, map.getCenter());
		}
		
		function marking(){

			var pyrmont = {lat: pos.lat, lng: pos.lng};
			var service = new google.maps.places.PlacesService(map);
			  service.nearbySearch({
			    location: pyrmont,
			    radius: 50,
			    types: ['building']
			  }, callback);
		}	
	}
	function callback(results, status) {
		  if (status === google.maps.places.PlacesServiceStatus.OK) {
		    for (var i = 0; i < results.length; i++) {
		      createMarker(results[i]);
		    }
		  }
		}

		function createMarker(place) {
		  var placeLoc = place.geometry.location;
		  var marker = new google.maps.Marker({
		    map: map,
		    position: place.geometry.location
		  });

		  google.maps.event.addListener(marker, 'click', function() {
		    infowindow.setContent(place.name);
		    infowindow.open(map, this);
		  });
		}

	function handleLocationError(browserHasGeolocation, infoWindow, pos) {
		infoWindow.setPosition(pos);
		infoWindow
				.setContent(browserHasGeolocation ? 'Error: The Geolocation service failed.'
						: 'Error: Your browser doesn\'t support geolocation.');
	}
</script>

<head>
<title>Geolocation</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<style>
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#map {
	height: 70%;
}
</style>
</head>
<body>
	<div id="map"></div>
	<form action="map" method="post">
		<input type="text" name="latitude" id="latitude"><br/>
		<input type="text" name="longitude" id="longitude"><br/>
		<input type="text" name="forAddress" id="forAddress"><br/>
		<input type="text" name="today" id="today"><br/>
		<input type="text" name="totime" id="totime"><br/>
		<input type="submit" value="고고">
	</form>
</body>
</html>