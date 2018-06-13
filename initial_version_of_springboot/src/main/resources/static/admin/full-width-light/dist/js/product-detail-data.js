/*Product detail Init*/

$(function(){
	"use strict";
	
	if($('#example-tabs').length >0){
		$("#example-tabs").steps({
			headerTag: "h3",
			bodyTag: "section",
			transitionEffect: "fade",
			enableFinishButton: false,
			enablePagination: false,
			enableAllSteps: true,
			titleTemplate: "#title#",
			cssClass: "tabcontrol"
		});
	}

	if($('#star1').length >0){
		$('#star1').starrr();
	}
	
	if($('.vertical-spin').length >0){
		$(".vertical-spin").TouchSpin({
			verticalbuttons: true,
			verticalupclass: 'ti-plus',
			verticaldownclass: 'ti-minus'
		});
	}	
});
		