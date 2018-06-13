/*Editabletable Init*/

"use strict";

$('#edit_datable_1').editableTableWidget().numericInputExample().find('td:first').focus();
	$('#edit_datable_2').editableTableWidget().numericInputExample().find('td:first').focus();
	
$(document).ready(function(){
	  $('#edit_datable_2').DataTable();
});
		