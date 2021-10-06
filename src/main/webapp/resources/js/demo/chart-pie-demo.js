var xValues = ["Don", "Promesse"];
var yValues = [51, 49];
var barColors = [
  "#b91d47", 
  "#2b5797"
];

new Chart("myPieChart", {
  type: "doughnut",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    title: {
      display: true,
      text: "Estimation des dons"
    }
  }
});