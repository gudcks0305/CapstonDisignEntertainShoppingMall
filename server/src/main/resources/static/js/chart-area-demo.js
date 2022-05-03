// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';
index.init();


// Area Chart Example
var date = new Date();

var datelist = [];
for (let i = 0; i<12; i++){
  if(i === 0){
      date.setMonth(date.getMonth() - 10);
  }else{
    if(date.getMonth() === 0) {
      date.setFullYear(date.getFullYear() - 1);
      date.setMonth(12);
    }
    date.setMonth(date.getMonth() + 1);
  }
  datelist[i] = date.getFullYear().toString() +"년 "+ date.getMonth().toString() + "월";
}
var tbdata = document.getElementById("datatablesSimple")
console.log(tbdata);
var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: [datelist[0],datelist[1],datelist[2],datelist[3],datelist[4],datelist[5],datelist[6],datelist[7],datelist[8],datelist[9],datelist[10],datelist[11],],
    datasets: [{

      label: "불량",
      lineTension: 0.3,
      backgroundColor: "rgba(2,117,216,0.2)",
      borderColor: "rgba(2,117,216,1)",
      pointRadius: 5,
      pointBackgroundColor: "rgba(2,117,216,1)",
      pointBorderColor: "rgba(255,255,255,0.8)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "rgba(2,117,216,1)",
      pointHitRadius: 50,
      pointBorderWidth: 2,
      data: [100, 30, 26, 18, 182, 28, 31, 33, 25, 24, 32, 31, 3],
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 200,
          maxTicksLimit: 5
        },
        gridLines: {
          color: "rgba(0, 0, 0, .125)",
        }
      }],
    },
    legend: {
      display: false
    }
  }
});
