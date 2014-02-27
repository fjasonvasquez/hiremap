# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

initialize = ->
	navigator.geolocation.getCurrentPosition (position) ->
		mapOptions =
			center: new google.maps.LatLng(position.coords.latitude, position.coords.longitude),
			zoom: 15

		map = new google.maps.Map document.getElementById('map-canvas'), mapOptions

	onBoundsChanged = ->
		bounds = map.getBounds()
		console.log("https://api.hiremap.com/startups?sw[0]=#{bounds.ga.b}&sw[1]=#{bounds.ta.b}&ne[0]=#{bounds.ga.d}&ne[1]=#{bounds.ta.d}")

	google.maps.event.addListener window, 'bounds_changed', onBoundsChanged

google.maps.event.addDomListener window, 'load', initialize
