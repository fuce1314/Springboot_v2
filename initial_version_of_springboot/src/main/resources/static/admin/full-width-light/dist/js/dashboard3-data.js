/*Dashboard3 Init*/
 
"use strict"; 

/*****Ready function start*****/
$(document).ready(function(){
	$('#support_table').DataTable({
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
			position: 'top-left',
			icon: '',
			loaderBg:'#f8b32d',
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
			grid: {
				left: '10%',
				right: '10%',
				bottom: '15%'
			},
			yAxis: {
				type: 'category',
				data: ['Adjacent to subway', 'Away from subway'],
				nameTextStyle: {
					color: '#878787',
					fontSize: 14,
				},
				axisLine: {
					show:false
				},
				
				axisTick:{
					show:false,
				},
				axisLabel:{
					rotate:90,
					textStyle: {
						color: '#878787'
					}
				},
				splitLine: {
					show: false
				}
			},
			
			xAxis: {
				type: 'value',
				
				nameTextStyle: {
					color: '#878787',
					fontSize: 14,
				},
				axisLine: {
					show:false
				},
				axisLabel:{
					textStyle: {
						color: '#878787'
					}
				},
				splitLine: {
					show:false
				}
				
			},
			series: [{
					name: 'boxplot',
					type: 'boxplot',
					data: [
						[216, 599.5, 694, 504, 980],
						[216, 599.5, 694, 504, 980]
					],
					itemStyle: {
						normal:{
							borderColor: {
							type: 'linear',
							x: 1,
							y: 0,
							x2: 0,
							y2: 0,
							colorStops: [{
								offset: 0,
								color: '#0FC5BB' // 0% 
							}, {
								offset: 1,
								color: '#92F2EF' // 100% 
							}],
							globalCoord: false //
						},
						borderWidth:2,
						color: {
							type: 'linear',
							x: 1,
							y: 0,
							x2: 0,
							y2: 0,
							colorStops: [{
								offset: 0,
								color: '#0FC5BB'  // 0% 处的颜色
							}, {
								offset: 1,
								color: '#92F2EF' // 100% 处的颜色
							}],
							globalCoord: false // 缺省为 false
						},
					}
					},
					tooltip: {
						formatter: function(param) {
							return [

								'upper: ' + param.data[5],
								'Q3: ' + param.data[4],
								'median: ' + param.data[3],
								'Q1: ' + param.data[2],
								'lower: ' + param.data[1]
							].join('<br/>')
						}
					}
				},

			]
		};
		eChart_1.setOption(option);
		eChart_1.resize();
	}
	if( $('#e_chart_3').length > 0 ){
		var eChart_3 = echarts.init(document.getElementById('e_chart_3'));
		var colors = ['#0FC5BB ', '#92F2EF'];
		var option2 = {
			color: colors,

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
			grid:{
				show:false,
				top: 30,
				bottom: 10,
				containLabel: true,
			},
			xAxis: [
				{
					type: 'category',
					axisTick: {
						alignWithLabel: true
					},
					axisLine: {
						show:false
					},
					axisLabel: {
						textStyle: {
							color: '#878787'
						}
					},
					axisPointer: {
						label: {
							formatter: function (params) {
								return params.value
									+ (params.seriesData.length ? '：' + params.seriesData[0].data : '');
							}
						}
					},
					data: ["2016-1", "2016-2", "2016-3", "2016-4", "2016-5", "2016-6", "2016-7", "2016-8", "2016-9", "2016-10", "2016-11", "2016-12"]
				},
				{
					type: 'category',
					axisTick: {
						alignWithLabel: true
					},
					axisLine: {
						show:false
					},
					axisLabel: {
						textStyle: {
							color: '#878787'
						}
					},
					axisPointer: {
						label: {
							formatter: function (params) {
								return  params.value
									+ (params.seriesData.length ? '：' + params.seriesData[0].data : '');
							}
						}
					},
					data: ["2015-1", "2015-2", "2015-3", "2015-4", "2015-5", "2015-6", "2015-7", "2015-8", "2015-9", "2015-10", "2015-11", "2015-12"]
				}
			],
			yAxis: [
				{
					type: 'value',
					axisLine: {
						show:false
					},
					axisLabel: {
						textStyle: {
							color: '#878787'
						}
					},
					splitLine: {
						show: false,
					}
				}
			],
			series: [
				{
					name:'2015',
					type:'line',
					xAxisIndex: 1,
					smooth: true,
					data: [2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3]
				},
				{
					name:'2016',
					type:'line',
					smooth: true,
					data: [3.9, 5.9, 11.1, 18.7, 48.3, 69.2, 231.6, 46.6, 55.4, 18.4, 10.3, 0.7]
				}
			]
		};

		eChart_3.setOption(option2);
		eChart_3.resize();
	}
	if( $('#e_chart_2').length > 0 ){
		var eChart_2 = echarts.init(document.getElementById('e_chart_2'));
		var option1 = {
			tooltip : {
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
			color: ['#0FC5BB', '#92F2EF', '#D0F6F5'],
			series : [
				{
					name: 'task',
					type: 'pie',
					radius : '55%',
					center: ['50%', '50%'],
					roseType : 'radius',
					tooltip : {
						trigger: 'item',
						formatter: "{a} <br/>{b} : {c} ({d}%)",
						backgroundColor: 'rgba(33,33,33,1)',
						borderRadius:0,
						padding:10,
						textStyle: {
							color: '#fff',
							fontStyle: 'normal',
							fontWeight: 'normal',
							fontFamily: "'Open Sans', sans-serif",
							fontSize: 12
						}	
					},
					data:[
						{value:335, name:'task 1'},
						{value:410, name:'task 2'},
						{value:334, name:'task 3'},
					],
					itemStyle: {
						emphasis: {
							shadowBlur: 10,
							shadowOffsetX: 0,
							shadowColor: 'rgba(0, 0, 0, 0.5)'
						}
					}
				}
			]
		};
		eChart_2.setOption(option1);
		eChart_2.resize();
	}
}
/*****E-Charts function end*****/

/*****Sparkline function start*****/
var sparklineLogin = function() { 
		if( $('#sparkline_4').length > 0 ){
			$("#sparkline_4").sparkline([2,4,4,6,8,5,6,4,8,6,6,2 ], {
				type: 'line',
				width: '100%',
				height: '45',
				lineColor: '#0FC5BB',
				fillColor: '#0FC5BB',
				minSpotColor: '#0FC5BB',
				maxSpotColor: '#0FC5BB',
				spotColor: '#0FC5BB',
				highlightLineColor: '#0FC5BB',
				highlightSpotColor: '#0FC5BB'
			});
		}	
	}
	var sparkResize;
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