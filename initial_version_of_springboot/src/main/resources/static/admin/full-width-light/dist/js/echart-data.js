/*Dashboard Init*/
 
"use strict"; 

/*****E-Charts function start*****/
var echartsConfig = function() { 
	if( $('#e_chart_1').length > 0 ){
		var eChart_1 = echarts.init(document.getElementById('e_chart_1'));
		//data
		var data = [220, 182, 191, 234, 190, 330, 310];
		var markLineData = [];
		for (var i = 1; i < data.length; i++) {
			markLineData.push([{
				xAxis: i - 1,
				yAxis: data[i - 1],
				value: (data[i] + data[i-1]).toFixed(2)
			}, {
				xAxis: i,
				yAxis: data[i]
			}]);
		}

		//option
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
			color: ['#0fc5bb'],	
			grid:{
				show:false,
				top: 100,
				bottom: 10,
				containLabel: true,
			},
			xAxis: {
				data: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
				axisLine: {
					show:false
				},
				axisLabel: {
					textStyle: {
						color: '#878787'
					}
				},
			},
			yAxis: {
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
				},
			},
			series: [{
				type: 'line',
				data:data,
				markPoint: {
					data: [
						{type: 'max', name: '最大值'},
						{type: 'min', name: '最小值'}
					]
				},
				markLine: {
					smooth: true,
							effect: {
								show: true
							},
							distance: 10,
					label: {
						normal: {
							position: 'middle'
						}
					},
					symbol: ['none', 'none'],
					data: markLineData
				}
			}]
		};
		eChart_1.setOption(option);
		eChart_1.resize();
	}
	if( $('#e_chart_2').length > 0 ){
		var eChart_2 = echarts.init(document.getElementById('e_chart_2'));
		var option1 = {
			animation: false,
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
			color: ['#0fc5bb'],	
			grid: {
				top: 60,
				left:40,
				bottom: 30
			},
			xAxis: {
				type: 'value',
				position: 'top',
				axisLine: {
					show:false
				},
				axisLabel: {
					textStyle: {
						color: '#878787'
					}
				},
				splitLine: {
					show:false
				},
			},
			yAxis: {
				splitNumber: 25,
				type: 'category',
				axisLine: {
					show:false
				},
				axisLabel: {
					textStyle: {
						color: '#878787'
					}
				},
				axisTick: {
					show: true
				},
				splitLine: {
					show:false
				},
				data: ['Oct', 'Sep', 'Aug', 'July', 'June', 'May', 'Apr', 'Mar', 'Feb', 'Jan']
			},
			series: [{
				name: 'emp',
				type: 'bar',
				barGap: '-100%',
				label: {
					normal: {
						textStyle: {
							color: '#682d19'
						},
						position: 'left',
						show: false,
						formatter: '{b}'
					}
				},
				itemStyle: {
					normal: {
						color: '#0fc5bb',
					}
				},
				data: [190, 102, 160, 200, 110, 180, 280, 140, 220, 300]
			}, {
				type: 'line',
				silent: true,
				barGap: '-100%',
				data: [100, 100, 400, 170, 200, 300, 100, 200, 120, 200],
				itemStyle: {
					normal: {
						color: '#f7ce99',

					}
				},

			}]
		}
		eChart_2.setOption(option1);
		eChart_2.resize();
	}
	if( $('#e_chart_3').length > 0 ){
		var eChart_3 = echarts.init(document.getElementById('e_chart_3'));
		var option3 = {
			color: ['#0fc5bb', '#D0F6F5', '#92F2EF', '#f7ce99'],
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
						color: '#878787'
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
						color: '#878787'
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
					data: [0, -7.5, -1.0, 3.7, 0, -3, 8, 0,-3.6, 4, -2, 0]
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
					data: [0, -2.2, 2, -2.2, 0, -1.5, 0, 2.4, -1, 3, -1, 0]
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
					data: [0, 2.3, 0, 1.2, -1, 3, 0, -3.3, 0, 2, -0.3, 0]
				},

				{
					name: 'D',
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
					data: [0, 10, 0.13,2,0, 2, 0, 3.7, 0, 1, -3, 0]
				}
			]
		};
		eChart_3.setOption(option3);
		eChart_3.resize();
	}
	if( $('#e_chart_4').length > 0 ){
		var eChart_4 = echarts.init(document.getElementById('e_chart_4'));
		var data = [];
		for (var i = 0; i <= 10; i++) {
			var theta = i / 100 * 360;
			var r = 5 * (1 + Math.sin(theta / 180 * Math.PI));
			data.push([r, theta]);
		}
		var option4 = {
			polar: {},
			tooltip: {
				trigger: 'axis',
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
			angleAxis: {
				type: 'value',
				startAngle: 0,
				axisLine: {
					lineStyle: {
						color: 'rgba(33, 33, 33, 0.1)'
					}
				},
				axisLabel: {
					textStyle: {
						color: '#878787'
					}
				},
			},
			radiusAxis: {
				axisLine: {
					lineStyle: {
						color: 'rgba(33, 33, 33, 0.1)'
					}
				},
				axisLabel: {
					textStyle: {
						color: '#878787'
					}
				},
			},
			series: [{
				coordinateSystem: 'polar',
				name: 'line',
				type: 'line',
				lineStyle: {
					normal: {
						color: '#0fc5bb',
					}
				},
				itemStyle: {
					normal: {
						color: '#0fc5bb',
					}
				},
				 areaStyle: {
					normal: {
						color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
						   offset: 0,
						   color: '#0fc5bb'
						   }, {
						   offset: 1,
						   color: '#D0F6F5'
						}])
					}
					},
				
				data: data
			}]
		};
		eChart_4.setOption(option4);
		eChart_4.resize();
	}
}
/*****E-Charts function end*****/

/*****Resize function start*****/
var echartResize;
$(window).on("resize", function () {
	/*E-Chart Resize*/
	clearTimeout(echartResize);
	echartResize = setTimeout(echartsConfig, 200);
}).resize(); 
/*****Resize function end*****/

/*****Function Call start*****/
echartsConfig();
/*****Function Call end*****/