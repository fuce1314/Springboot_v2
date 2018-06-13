/*Bootstrap Table Init*/

var data = [{
    "name": "bootstrap-table",
        "stargazers_count": "10",
        "forks_count": "122",
        "description": "An extended Bootstrap table"
}, {
    "name": "multiple-select",
        "stargazers_count": "288",
        "forks_count": "20",
        "description": "A jQuery plugin to select multiple elements with checkboxes :)"
}, {
    "name": "bootstrap-table",
        "stargazers_count": "32",
        "forks_count": "11",
        "description": "Show/hide password plugin for twitter bootstrap."
}, {
    "name": "bootstrap-table",
        "stargazers_count": "1",
        "forks_count": "4",
        "description": "my blog"
}, {
    "name": "scutech-redmine 1",
        "stargazers_count": "50",
        "forks_count": "3",
        "description": "Redmine notification tools for chrome extension."
}];

$(function () {
	"use strict";
	$('#table_js,#table_js_1,#table_js_2').bootstrapTable({
        data: data
    });
	
	/*Scroll to top*/
	$(document).on('click','#mybtn_top',function(e) {
        $('#table_js').bootstrapTable('scrollTo', 0);
		return false;
    });
    
	/*Scroll to index*/
	$(document).on('click','#mybtn_row',function(e) {
        var index = +$('#row_index').val(),
            top = 0;
        $('#table_js').find('tbody tr').each(function (i) {
        	if (i < index) {
            	top += $(this).height();
            }
        });
        $('#table_js').bootstrapTable('scrollTo', top);
		return false;
    });
    
	/*Scroll to bottom*/
	$(document).on('click','#mybtn_btm',function(e) {
        $('#table_js').bootstrapTable('scrollTo', 'bottom');
		return false;
    });

});