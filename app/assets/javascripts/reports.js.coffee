# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


#$(document).ready(function () {

$(document).ready ->
	$('#reportsListAll h3').next().hide()
	
	$('#reportsListAll h3').click -> 
	  $(this).next().animate(
		    { 'height': 'toggle' }, 'slow', 'easeOutBounce' )
	
	
	
		
