/*Sparkline Init*/
  
$(document).ready(function() {
   "use strict";
   
   var sparklineLogin = function() { 
		if( $('#sparkline_1').length > 0 ){
			$("#sparkline_1").sparkline([2,4,4,6,8,5,6,4,8,6,6,2 ], {
				type: 'line',
				width: '100%',
				height: '50',
				lineColor: '#0fc5bb',
				fillColor: 'rgba(15, 197, 187,1)',
				minSpotColor: '#0fc5bb',
				maxSpotColor: '#0fc5bb',
				spotColor: '#0fc5bb',
				highlightLineColor: 'rgba(0, 0, 0, 0.6)',
				highlightSpotColor: '#0fc5bb'
			});
		}	
        if( $('#sparkline_2').length > 0 ){
			$("#sparkline_2").sparkline([0,2,8,6,8,5,6,4,8,6,6,2 ], {
				type: 'bar',
				width: '100%',
				height: '50',
				barWidth: '5',
				barSpacing: '5',
				barColor: 'rgba(15, 197, 187,1)',
				highlightSpotColor: 'rgba(15, 197, 187,1)'
			});
		}	
		if( $('#sparkline_3').length > 0 ){
			$("#sparkline_3").sparkline([20,4,4], {
				type: 'pie',
				width: '50',
				height: '50',
				sliceColors: ['rgba(248, 179, 45,1)', 'rgba(15, 197, 187,1)','rgba(15, 197, 187,1)']
			});
		}
		if( $('#sparkline_4').length > 0 ){
			$("#sparkline_4").sparkline([5,6,2,8,9,4,7,10,5,4,2], {
			type: 'bar',
			height: '200',
			width: '100%',
			barWidth: 10,
			barSpacing: 5,
			barColor: 'rgba(15, 197, 187,1)',
			});
		}	
		
		if( $('#sparkline_5').length > 0 ){
			$('#sparkline_5').sparkline([5, 6, 2, 9, 4, 7, 5, 8, 5,4], {
				type: 'bar',
				height: '200',
				width: '100%',
				barWidth: '10',
				barSpacing: '5',
				barColor: 'rgba(15, 197, 187,1)'
			});
			$('#sparkline_5').sparkline([5, 6, 2, 9, 4, 7, 10, 12,4,7,10], {
				type: 'line',
				height: '200',
				width: '100%',
				lineColor: '#0fc5bb',
				fillColor: 'rgba(15, 197, 187,1)',
				minSpotColor: '#0fc5bb',
				maxSpotColor: '#0fc5bb',
				spotColor: '#0fc5bb',
				highlightLineColor: 'rgba(0, 0, 0, 0.6)',
				highlightSpotColor: '#0fc5bb'
			});
		}
		
		if( $('#sparkline_6').length > 0 ){
			$("#sparkline_6").sparkline([0, 23, 43, 35, 44, 45, 56, 37, 40, 45, 56, 7, 10], {
				type: 'line',
				width: '100%',
				height: '200',
				lineColor: '#0fc5bb',
				fillColor: 'rgba(15, 197, 187,1)',
				minSpotColor: '#0fc5bb',
				maxSpotColor: '#0fc5bb',
				spotColor: '#0fc5bb',
				highlightLineColor: 'rgba(0, 0, 0, 0.6)',
				highlightSpotColor: '#0fc5bb'
			});
		}
		if( $('#sparkline_7').length > 0 ){
			$('#sparkline_7').sparkline([15, 23, 55, 35, 54, 45, 66, 47, 30], {
				type: 'line',
				width: '100%',
				height: '200',
				chartRangeMax: 50,
				lineColor: '#0fc5bb',
				fillColor: 'rgba(15, 197, 187,1)',
				minSpotColor: '#0fc5bb',
				maxSpotColor: '#0fc5bb',
				spotColor: '#0fc5bb',
				highlightLineColor: 'rgba(0, 0, 0, 0.6)',
				highlightSpotColor: '#0fc5bb'
			});
			$('#sparkline_7').sparkline([0, 13, 10, 14, 15, 10, 18, 20, 0], {
				type: 'line',
				width: '100%',
				height: '200',
				chartRangeMax: 40,
				lineColor: 'rgba(248, 179, 45,1)',
				fillColor: 'rgba(248, 179, 45,1)',
				composite: true,
				lineColor: '#f8b32d',
				fillColor: 'rgba(248, 179, 45,1)',
				minSpotColor: '#f8b32d',
				maxSpotColor: '#f8b32d',
				spotColor: '#f8b32d',
				highlightLineColor: 'rgba(0, 0, 0, 0.6)',
				highlightSpotColor: '#f8b32d'
			});
			if( $('#sparkline_8').length > 0 ){
				$("#sparkline_8").sparkline([20,10,4], {
					type: 'pie',
					width: '200',
					height: '200',
					sliceColors: ['rgba(248, 179, 45,1)', 'rgba(15, 197, 187,1)','rgba(15, 197, 187,1)']
				});
			}
		}	
   }
    var sparkResize;
 
        $(window).resize(function(e) {
            clearTimeout(sparkResize);
            sparkResize = setTimeout(sparklineLogin, 200);
        });
        sparklineLogin();

});