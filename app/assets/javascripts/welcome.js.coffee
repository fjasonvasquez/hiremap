# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

initialize = ->
	navigator.geolocation.getCurrentPosition (position) ->
		mapOptions =
			center: new google.maps.LatLng(position.coords.latitude, position.coords.longitude),
			zoom: 15

		map = new google.maps.Map document.getElementById('map-canvas'), mapOptions

google.maps.event.addDomListener window, 'load', initialize
