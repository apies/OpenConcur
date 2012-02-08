zebraRows = (selector, className) -> 
	$(selector).removeClass(className).addClass(className)
	
appleFilter = (selector, query) ->
	query = $.trim(query)
	query = query.replace /\ /gi, '|'
	$(selector).each ->
		if $(@).text().search( new RegExp(query, "i")) < 0  
			$(@).hide().removeClass('visible') 
		else 
		    $(@).show().addClass('visible')
		
$(document).ready ->
	zebraRows '#box-table-a tbody tr:odd td', 'odd'
	
	$('#box-table-a tbody tr').addClass('visible')
	
	$('#filter').keyup (event) ->
		if event.key is 27 || $(@).val() is ''
			$(@).val('')
			$('#box-table-a tbody tr').removeClass('visible').show().addClass('visible')
		else
		    appleFilter '#box-table-a tbody tr', $(@).val()
		
		$('.visible td').removeClass('odd')
		zebraRows '.visible:odd td', 'odd'
	
