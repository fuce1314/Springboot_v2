/*Piety Init*/
  
$(document).ready(function() {
	"use strict";
	
	if( $('.pie').length > 0 ){
		/*pie*/
		$("span.pie").peity("pie",{
			width: 50,
			height: 50 
		});
    }    
	
	if( $('.donut').length > 0 ){
		/*donut*/
		$("span.donut").peity("donut",{
			width: 50,
			height: 50 
		});
	}
	
	if( $('.peity-line').length > 0 ){
		/*line*/
		$('.peity-line').each(function() {
			$(this).peity("line", $(this).data());
		});
	}
	
	if( $('.peity-bar').length > 0 ){
		/*bar*/
		$('.peity-bar').each(function() {
			$(this).peity("bar", $(this).data());
		});	
	}	
});