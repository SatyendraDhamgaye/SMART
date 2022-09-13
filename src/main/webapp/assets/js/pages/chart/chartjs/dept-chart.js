$(document).ready(function() 
		{
	new Chart(document.getElementById("dept-bar"), {
		type: 'bar',
		data: {
			labels: ["First","Second","Thirds"],
			datasets: [
			           {
			        	   label: "Pass",
			        	   backgroundColor: "#3e95cd",
			        	   data: [
			                      randomScalingFactor(),
			                      randomScalingFactor(),
			                      randomScalingFactor()
			                  ]
			           }, {
			        	   label: "Fail",
			        	   backgroundColor: "#8e5ea2",
			        	   data: [
			                      randomScalingFactor(),
			                      randomScalingFactor(),
			                      randomScalingFactor()
			                  ]
			           }
			           ]
		},
		options: {
			title: {
				display: true,
				text: 'Department Performance'
			}
		}
	});
		});
                
                
                $(document).ready(function() {
	var randomScalingFactor = function() {
        return Math.round(Math.random() * 100);
    };

    var config = {
        type: 'doughnut',
        data: {
            datasets: [{
                data: [
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor()
                ],
                backgroundColor: [
                    window.chartColors.red,
                    window.chartColors.yellow,
                    window.chartColors.blue
                ],
                label: 'Dataset 1'
            }],
            labels: [
                "First",
                "Second",
                "Third",
            ]
        },
        options: {
            responsive: true,
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: 'Number of Student'
            },
            animation: {
                animateScale: true,
                animateRotate: true
            }
        }
    };

        var ctx = document.getElementById("dept-doughnut").getContext("2d");
        window.myDoughnut = new Chart(ctx, config);
    
	});