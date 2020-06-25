var options = {
  series: {{gender_death|safe}},
  chart: {
  width: 380,
  type: 'donut',
  dropShadow: {
    enabled: true,
    color: '#111',
    top: -1,
    left: 3,
    blur: 3,
    opacity: 0.2
  }
},
stroke: {
  width: 0,
},
plotOptions: {
  pie: {
    donut: {
      labels: {
        show: true,
        total: {
          showAlways: true,
          show: true
        }
      }
    }
  }
},
labels: ["Male","Female"],
dataLabels: {
  dropShadow: {
    blur: 3,
    opacity: 0.8
  }
},
fill: {
type: 'pattern',
  opacity: 1,
  pattern: {
    enabled: true,
    style: ['circles','slantedLines'],
  },
},
states: {
  hover: {
    filter: 'none'
  }
},
theme: {
  palette: 'palette2'
},
title: {
  text: "Bangladesh Gender Wise Case"
},
responsive: [{
  breakpoint: 480,
  options: {
    chart: {
      width: 200
    },
    legend: {
      position: 'bottom'
    }
  }
}]
};

var chart = new ApexCharts(document.querySelector("#chart_gender_death"), options);
chart.render();
