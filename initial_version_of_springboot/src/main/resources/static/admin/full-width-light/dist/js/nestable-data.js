/*Nestable Init*/
$( document ).ready(function() {
	"use strict";
	
	/*Nestable*/
	
	$('#nestable').nestable({group: 1});
	$('#nestable2').nestable({group: 1});

	$('#nestable_menu').on('click', function(e)  {
		var target = $(e.target),
			action = target.data('action');
		if (action === 'expand-all') {
			$('.dd').nestable('expandAll');
		}
		if (action === 'collapse-all') {
			$('.dd').nestable('collapseAll');
		}
		return false;
	});
	$('#nestable_menu').nestable();
});