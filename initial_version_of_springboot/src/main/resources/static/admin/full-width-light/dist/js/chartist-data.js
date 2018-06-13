/*Chartist Init*/

$( document ).ready(function() {
	"use strict";

	if( $('#ct_chart_1').length > 0 ){
		new Chartist.Line('#ct_chart_1', {
		  labels: [1, 2, 3, 4, 5, 6, 7, 8],
		  series: [
			[1, 2, 3, 1, -2, 0, 1, 0],
			[-2, -1, -2, -1, -2.5, -1, -2, -1],
			[0, 0, 0, 1, 2, 2.5, 2, 1],
			[2.5, 2, 1, 0.5, 1, 0.5, -1, -2.5]
		  ]
		}, {
		  high: 3,
		  low: -3,
		  showArea: true,
		  showLine: false,
		  showPoint: false,
		  fullWidth: true,
		  axisX: {
			showLabel: false,
			showGrid: false
		  }
		});
	}
	
	if( $('#ct_chart_2').length > 0 ){
		new Chartist.Line('#ct_chart_2', {
		  labels: [1, 2, 3, 4, 5],
		  series: [
			[1, 5, 10, 0, 1],
			[10, 15, 0, 1, 2]
		  ]
		}, {
		  // Remove this configuration to see that chart rendered with cardinal spline interpolation
		  // Sometimes, on large jumps in data values, it's better to use simple smoothing.
		  lineSmooth: Chartist.Interpolation.simple({
			divisor: 2
		  }),
		  fullWidth: true,
		  chartPadding: {
			right: 20
		  },
		  low: 0
		});
	}
	
	if( $('#ct_chart_3').length > 0 ){
		new Chartist.Pie('#ct_chart_3', {
		  series: [20, 10, 30, 40]
		}, {
		  donut: true,
		  donutWidth: 60,
		  startAngle: 270,
		  total: 200,
		  showLabel: true
		});
	}
	
	if( $('#ct_chart_4').length > 0 ){
		new Chartist.Bar('#ct_chart_4',{
			labels: ['W1', 'W2', 'W3', 'W4', 'W5', 'W6', 'W7', 'W8', 'W9', 'W10'],
			  series: [
				[1, 2, 4, 8, 6, -2, -1, -4, -6, -2]
			  ]
			},
			{
			  high: 10,
			  low: -10,
			  axisX: {
				labelInterpolationFnc: function(value, index) {
				  return index % 2 === 0 ? value : null;
				}
			  }
			});
	}
	
	if( $('#ct_chart_5').length > 0 ){
		new Chartist.Bar('#ct_chart_5', {
		  labels: ['First quarter of the year', 'Second quarter of the year', 'Third quarter of the year', 'Fourth quarter of the year'],
		  series: [
			[60000, 40000, 80000, 70000],
			[40000, 30000, 70000, 65000],
			[8000, 3000, 10000, 6000]
		  ]
		}, {
		  seriesBarDistance: 10,
		  axisX: {
			offset: 60
		  },
		  axisY: {
			offset: 80,
			labelInterpolationFnc: function(value) {
			  return value + ' CHF'
			},
			scaleMinSpace: 15
		  }
		});
	}
	
	if( $('#ct_chart_7').length > 0 ){
		new Chartist.Bar('#ct_chart_7', {
		  labels: ['Q1', 'Q2', 'Q3', 'Q4'],
		  series: [
			[800000, 1200000, 1400000, 1300000],
			[200000, 400000, 500000, 300000],
			[100000, 200000, 400000, 600000]
		  ]
		}, {
		  stackBars: true,
		  axisY: {
			labelInterpolationFnc: function(value) {
			  return (value / 1000) + 'k';
			}
		  }
		}).on('draw', function(data) {
		  if(data.type === 'bar') {
			data.element.attr({
			  style: 'stroke-width: 30px'
			});
		  }
		});
	}
});
