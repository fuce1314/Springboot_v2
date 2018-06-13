/*FormPicker Init*/

$(document).ready(function() {
	"use strict";
	
	/* Bootstrap Colorpicker Init*/
	$('.colorpicker').colorpicker();

	$('.colorpicker-rgb').colorpicker({
		color: '#AA3399',
		format: 'rgba'
	});

	$('.colorpicker-inline').colorpicker({
		color: '#ffaa00',
		container: true,
		inline: true
	});
	
	/* Datetimepicker Init*/
	$('#datetimepicker1').datetimepicker({
			useCurrent: false,
			icons: {
                    time: "fa fa-clock-o",
                    date: "fa fa-calendar",
                    up: "fa fa-arrow-up",
                    down: "fa fa-arrow-down"
                },
		}).on('dp.show', function() {
		if($(this).data("DateTimePicker").date() === null)
			$(this).data("DateTimePicker").date(moment());
	});

	$('#datetimepicker2').datetimepicker({
			format: 'LT',
			useCurrent: false,
			icons: {
                    time: "fa fa-clock-o",
                    date: "fa fa-calendar",
                    up: "fa fa-arrow-up",
                    down: "fa fa-arrow-down"
                },
		}).data("DateTimePicker").date(moment());;
	 
	$('#datetimepicker3').datetimepicker({
			format: 'DD-MM-YYYY',
			inline:true,
			sideBySide: true,
			icons: {
                    time: "fa fa-clock-o",
                    date: "fa fa-calendar",
                    up: "fa fa-arrow-up",
                    down: "fa fa-arrow-down"
                },
	}); 

	$('#datetimepicker4').datetimepicker({
			inline:true,
			sideBySide: true,
			useCurrent: false,
			icons: {
                    time: "fa fa-clock-o",
                    date: "fa fa-calendar",
                    up: "fa fa-arrow-up",
                    down: "fa fa-arrow-down"
                },
	}).data("DateTimePicker").date(moment());
	
	/* Daterange picker Init*/
	$('.input-daterange-datepicker').daterangepicker({
	  buttonClasses: ['btn', 'btn-sm'],
			applyClass: 'btn-info',
			cancelClass: 'btn-default'
	});
	$('.input-daterange-timepicker').daterangepicker({
		timePicker: true,
		format: 'MM/DD/YYYY h:mm A',
		timePickerIncrement: 30,
		timePicker12Hour: true,
		timePickerSeconds: false,
		buttonClasses: ['btn', 'btn-sm'],
		applyClass: 'btn-info',
		cancelClass: 'btn-default'
	});
	$('.input-limit-datepicker').daterangepicker({
		format: 'MM/DD/YYYY',
		minDate: '06/01/2015',
		maxDate: '06/30/2015',
		buttonClasses: ['btn', 'btn-sm'],
		applyClass: 'btn-info',
		cancelClass: 'btn-default',
		dateLimit: {
			days: 6
		}
	});
});