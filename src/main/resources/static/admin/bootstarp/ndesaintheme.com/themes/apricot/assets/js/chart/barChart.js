     var barChartData = {
          
            labels : ["January","February","March","April","May","June","July"],
            datasets : [
                {
                    fillColor : "rgba(106, 218, 228, 0.8)",
                    data : [65,59,90,81,56,55,40]
                },
                {
                    fillColor : "rgba(52, 152, 219, 0.8)",
                    data : [28,48,40,19,96,27,100]
                }
            ]

            
        }

    var myLine = new Chart(document.getElementById("canvas1").getContext("2d")).Bar(barChartData,{
        scaleShowLabels : false,
        pointLabelFontSize : 24
    });
