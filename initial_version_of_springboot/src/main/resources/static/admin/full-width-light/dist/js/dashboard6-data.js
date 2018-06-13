/*Dashboard Init*/
 
"use strict"; 

/*****Load function start*****/
$(window).on("load",function(){
	window.setTimeout(function(){
		$.toast({
			heading: 'Welcome to Goofy',
			text: 'Use the predefined ones, or specify a custom position object.',
			position: 'bottom-left',
			loaderBg:'#f8b32d',
			icon: '',
			hideAfter: 3500, 
			stack: 6
		});
	}, 3000);
});
/*****Load function* end*****/

/*****E-Charts function start*****/
var echartsConfig = function() { 
	if( $('#e_chart_1').length > 0 ){
		var eChart_1 = echarts.init(document.getElementById('e_chart_1'));
		var option = {
			color: ['#92F2EF','#D0F6F5','#0FC5BB'],
			tooltip: {
				trigger: 'axis',
				backgroundColor: 'rgba(33,33,33,1)',
				borderRadius:0,
				padding:10,
				axisPointer: {
					type: 'cross',
					label: {
						backgroundColor: 'rgba(33,33,33,1)'
					}
				},
				textStyle: {
					color: '#fff',
					fontStyle: 'normal',
					fontWeight: 'normal',
					fontFamily: "'Open Sans', sans-serif",
					fontSize: 12
				}	
			},
			xAxis: {
				type: 'category',

				boundaryGap: false,
				splitLine: {
					show: false
				},
				axisLine: {
					show:false
				},
				axisLabel: {
					textStyle: {
						color: '#878787',
						fontSize: 12,
						fontFamily: "'Open Sans', sans-serif",
					}
				},
				"splitArea": {
					"show": false
				},
				
				data: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12']
			},
			grid: {
				left: '6%',
				right: '4%',
				bottom: '3%',
				containLabel: true
			},
			yAxis: {
				axisLine: {
					show: false
				},
				axisLabel: {
					textStyle: {
						color: '#878787',
						fontSize: 12,
						fontFamily: "'Open Sans', sans-serif",
					}
				},
				splitLine: {
					show: false,
				},
			},
			series: [{
					name: 'A',
					type: 'line',
					smooth: true,
					symbol: 'circle',
					symbolSize: 4,
					showSymbol: false,
					lineStyle: {
						normal: {
							width: 0
						}
					},
					areaStyle: {
						normal: {
							opacity: "1",
						}
					},
					data: [0, 7.5, 1.0, 3.7, 0, 3, 8, 0,3.6, 4, 2, 0]
				},

				{
					name: 'B',
					type: 'line',
					smooth: true,
					symbol: 'circle',
					symbolSize: 4,
					showSymbol: false,
					lineStyle: {
						normal: {
							width: 0
						}
					},
					areaStyle: {
						normal: {
							opacity: "1",
						}
					},
					data: [0, 2.2, 2, 2.2, 0, 1.5, 0, 2.4, 1, 3, 1, 0]
				}, {
					name: 'C',
					type: 'line',
					smooth: true,
					symbol: 'circle',
					symbolSize: 4,
					showSymbol: false,
					lineStyle: {
						normal: {
							width: 0
						}
					},
					areaStyle: {
						normal: {
							opacity: "1",
						}
					},
					data: [0, 2.3, 0, 1.2, 1, 3, 0, 3.3, 0, 2, 0.3, 0]
				}
			]
		};
		eChart_1.setOption(option);
		eChart_1.resize();
	}
}
/*****E-Charts function end*****/

/*****Sparkline function start*****/
var sparklineLogin = function() { 
	if( $('#sparkline_6').length > 0 ){
		$("#sparkline_6").sparkline([12,4,7,3,8,6,8,5,6,4,8,6,6,2 ], {
			type: 'line',
			width: '100%',
			height: '124',
			lineColor: '#0FC5BB',
			fillColor: '#0FC5BB',
			minSpotColor: '#0FC5BB',
			maxSpotColor: '#0FC5BB',
			spotColor: '#0FC5BB',
			highlightLineColor: '#0FC5BB',
			highlightSpotColor: '#0FC5BB'
		});
	}	
	if( $('#sparkline_7').length > 0 ){
		$("#sparkline_7").sparkline([20,4,4], {
			type: 'pie',
			width: '100',
			height: '100',
			sliceColors: ['#0FC5BB', '#92F2EF','#D0F6F5']
		});
	}	
}
/*****Sparkline function end*****/

/*****Resize function start*****/
var sparkResize,echartResize;
$(window).on("resize", function () {
	/*Sparkline Resize*/
	clearTimeout(sparkResize);
	sparkResize = setTimeout(sparklineLogin, 200);
	
	/*E-Chart Resize*/
	clearTimeout(echartResize);
	echartResize = setTimeout(echartsConfig, 300);
}).resize(); 
/*****Resize function end*****/

/*****Function Call start*****/
sparklineLogin();
echartsConfig();
/*****Function Call end*****/