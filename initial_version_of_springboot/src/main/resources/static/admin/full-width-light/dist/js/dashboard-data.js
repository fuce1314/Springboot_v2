/*Dashboard Init*/
 
"use strict"; 

/*****Ready function start*****/
$(document).ready(function(){
	$('#statement').DataTable({
		"bFilter": false,
		"bLengthChange": false,
		"bPaginate": false,
		"bInfo": false,
	});
});
/*****Ready function end*****/

/*****Load function start*****/
$(window).on("load",function(){
	window.setTimeout(function(){
		$.toast({
			heading: 'Welcome to Goofy',
			text: 'Use the predefined ones, or specify a custom position object.',
			position: 'bottom-left',
			loaderBg:'#e58b25',
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
			xAxis: {
				type: 'category',
				boundaryGap: false,
				data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
				axisLine: {
					show:false
				},
				axisLabel: {
					textStyle: {
						color: '#878787',
						fontStyle: 'normal',
						fontWeight: 'normal',
						fontFamily: "'Open Sans', sans-serif",
						fontSize: 12
					}
				},
				splitLine: {
					show: false,
				},
			},
			yAxis: {
				type: 'value',
				axisLine: {
						show:false
				},
				axisLabel: {
					textStyle: {
						color: '#878787',
						fontStyle: 'normal',
						fontWeight: 'normal',
						fontFamily: "'Open Sans', sans-serif",
						fontSize: 12
					}
				},
				splitLine: {
					show: false,
				},
				boundaryGap: [0, '100%']
			},
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
			series: [
				{
					data: [820, 932, 901, 934, 1290, 1330, 1320],
					type: 'line',
					areaStyle: {
						normal: {
							color: '#0FC5BB'
						}
					},
					itemStyle: {
						normal: {
							color: '#0FC5BB'
						}
					}
				}
			]
		};
		eChart_1.setOption(option);
		eChart_1.resize();
	}
	if( $('#e_chart_2').length > 0 ){
		var eChart_2 = echarts.init(document.getElementById('e_chart_2'));
		var option1 = {
			xAxis: {
				type: 'category',
				boundaryGap: false,
				data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
				axisLine: {
					show:false
				},
				axisLabel: {
					textStyle: {
						color: '#878787',
						fontStyle: 'normal',
						fontWeight: 'normal',
						fontFamily: "'Open Sans', sans-serif",
						fontSize: 12
					}
				},
				splitLine: {
					show: false,
				},
			},
			yAxis: {
				type: 'value',
				axisLine: {
						show:false
				},
				axisLabel: {
					textStyle: {
						color: '#878787',
						fontStyle: 'normal',
						fontWeight: 'normal',
						fontFamily: "'Open Sans', sans-serif",
						fontSize: 12
					}
				},
				splitLine: {
					show: false,
				},
				boundaryGap: [0, '100%']
			},
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
			series: [
					{
						name:'Step Start',
						type:'line',
						step: 'start',
						itemStyle: {
							normal: {
								color: '#0FC5BB'
							}
						},
						data:[120, 132, 101, 134, 90, 230, 210]
					},
					{
						name:'Step Middle',
						type:'line',
						step: 'middle',
						itemStyle: {
							normal: {
								color: '#92F2EF'
							}
						},
						data:[220, 282, 201, 234, 290, 430, 410]
					}
			]
		};
		eChart_2.setOption(option1);
		eChart_2.resize();
	}
	if( $('#e_chart_3').length > 0 ){
		var eChart_3 = echarts.init(document.getElementById('e_chart_3'));
		var data = [];
		var labelData = [];
		for (var i = 0; i < 24; ++i) {
			data.push({
				value: Math.random() * 10 + 10 - Math.abs(i - 12),
				name: i + ':00'
			});
			labelData.push({
				value: 1,
				name: i + ':00'
			});
		}

		var option3 = {
			tooltip: {
				trigger: 'item',
				formatter: "{a} <br/>{b}: {c} ({d}%)"
			},
			legend: {
				show:false
			},
			series: [
				{
					name:'pie',
					type:'pie',
					selectedMode: 'single',
					radius: [0, '35%'],
					color: ['#0FC5BB', '#92F2EF'],
					label: {
						normal: {
							show:false,
						}
					},
					data:[
						{value:335, name:'1'},
						{value:679, name:'2'},
					]
				},
				{
					name:'Radio',
					type:'pie',
					radius: ['55%', '70%'],
					label: {
						normal: {
							show:false,
						}
					},
					color: ['#0FC5BB', '#D0F6F5'],
					data:[
						{value:335, name:'1'},
						{value:310, name:'2'},
					]
				}
			]
		};
		
		eChart_3.setOption(option3);
		eChart_3.resize();
	}
}
/*****E-Charts function end*****/

/*****Sparkline function start*****/
var sparklineLogin = function() { 
	if( $('#sparkline_1').length > 0 ){
		$("#sparkline_1").sparkline([2,4,4,6,8,5,6,4,8,9 ], {
			type: 'bar',
			width: '100%',
			height: '35',
			barWidth: '5',
			barSpacing: '5',
			barColor: '#0FC5BB',
			highlightSpotColor: '#0FC5BB'
		});
	}	
	if( $('#sparkline_2').length > 0 ){
		$("#sparkline_2").sparkline([0,2,8,6,8,6,8,5,6], {
			type: 'bar',
			width: '100%',
			height: '35',
			barWidth: '5',
			barSpacing: '5',
			barColor: '#0FC5BB',
			highlightSpotColor: '#0FC5BB'
		});
	}	
	if( $('#sparkline_3').length > 0 ){
		$("#sparkline_3").sparkline([0, 23, 43, 35, 44, 45, 56, 37, 40, 45, 56, 7, 10], {
			type: 'bar',
			width: '100%',
			height: '35',
			barWidth: '5',
			barSpacing: '5',
			barColor: '#0FC5BB',
			highlightSpotColor: '#0FC5BB'
		});
	}
	if( $('#sparkline_4').length > 0 ){
		$("#sparkline_4").sparkline([0,2,8,6,8,5,6,4,8,6,6,2 ], {
			type: 'line',
			width: '100%',
			height: '50',
			lineColor: '#0FC5BB',
			fillColor: 'transparent',
			minSpotColor: '#0FC5BB',
			maxSpotColor: '#0FC5BB',
			spotColor: '#0FC5BB',
			highlightLineColor: '#0FC5BB',
			highlightSpotColor: '#0FC5BB'
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
	echartResize = setTimeout(echartsConfig, 200);
}).resize(); 
/*****Resize function end*****/

/*****Function Call start*****/
sparklineLogin();
echartsConfig();
/*****Function Call end*****/