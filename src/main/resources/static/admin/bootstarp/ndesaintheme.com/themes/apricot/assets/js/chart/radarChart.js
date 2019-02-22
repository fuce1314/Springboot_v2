      var radarChartData = {
            labels : ["Eating","Drinking","Sleeping","Designing","Coding","Partying","Running"],
            datasets : [
                {
                    fillColor : "rgba(255, 0, 100, 0.5)",
                    strokeColor : "rgba(255, 0, 100, 1)",
                    pointColor : "rgba(255, 0, 100, 1)",
                    pointStrokeColor : "#fff",
                    data : [65,59,90,81,56,55,40]
                },
                {
                    fillColor : "rgba(255, 185, 0, 0.5)",
                    strokeColor : "rgba(255, 185, 0, 1)",
                    pointColor : "rgba(255, 185, 0, 1)",
                    pointStrokeColor : "#fff",
                    data : [28,48,40,19,96,27,100]
                }
            ]
            
        }

    var myRadar = new Chart(document.getElementById("canvas2").getContext("2d")).Radar(radarChartData,{
        scaleShowLabels : false, 
        pointLabelFontSize : 12
    });
    