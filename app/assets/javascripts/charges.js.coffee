# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

initPanels = ->
	if (!$('ul.panels').length)
		return
		
	speed = 200
	
	$('ul.panels li li:last-child').addClass('last')
	
	$('ul.panels li').hover ->
		$(@).stop().animate({
			width: '360px'
			fontSize: '150px'
		}, speed)
		.siblings('li').stop().animate({
			width: '135px'
			fontsize: '50px'
		}, speed)
	->
		$(@).stop().animate({
			width: '180px'
			fontSize: '100px'
		}, speed)
		
$(document).ready ->
	initPanels
	