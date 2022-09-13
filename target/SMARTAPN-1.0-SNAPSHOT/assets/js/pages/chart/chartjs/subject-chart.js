$(document).ready(function() 
		{
	new Chart(document.getElementById("subject-bar"), {
		type: 'bar',
		data: {
			labels: ["PHP", "WBP", "ETI", "CGR","JSP"],
			datasets: [
			           {
			        	   label: "Pass",
			        	   backgroundColor: "#3e95cd",
			        	   data: [
			                      randomScalingFactor(),
			                      randomScalingFactor(),
			                      randomScalingFactor(),
			                      randomScalingFactor(),
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
			                      randomScalingFactor(),
			                      randomScalingFactor(),
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
				text: 'Result according to My Subjects'
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
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor()
                ],
                backgroundColor: [
                    window.chartColors.red,
                    window.chartColors.yellow,
                    window.chartColors.blue,
                    window.chartColors.green,
                    window.chartColors.orange
                ],
                label: 'Dataset 1'
            }],
            labels: [
                "PHP",
                "WBP",
                "ETI",
                "CGR",
                "JSP"
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

        var ctx = document.getElementById("subject-doughnut").getContext("2d");
        window.myDoughnut = new Chart(ctx, config);
    
	});