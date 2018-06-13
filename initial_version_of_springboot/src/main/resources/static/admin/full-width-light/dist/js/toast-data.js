/*Toast Init*/


$(document).ready(function() {
	"use strict";
	
	$.toast({
		heading: 'Welcome to Philbert',
		text: 'Use the predefined ones, or specify a custom position object.',
		position: 'top-right',
		loaderBg:'#fec107',
		icon: 'success',
		hideAfter: 3500, 
		stack: 6
	});
	
	$('.tst1').on('click',function(e){
	    $.toast().reset('all'); 
		$("body").removeAttr('class');
		$.toast({
            heading: '2 new messages',
            text: 'Use the predefined ones, or specify a custom position object.',
            position: 'top-right',
            loaderBg:'#fec107',
            icon: 'info',
            hideAfter: 3000, 
            stack: 6
        });
		return false;
    });

	$('.tst2').on('click',function(e){
        $.toast().reset('all');
		$("body").removeAttr('class');
		$.toast({
            heading: 'Server not responding',
            text: 'Use the predefined ones, or specify a custom position object.',
            position: 'top-right',
            loaderBg:'#ff2a00',
            icon: 'warning',
            hideAfter: 3500, 
            stack: 6
        });
		return false;
	});
	
	$('.tst3').on('click',function(e){
        $.toast().reset('all');
		$("body").removeAttr('class');
		$.toast({
            heading: 'Welcome to Philbert',
            text: 'Use the predefined ones, or specify a custom position object.',
            position: 'top-right',
            loaderBg:'#fec107',
            icon: 'success',
            hideAfter: 3500, 
            stack: 6
          });
		return false;  
	});

	$('.tst4').on('click',function(e){
		$.toast().reset('all');
		$("body").removeAttr('class');
		$.toast({
            heading: 'Opps! somthing wents wrong',
            text: 'Use the predefined ones, or specify a custom position object.',
            position: 'top-right',
            loaderBg:'#fec107',
            icon: 'error',
            hideAfter: 3500
        });
		return false;
    });
	
	$('.tst5').on('click',function(e){
	    $.toast().reset('all');   
		$("body").removeAttr('class');
		$.toast({
            heading: 'Top Left',
            text: 'Use the predefined ones, or specify a custom position object.',
            position: 'top-left',
            loaderBg:'#878787',
            hideAfter: 3500
        });
		return false;
    });
	
	$('.tst6').on('click',function(e){
		$.toast().reset('all');
		$("body").removeAttr('class');
		$.toast({
            heading: 'Top Right',
            text: 'Use the predefined ones, or specify a custom position object.',
            position: 'top-right',
            loaderBg:'#878787',
            hideAfter: 3500
        });
		return false;
    });
	
	$('.tst7').on('click',function(e){
		$.toast().reset('all');
		$("body").removeAttr('class');
		$.toast({
            heading: 'Bottom Left',
            text: 'Use the predefined ones, or specify a custom position object.',
            position: 'bottom-left',
            loaderBg:'#878787',
            hideAfter: 3500
        });
		return false;
    });
	
	$('.tst8').on('click',function(e){
	    $.toast().reset('all');   
		$("body").removeAttr('class');
		$.toast({
            heading: 'Bottom Right',
            text: 'Use the predefined ones, or specify a custom position object.',
            position: 'bottom-right',
            loaderBg:'#878787',
            hideAfter: 3500
        });
		return false;
	});
	
	$('.tst9').on('click',function(e){
	    $.toast().reset('all');   
		$("body").removeAttr('class').removeClass("bottom-center-fullwidth").addClass("top-center-fullwidth");
		$.toast({
            heading: 'Top Center',
            text: 'Use the predefined ones, or specify a custom position object.',
            position: 'top-center',
            loaderBg:'#878787',
            hideAfter: 3500
        });
		return false;
	});
	
	$('.tst10').on('click',function(e){
	    $.toast().reset('all');
		$("body").removeAttr('class').addClass("bottom-center-fullwidth");
		$.toast({
            heading: 'Bottom Right',
            text: 'Use the predefined ones, or specify a custom position object.',
            position: 'bottom-center',
            loaderBg:'#878787',
            hideAfter: 3500
        });
		return false;
	});
});
          
