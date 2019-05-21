  var chartData = [
            {
                value : Math.random(),
                color: "#6ADAE4"
            },
            {
                value : Math.random(),
                color: "#F89406"
            },
            {
                value : Math.random(),
                color: "#FF0064"
            },
            {
                value : Math.random(),
                color: "#3498DB"
            },
            {
                value : Math.random(),
                color: "#1ABC9C"
            },
            {
                value : Math.random(),
                color: "#E74C3C"
            }
        ];
    var myPolarArea = new Chart(document.getElementById("canvas3").getContext("2d")).PolarArea(chartData);