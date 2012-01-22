// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require jquery.easing.1.3
//= require nav
//= require_tree .


//using the clever table code from http://net.tutsplus.com/tutorials/javascript-ajax/using-jquery-to-manipulate-and-filter-data/, will re-write in coffee script soon


/*function zebraRows(selector, className)
{
	$(selector).removeClass(className).addClass(className);
}


function filter(selector, query) {  
  query =   $.trim(query); //trim white space  
  query = query.replace(/ /gi, '|'); //add OR for regex query  
  
  $(selector).each(function() {  
    ($(this).text().search(new RegExp(query, "i")) < 0) ? $(this).hide().removeClass('visible') : $(this).show().addClass('visible');  
  });  
}



$(document).ready(function(){

 zebraRows('#box-table-a tbody tr:odd td', 'odd');

 $('#box-table-a tbody tr').addClass('visible');  

  $('#filter').keyup(function(event) {  
    if (event.keyCode == 27 || $(this).val() == '') {  
      $(this).val('');  
      $('#box-table-a tbody tr').removeClass('visible').show().addClass('visible');  
    }  
    else {  
      filter('#box-table-a tbody tr', $(this).val());  
    }  

    $('.visible td').removeClass('odd');  
    zebraRows('.visible:odd td', 'odd');
  });  


}); */

