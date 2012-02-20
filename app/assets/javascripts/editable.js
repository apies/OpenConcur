

var button = '<div><input type="button" value="SAVE" class="saveButton" /> OR <input type="button" value="CANCEL" class="cancelButton"/></div></div>';
var revert = $(this).html();

function setClickable() {
  $('.editInPlace').click(function(){ 
	
	var oldText = $(this).html()  
	                         .replace(/"/g, "\"");
	var textarea = '<div><textarea rows="2" cols="30">' + oldText + '</textarea>';
	var textfield = '<div><input type="text" name="input"'+'value="'+ oldText +'">';
	
	if ($(this).has('textarea').length <= 0) {
	  $(this).html(textarea) 
    }

	});
}


$(document).ready(function(){
  setClickable();
});