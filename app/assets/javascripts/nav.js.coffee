
$(document).ready ->
	
		
	speed = 1000
	width = 150
	zoom = 1.75
	
	
	$('ul.nav li li:last-child').addClass('last')
	
	$('ul.nav li').hover (->
		
		$(@).stop().animate({
			width: width + width*zoom
			fontSize: '120%'
		}, speed).siblings().stop().animate({
				width: width - (width*zoom)/($('ul.nav li').length - 1)
				fontsize: '25%'
			}, speed).children().animate({ fontsize: '50%'}, speed)
		
	), ->
		$('ul.nav li').stop().animate({
			width: width
			fontSize: '100%'
		}, speed)






##$(document).ready ->
	
	
	
	
	
	###
	$("<div id=\"navigation_blob\"></div>").css(
	  width: $("#navigation li:first a").width() + 20
	  height: $("#navigation li:first a").height() + 30
	).appendTo "#navigation"
	
	$("#navigation a").hover (->
	  $("#navigation_blob").stop(true, true).animate
	    width: $(this).width() + 20
	    height: $(this).height() + 30
	    left: $(this).position().left
	    duration: "slow"
	    easing: "easeOutElastic"
	), ->
	  leftPosition = $("#navigation li:first a").position().left
	  $("#navigation_blob").stop(true, true).animate
	     left: leftPosition
	     'slow'
     ###
	