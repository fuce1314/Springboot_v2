/*Gmap Init*/
$(function () {
	"use strict";
	
	/* Map initialization js*/
	if( $('#map_canvas').length > 0 ){	
		var settings = {
			zoom: 16,
			center: new google.maps.LatLng(43.270441,6.640888),
			mapTypeControl: false,
			scrollwheel: false,
			draggable: true,
			panControl:false,
			scaleControl: false,
			zoomControl: false,
			streetViewControl:false,
			navigationControl: false,
			mapTypeId: google.maps.MapTypeId.ROADMAP,
		    styles: [
				{
					"featureType": "landscape.natural.landcover",
					"elementType": "labels.text.stroke",
					"stylers": [
						{
							"visibility": "on"
						}
					]
				}
			]};		
			var map = new google.maps.Map(document.getElementById("map_canvas"), settings);	
			google.maps.event.addDomListener(window, "resize", function() {
				var center = map.getCenter();
				google.maps.event.trigger(map, "resize");
				map.setCenter(center);
			});	
			
			var infowindow = new google.maps.InfoWindow();	
			var companyPos = new google.maps.LatLng(43.270441,6.640888);	
			var companyMarker = new google.maps.Marker({
				position: companyPos,
				map: map,
				title:"Our Office",
				zIndex: 3});	
			google.maps.event.addListener(companyMarker, 'click', function() {
				infowindow.open(map,companyMarker);
			});
	}
	if( $('#map_canvas_1').length > 0 ){	
	var settings = {
		zoom: 16,
		center: new google.maps.LatLng(43.270441,6.640888),
		mapTypeControl: false,
		scrollwheel: false,
		draggable: true,
		panControl:false,
		scaleControl: false,
		zoomControl: false,
		streetViewControl:false,
		navigationControl: false,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		styles: [
		{
			"featureType": "water",
			"elementType": "geometry",
			"stylers": [
				{
					"color": "#e9e9e9"
				},
				{
					"lightness": 17
				}
			]
		},
		{
			"featureType": "landscape",
			"elementType": "geometry",
			"stylers": [
				{
					"color": "#f5f5f5"
				},
				{
					"lightness": 20
				}
			]
		},
		{
			"featureType": "road.highway",
			"elementType": "geometry.fill",
			"stylers": [
				{
					"color": "#ffffff"
				},
				{
					"lightness": 17
				}
			]
		},
		{
			"featureType": "road.highway",
			"elementType": "geometry.stroke",
			"stylers": [
				{
					"color": "#ffffff"
				},
				{
					"lightness": 29
				},
				{
					"weight": 0.2
				}
			]
		},
		{
			"featureType": "road.arterial",
			"elementType": "geometry",
			"stylers": [
				{
					"color": "#ffffff"
				},
				{
					"lightness": 18
				}
			]
		},
		{
			"featureType": "road.local",
			"elementType": "geometry",
			"stylers": [
				{
					"color": "#ffffff"
				},
				{
					"lightness": 16
				}
			]
		},
		{
			"featureType": "poi",
			"elementType": "geometry",
			"stylers": [
				{
					"color": "#f5f5f5"
				},
				{
					"lightness": 21
				}
			]
		},
		{
			"featureType": "poi.park",
			"elementType": "geometry",
			"stylers": [
				{
					"color": "#dedede"
				},
				{
					"lightness": 21
				}
			]
		},
		{
			"elementType": "labels.text.stroke",
			"stylers": [
				{
					"visibility": "on"
				},
				{
					"color": "#ffffff"
				},
				{
					"lightness": 16
				}
			]
		},
		{
			"elementType": "labels.text.fill",
			"stylers": [
				{
					"saturation": 36
				},
				{
					"color": "#333333"
				},
				{
					"lightness": 40
				}
			]
		},
		{
			"elementType": "labels.icon",
			"stylers": [
				{
					"visibility": "off"
				}
			]
		},
		{
			"featureType": "transit",
			"elementType": "geometry",
			"stylers": [
				{
					"color": "#f2f2f2"
				},
				{
					"lightness": 19
				}
			]
		},
		{
			"featureType": "administrative",
			"elementType": "geometry.fill",
			"stylers": [
				{
					"color": "#fefefe"
				},
				{
					"lightness": 20
				}
			]
		},
		{
			"featureType": "administrative",
			"elementType": "geometry.stroke",
			"stylers": [
				{
					"color": "#fefefe"
				},
				{
					"lightness": 17
				},
				{
					"weight": 1.2
				}
			]
		}
	]};		
	var map = new google.maps.Map(document.getElementById("map_canvas_1"), settings);	
	google.maps.event.addDomListener(window, "resize", function() {
		var center = map.getCenter();
		google.maps.event.trigger(map, "resize");
		map.setCenter(center);
	});	
	
	var infowindow = new google.maps.InfoWindow();	
	var companyPos = new google.maps.LatLng(43.270441,6.640888);	
	var companyMarker = new google.maps.Marker({
		position: companyPos,
		map: map,
		title:"Our Office",
		zIndex: 3});	
	google.maps.event.addListener(companyMarker, 'click', function() {
		infowindow.open(map,companyMarker);
	});
}
	if( $('#map_canvas_2').length > 0 ){	
	var settings = {
		zoom: 16,
		center: new google.maps.LatLng(43.270441,6.640888),
		mapTypeControl: false,
		scrollwheel: false,
		draggable: true,
		panControl:false,
		scaleControl: false,
		zoomControl: false,
		streetViewControl:false,
		navigationControl: false,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		 styles: [
		{
			"featureType": "administrative",
			"elementType": "labels.text.fill",
			"stylers": [
				{
					"color": "#444444"
				}
			]
		},
		{
			"featureType": "landscape",
			"elementType": "all",
			"stylers": [
				{
					"color": "#f2f2f2"
				},
				{
					"visibility": "on"
				}
			]
		},
		{
			"featureType": "landscape.natural",
			"elementType": "all",
			"stylers": [
				{
					"visibility": "on"
				}
			]
		},
		{
			"featureType": "poi",
			"elementType": "all",
			"stylers": [
				{
					"visibility": "off"
				}
			]
		},
		{
			"featureType": "road",
			"elementType": "all",
			"stylers": [
				{
					"saturation": -100
				},
				{
					"lightness": 45
				}
			]
		},
		{
			"featureType": "road.highway",
			"elementType": "all",
			"stylers": [
				{
					"visibility": "simplified"
				}
			]
		},
		{
			"featureType": "road.arterial",
			"elementType": "labels.icon",
			"stylers": [
				{
					"visibility": "off"
				}
			]
		},
		{
			"featureType": "transit",
			"elementType": "all",
			"stylers": [
				{
					"visibility": "off"
				}
			]
		},
		{
			"featureType": "water",
			"elementType": "all",
			"stylers": [
				{
					"color": "#68ebb5"
				},
				{
					"visibility": "on"
				}
			]
		}
	]};		
	var map = new google.maps.Map(document.getElementById("map_canvas_2"), settings);	
	google.maps.event.addDomListener(window, "resize", function() {
		var center = map.getCenter();
		google.maps.event.trigger(map, "resize");
		map.setCenter(center);
	});	
	var contentString = '<div id="content-map-marker" style="text-align:left; padding-top:10px; padding-left:10px">'+
		'<div id="siteNotice">'+
		'</div>'+
		'<h6 id="firstHeading" class="firstHeading" style=" margin-bottom:0px;"><strong>Hello Friend!</strong></h4>'+
		'<div id="bodyContent">'+
		'<p style="font-family: Varela Round; color:#adadad; font-size:13px; margin-bottom:10px">Here we are. Come to drink a coffee!</p>'+
		'</div>'+
		'</div>';
	var infowindow = new google.maps.InfoWindow({
		content: contentString
	});	
	
	var companyPos = new google.maps.LatLng(43.270441,6.640888);	
	var companyMarker = new google.maps.Marker({
		position: companyPos,
		map: map,
		title:"Our Office",
		zIndex: 3});	
	google.maps.event.addListener(companyMarker, 'click', function() {
		infowindow.open(map,companyMarker);
	});
}
});