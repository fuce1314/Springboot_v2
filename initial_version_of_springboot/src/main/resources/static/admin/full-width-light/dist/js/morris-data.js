/*Morris Init*/
$(function() {
	"use strict";
	
    if($('#morris_area_chart').length > 0)
		// Area Chart
		Morris.Area({
			element: 'morris_area_chart',
			data: [{
				period: '2010 Q1',
				iphone: 2666,
				ipad: null,
				itouch: 2647
			}, {
				period: '2010 Q2',
				iphone: 2778,
				ipad: 2294,
				itouch: 2441
			}, {
				period: '2010 Q3',	
				iphone: 4912,
				ipad: 1969,
				itouch: 2501
			}, {
				period: '2010 Q4',
				iphone: 3767,
				ipad: 3597,
				itouch: 5689
			}, {
				period: '2011 Q1',
				iphone: 6810,
				ipad: 1914,
				itouch: 2293
			}, {
				period: '2011 Q2',
				iphone: 5670,
				ipad: 4293,
				itouch: 1881
			}, {
				period: '2011 Q3',
				iphone: 4820,
				ipad: 3795,
				itouch: 1588
			}, {
				period: '2011 Q4',
				iphone: 15073,
				ipad: 5967,
				itouch: 5175
			}, {
				period: '2012 Q1',
				iphone: 10687,
				ipad: 4460,
				itouch: 2028
			}, {
				period: '2012 Q2',
				iphone: 8432,
				ipad: 5713,
				itouch: 1791
			}],
			xkey: 'period',
			ykeys: ['iphone', 'ipad', 'itouch'],
			labels: ['iPhone', 'iPad', 'iPod Touch'],
			pointSize: 0,
			lineWidth:0,
			fillOpacity: 1,
			pointStrokeColors:['#8BC34A', '#0fc5bb', '#f8b32d'],
			behaveLikeLine: true,
			grid: false,
			hideHover: 'auto',
			lineColors: ['#8BC34A', '#0fc5bb', '#f8b32d'],
			resize: true,
			redraw: true,
			smooth: true,
			gridTextColor:'#878787',
			gridTextFamily:"Open Sans",
		});

    if($('#morris_donut_chart').length > 0) {
		// Donut Chart
		Morris.Donut({
			element: 'morris_donut_chart',
			data: [{
				label: "Download Sales",
				value: 12
			}, {
				label: "In-Store Sales",
				value: 30
			}, {
				label: "Mail-Order Sales",
				value: 20
			}],
			colors: ['rgba(139,195,74,1)', 'rgba(248, 179, 45,1)', 'rgba(243, 57, 35,1)'],
			resize: true,
			labelColor: '#878787',
		});
		$("div svg text").attr("style","font-family: Open Sans").attr("font-weight","400");
	}	

    if($('#morris_line_chart').length > 0)
		// Line Chart
		Morris.Line({
			// ID of the element in which to draw the chart.
			element: 'morris_line_chart',
			// Chart data records -- each entry in this array corresponds to a point on
			// the chart.
			data: [{
				d: '2012-10-01',
				visits: 802
			}, {
				d: '2012-10-02',
				visits: 783
			}, {
				d: '2012-10-03',
				visits: 820
			}, {
				d: '2012-10-04',
				visits: 839
			}, {
				d: '2012-10-05',
				visits: 792
			}, {
				d: '2012-10-06',
				visits: 859
			}, {
				d: '2012-10-07',
				visits: 790
			}, {
				d: '2012-10-08',
				visits: 1680
			}, {
				d: '2012-10-09',
				visits: 1592
			}, {
				d: '2012-10-10',
				visits: 1420
			}, {
				d: '2012-10-11',
				visits: 882
			}, {
				d: '2012-10-12',
				visits: 889
			}, {
				d: '2012-10-13',
				visits: 819
			}, {
				d: '2012-10-14',
				visits: 849
			}, {
				d: '2012-10-15',
				visits: 870
			}, {
				d: '2012-10-16',
				visits: 1063
			}, {
				d: '2012-10-17',
				visits: 1192
			}, {
				d: '2012-10-18',
				visits: 1224
			}, {
				d: '2012-10-19',
				visits: 1329
			}, {
				d: '2012-10-20',
				visits: 1329
			}, {
				d: '2012-10-21',
				visits: 1239
			}, {
				d: '2012-10-22',
				visits: 1190
			}, {
				d: '2012-10-23',
				visits: 1312
			}, {
				d: '2012-10-24',
				visits: 1293
			}, {
				d: '2012-10-25',
				visits: 1283
			}, {
				d: '2012-10-26',
				visits: 1248
			}, {
				d: '2012-10-27',
				visits: 1323
			}, {
				d: '2012-10-28',
				visits: 1390
			}, {
				d: '2012-10-29',
				visits: 1420
			}, {
				d: '2012-10-30',
				visits: 1529
			}, {
				d: '2012-10-31',
				visits: 1892
			}, ],
			// The name of the data record attribute that contains x-visitss.
			xkey: 'd',
			// A list of names of data record attributes that contain y-visitss.
			ykeys: ['visits'],
			// Labels for the ykeys -- will be displayed when you hover over the
			// chart.
			labels: ['Visits'],
			// Disables line smoothing
			pointSize: 1,
			pointStrokeColors:['#8BC34A'],
			behaveLikeLine: true,
			grid:false,
			gridTextColor:'#878787',
			lineWidth: 2,
			smooth: true,
			hideHover: 'auto',
			lineColors: ['#8BC34A'],
			resize: true,
			gridTextFamily:"Open Sans"
		});

	if($('#morris_bar_chart').length > 0)
	   // Bar Chart
		Morris.Bar({
			element: 'morris_bar_chart',
			data: [{
				device: 'iPhone',
				geekbench: 136
			}, {
				device: 'iPhone 3G',
				geekbench: 137
			}, {
				device: 'iPhone 3GS',
				geekbench: 275
			}, {
				device: 'iPhone 4',
				geekbench: 380
			}, {
				device: 'iPhone 4S',
				geekbench: 655
			}, {
				device: 'iPhone 5',
				geekbench: 1571
			}],
			xkey: 'device',
			ykeys: ['geekbench'],
			labels: ['Geekbench'],
			barRatio: 0.4,
			xLabelAngle: 35,
			pointSize: 1,
			barOpacity: 1,
			pointStrokeColors:['#8BC34A'],
			behaveLikeLine: true,
			grid: false,
			gridTextColor:'#878787',
			hideHover: 'auto',
			barColors: ['#8BC34A'],
			resize: true,
			gridTextFamily:"Open Sans"
		});
	
	if($('#morris_extra_line_chart').length > 0)
		Morris.Line({
        element: 'morris_extra_line_chart',
        data: [{
            period: '2010',
            iphone: 50,
            ipad: 80,
            itouch: 20
        }, {
            period: '2011',
            iphone: 130,
            ipad: 100,
            itouch: 80
        }, {
            period: '2012',
            iphone: 80,
            ipad: 60,
            itouch: 70
        }, {
            period: '2013',
            iphone: 70,
            ipad: 200,
            itouch: 140
        }, {
            period: '2014',
            iphone: 180,
            ipad: 150,
            itouch: 140
        }, {
            period: '2015',
            iphone: 105,
            ipad: 100,
            itouch: 80
        },
         {
            period: '2016',
            iphone: 250,
            ipad: 150,
            itouch: 200
        }],
        xkey: 'period',
        ykeys: ['iphone', 'ipad', 'itouch'],
        labels: ['iPhone', 'iPad', 'iPod Touch'],
        pointSize: 2,
        fillOpacity: 0,
		lineWidth:2,
		pointStrokeColors:['#8BC34A', '#f8b32d', '#f33923'],
		behaveLikeLine: true,
		grid: false,
		hideHover: 'auto',
		lineColors: ['#8BC34A', '#f8b32d', '#f33923'],
		resize: true,
		gridTextColor:'#878787',
		gridTextFamily:"Open Sans"
        
    });
	
	if($('#morris_extra_bar_chart').length > 0)
		// Morris bar chart
		Morris.Bar({
			element: 'morris_extra_bar_chart',
			data: [{
				y: '2006',
				a: 100,
				b: 90,
				c: 60
			}, {
				y: '2007',
				a: 75,
				b: 65,
				c: 40
			}, {
				y: '2008',
				a: 50,
				b: 40,
				c: 30
			}, {
				y: '2009',
				a: 75,
				b: 65,
				c: 40
			}, {
				y: '2010',
				a: 50,
				b: 40,
				c: 30
			}, {
				y: '2011',
				a: 75,
				b: 65,
				c: 40
			}, {
				y: '2012',
				a: 100,
				b: 90,
				c: 40
			}],
			xkey: 'y',
			ykeys: ['a', 'b', 'c'],
			labels: ['A', 'B', 'C'],
			barColors:['#8BC34A', '#f8b32d', '#f33923'],
			barOpacity:1,
			hideHover: 'auto',
			grid: false,
			resize: true,
			gridTextColor:'#878787',
			gridTextFamily:"Open Sans"
		});

});
