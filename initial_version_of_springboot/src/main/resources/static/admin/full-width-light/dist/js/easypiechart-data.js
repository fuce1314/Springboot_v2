/*Easypiechart Init*/

$(document).ready(function() {
	"use strict";
	
	if( $('#pie_chart_1').length > 0 ){
		$('#pie_chart_1').easyPieChart({
			barColor : 'rgba(15, 197, 187,1)',
			lineWidth: 3,
			animate: 3000,
			size:	100,
			lineCap: 'square',
			scaleColor: 'rgba(33,33,33,.1)',
			trackColor: '#fff',
			onStep: function(from, to, percent) {
				$(this.el).find('.percent').text(Math.round(percent));
			}
		});
	}
	if( $('#pie_chart_2').length > 0 ){
		$('#pie_chart_2').easyPieChart({
			barColor : 'rgba(15, 197, 187,1)',
			lineWidth: 3,
			animate: 3000,
			size:	100,
			lineCap: 'square',
			scaleColor: 'rgba(33,33,33,.1)',
			trackColor: '#fff',
			onStep: function(from, to, percent) {
				$(this.el).find('.percent').text(Math.round(percent));
			}
		});
	}
	if( $('#pie_chart_3').length > 0 ){
		$('#pie_chart_3').easyPieChart({
			animate: 3000,
			barColor : 'rgba(15, 197, 187,1)',
			lineWidth: 3,
			scaleColor: 'rgba(33,33,33,.1)',
			size:	100,
			lineCap: 'square',
			trackColor: '#fff',
			onStep: function(from, to, percent) {
				$(this.el).find('.percent').text(Math.round(percent));
			}
		});
	}	
	if( $('#pie_chart_4').length > 0 ){
		$('#pie_chart_4').easyPieChart({
			barColor : 'rgba(15, 197, 187,1)',
			lineWidth: 3,
			animate: 3000,
			size:	100,
			lineCap: 'square',
			trackColor: false,
			scaleColor: false,
			onStep: function(from, to, percent) {
				$(this.el).find('.percent').text(Math.round(percent));
			}
		});
	}
	if( $('#pie_chart_5').length > 0 ){
		$('#pie_chart_5').easyPieChart({
			barColor : 'rgba(15, 197, 187,1)',
			lineWidth: 3,
			animate: 3000,
			size:	100,
			lineCap: 'square',
			trackColor: false,
			scaleColor: false,
			onStep: function(from, to, percent) {
				$(this.el).find('.percent').text(Math.round(percent));
			}
		});
	}
    if( $('#pie_chart_6').length > 0 ){	
		$('#pie_chart_6').easyPieChart({
			animate: 3000,
			barColor : 'rgba(15, 197, 187,1)',
			lineWidth: 3,
			scaleColor: false,
			size:	100,
			lineCap: 'square',
			trackColor: false,
			onStep: function(from, to, percent) {
				$(this.el).find('.percent').text(Math.round(percent));
			}
		});
	}
	if( $('#pie_chart_7').length > 0 ){
		$('#pie_chart_7').easyPieChart({
			barColor : 'rgba(15, 197, 187,1)',
			lineWidth: 3,
			animate: 3000,
			size:	100,
			lineCap: 'square',
			scaleColor: 'rgba(33,33,33,.1)',
			trackColor: '#fff',
		});
	}
	if( $('#pie_chart_8').length > 0 ){
		$('#pie_chart_8').easyPieChart({
			barColor : 'rgba(15, 197, 187,1)',
			lineWidth: 3,
			animate: 3000,
			size:	100,
			lineCap: 'square',
			scaleColor: 'rgba(33,33,33,.1)',
			trackColor: '#fff',
		});
	}
    if( $('#pie_chart_9').length > 0 ){	
		$('#pie_chart_9').easyPieChart({
			animate: 3000,
			barColor : 'rgba(15, 197, 187,1)',
			lineWidth: 3,
			size:	100,
			lineCap: 'square',
			scaleColor: 'rgba(33,33,33,.1)',
			trackColor: '#fff',
		});
	}
	if( $('#pie_chart_10').length > 0 ){
		$('#pie_chart_10').easyPieChart({
			barColor : 'rgba(15, 197, 187,1)',
			lineWidth: 3,
			animate: 3000,
			size:	100,
			lineCap: 'square',
			trackColor: false,
			scaleColor: false,
		});
	}
	if( $('#pie_chart_11').length > 0 ){
		$('#pie_chart_11').easyPieChart({
			barColor : 'rgba(15, 197, 187,1)',
			lineWidth: 3,
			animate: 3000,
			size:	100,
			lineCap: 'square',
			trackColor: false,
			scaleColor: false,
		});
	}
    if( $('#pie_chart_12').length > 0 ){	
		$('#pie_chart_12').easyPieChart({
			animate: 3000,
			barColor : 'rgba(15, 197, 187,1)',
			lineWidth: 3,
			scaleColor: false,
			size:	100,
			lineCap: 'square',
			trackColor: false,
		});
	}
});