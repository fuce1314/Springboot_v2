/*Flot Init*/
/*Flot Init*/
$(function() {
	"use strict";
	
	var data = [],
	totalPoints = 300;

	/*Getting Random Data*/
	function getRandomData() {

		if (data.length > 0)
			data = data.slice(1);

		// Do a random walk

		while (data.length < totalPoints) {

			var prev = data.length > 0 ? data[data.length - 1] : 50,
				y = prev + Math.random() * 10 - 5;

			if (y < 0) {
				y = 0;
			} else if (y > 100) {
				y = 100;
			}

			data.push(y);
		}

		// Zip the generated y values with the x values

		var res = [];
		for (var i = 0; i < data.length; ++i) {
			res.push([i, data[i]])
		}

		return res;
	}
	
	/***Real time Chart***/
	if( $('#real_time_chart').length > 0 ){
		/*Defining Option*/
		var realtime_chartop = {
			series:{
				shadowSize: 0,
				lines: {
					fill: 1
				},
			},
			grid: {
				color: "rgba(0,0,0,0)",
				hoverable: true,
				borderWidth: 0,
				backgroundColor: 'transparent'
			},
			colors: ["#8BC34A"],
			tooltip: true,
			tooltipOpts: {
				content: "Y: %y",
				defaultTheme: false
			},
			yaxis: {
					min: 0,
					max: 100,
					font : {
						color : '#878787'
					}
			},
			xaxis: {
				show: false,
				font : {
					color : '#878787'
				}
			}
			
		};
		
		/*Defining Data*/
		var realtime_chartop_data = {
			data: getRandomData(),
		}

		/*Chart Plot*/
		$.plot($("#real_time_chart"), [realtime_chartop_data], realtime_chartop);
		
		/*Realtime Data*/
		setInterval(function updateRandom() {
			realtime_chartop_data = getRandomData();
			$.plot($("#real_time_chart"), [realtime_chartop_data], realtime_chartop)
		}, 40);
	}

	/***Line Chart***/	

	if( $('#flot_line_chart').length > 0 ){	
		/*Defining Option*/
		var line_chartop = {
				series: {
					shadowSize: 0,
					lines: {
						show: true
					},
					points: {
						show: true
					}
				},

				yaxis: {
					min: -1.2,
					max: 1.2,
					font : {
						color : '#878787'
					}
				},
				xaxis: {
					show: false,
				},
				colors: ["#8BC34A", "#f8b32d"],   
				grid: {
					color:"rgba(0,0,0,0)",
					hoverable: true,
					borderWidth: 0,
				},
				legend : {
					backgroundColor: 'transparent',
				},
				tooltip: true,
				tooltipOpts: {
					content: "'%s' of %x.1 is %y.4",
					shifts: {
						x: -60,
						y: 25
					}
				}
			};
		
			var sin = [],
				cos = [];
			var offset = 0;	
			for (var i = 0; i < 12; i += 0.2) {
				sin.push([i, Math.sin(i + offset)]);
				cos.push([i, Math.cos(i + offset)]);
			}
			/*Defining Data*/
			var line_chart_data= [{
				label: "sin(x)",
				data: sin,
			}, 
			{
				label: "cos(x)",
				data: cos,
			}];
		
			/*Plot*/
			$.plot($("#flot_line_chart"), line_chart_data, line_chartop);
	}

	
	/***Pie Chart***/
	if( $('#flot_pie_chart').length > 0 ){
		var pie_data = [{
			label: "Series 0",
			data: 10,
			color: "rgba(248, 179, 45,1)",
			
		}, {
			label: "Series 1",
			data: 1,
			color: "rgba(139,195,74,1)",
		}, {
			label: "Series 2",
			data: 3,
			color: "rgba(15, 197, 187,1)",
		}, {
			label: "Series 3",
			data: 1,
			color: "rgba(243, 57, 35,1)",
		}];

		var pie_op = {
			series: {
				pie: {
					innerRadius: 0.5,
					show: true,
					stroke: {
						width: 0,
					}
				}
			},
			legend : {
				backgroundColor: 'transparent',
			},
			grid: {
				hoverable: true
			},
			color: null,
			tooltip: true,
			tooltipOpts: {
				content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
				shifts: {
					x: 20,
					y: 0
				},
				defaultTheme: false
			},
		};
		$.plot($("#flot_pie_chart"), pie_data, pie_op);
	}

	/***Filled Line Chart***/
	if( $('#flot_line_chart_moving').length > 0 ){	
		/*Defining Option*/
		var fill_line_chartop = {
			series:{
				shadowSize: 0,
				lines: {
					fill: false
				},
			},
				grid: {
				color: "rgba(0,0,0,0)",
				hoverable: true,
				borderWidth: 0,
				backgroundColor: 'transparent'
			},
			colors: ["#8BC34A"],
			tooltip: true,
			tooltipOpts: {
				content: "Y: %y",
				defaultTheme: false
			},
			yaxis: {
					min: 0,
					max: 100,
					font : {
						color : '#878787'
					}
			},
			xaxis: {
				show: false
			}
		};
		
		/*Defining Data*/
		var fill_line_chart_data = {
			data: getRandomData(),
		}

		/*Chart Plot*/
		$.plot($("#flot_line_chart_moving"), [fill_line_chart_data], fill_line_chartop);
		
		/*Realtime Data*/
		setInterval(function updateRandom() {
			fill_line_chart_data = getRandomData();
			$.plot($("#flot_line_chart_moving"), [fill_line_chart_data], fill_line_chartop)
		}, 40);	
	}

	/***Bar Chart***/		
	if( $('#flot_bar_chart').length > 0 ){    
		/*Defining Option*/
		var barOptions = {
			series: {
				bars: {
					show: true,
					fill : 1,
					barWidth: 43200000
				}
			},
			yaxis: {
				font : {
					color : '#878787'
				}
			},
			xaxis: {
				mode: "time",
				timeformat: "%m/%d",
				minTickSize: [2, "day"],
				font : {
					color : '#878787'
				}
			},
			
			legend: {
				show: false
			},
			grid: {
					color: "rgba(0,0,0,0)",
					hoverable: true,
					borderWidth: 0,
					backgroundColor: 'transparent'
				},
			tooltip: true,
			tooltipOpts: {
				content: "x: %x, y: %y"
			}
		};
	   
		/*Defining Data*/
		var barData = {
			label: "bar",
			color: "#8BC34A",
			data: [
				[1354521600000, 1000],
				[1355040000000, 2000],
				[1355223600000, 3000],
				[1355306400000, 4000],
				[1355487300000, 5000],
				[1355571900000, 6000]
			]
		};
		
		/*Plot*/
		$.plot($("#flot_bar_chart"), [barData], barOptions);	
	}
	
	/***Sales Chart***/
	if( $('#sales_bars_chart').length > 0 ){	
		/*Defining Data*/
		var d1 = [];
		for (var i = 0; i <= 10; i += 1)
			d1.push([i, parseInt(Math.random() * 60)]);

		var d2 = [];
		for (var i = 0; i <= 10; i += 1)
			d2.push([i, parseInt(Math.random() * 40)]);

		var d3 = [];
		for (var i = 0; i <= 10; i += 1)
			d3.push([i, parseInt(Math.random() * 25)]);

		var ds = [{
			label : "Data One",
			data : d1,
			bars : {
				order : 1
			}
		},
		{
			label : "Data Two",
			data : d2,
			bars : {
				order : 2
			}
		},
		{
			label : "Data Three",
			data : d3,
			bars : {
				order : 3
			}
		}];

		var stack = 0,
			bars = true,
			lines = true,
			steps = true;
		
		/*Defining Option*/
		var sales_op = {
			bars : {
				show : true,
				barWidth : 0.2,
				fill : 1
			},
			grid : {
				color: "rgba(0,0,0,0)",
				hoverable: true,
				borderWidth: 0,
				backgroundColor: 'transparent'
			},
			series : {
				stack : stack
			},
			legend : {
				position : "ne",
				margin : [10, 0],
				backgroundColor: 'transparent',
				noColumns : 0,
				labelBoxBorderColor : null,
				labelFormatter : function(label, series) {
					// just add some space to labes
					return '' + label + '&nbsp;&nbsp;';
				},
				width : 30,
				height : 5
			},
			yaxis : {
				font : {
					color : '#878787'
				}
			},
			xaxis : {
				font : {
					color : '#878787'
				}
			},
			colors : ["#8BC34A", "#f8b32d", "#0fc5bb"],
			tooltip : true, //activate tooltip
			tooltipOpts : {
				content : "%s : %y.0",
				shifts : {
					x : -30,
					y : -50
				}
			}
		};

		$.plot($("#sales_bars_chart"), ds, sales_op);
	}	
});

