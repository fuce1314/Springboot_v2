/*Form advanced Init*/
$(document).ready(function() {
"use strict";

/* Select2 Init*/
$(".select2").select2();

/* Bootstrap Select Init*/
$('.selectpicker').selectpicker();

/* Switchery Init*/
var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));
$('.js-switch-1').each(function() {
	new Switchery($(this)[0], $(this).data());
});

/* Bootstrap-TouchSpin Init*/
$(".vertical-spin").TouchSpin({
	verticalbuttons: true,
	verticalupclass: 'ti-plus',
	verticaldownclass: 'ti-minus'
});
var vspinTrue = $(".vertical-spin").TouchSpin({
	verticalbuttons: true
});
if (vspinTrue) {
	$('.vertical-spin').prev('.bootstrap-touchspin-prefix').remove();
}

$("input[name='tch1']").TouchSpin({
	min: 0,
	max: 100,
	step: 0.1,
	decimals: 2,
	boostat: 5,
	maxboostedstep: 10,
	postfix: '%'
});
$("input[name='tch2']").TouchSpin({
	min: -1000000000,
	max: 1000000000,
	stepinterval: 50,
	maxboostedstep: 10000000,
	prefix: '$'
});
$("input[name='tch3']").TouchSpin();

$("input[name='tch3_22']").TouchSpin({
	initval: 40
});

$("input[name='tch5']").TouchSpin({
	prefix: "pre",
	postfix: "post"
});

/* Multiselect Init*/
$('#pre-selected-options').multiSelect();      
$('#optgroup').multiSelect({ selectableOptgroup: true });
$('#public-methods').multiSelect();
$('#select-all').click(function(){
$('#public-methods').multiSelect('select_all');
return false;
});
$('#deselect-all').click(function(){
$('#public-methods').multiSelect('deselect_all');
return false;
});
$('#refresh').on('click', function(){
$('#public-methods').multiSelect('refresh');
return false;
});
$('#add-option').on('click', function(){
$('#public-methods').multiSelect('addOption', { value: 42, text: 'test 42', index: 0 });
return false;
});

/* Bootstrap switch Init*/
$('.bs-switch').bootstrapSwitch('state', true);
$('#check_box_value').text($("#check_box_switch").bootstrapSwitch('state'));

$('#check_box_switch').on('switchChange.bootstrapSwitch', function () {

	$("#check_box_value").text($('#check_box_switch').bootstrapSwitch('state'));
});

});