// from data.js
var tableData = data;

var tbody = d3.select("tbody");

function alienTable(sighting) {
    tbody.html("");

    sighting.forEach(function(alienRow){
        console.log(alienRow);
        var row = tbody.append("tr");
  
    Object.entries(alienRow).forEach(function([key,value]){
        var cell = row.append("td");
          cell.text(value);
        }
      );
    });
  };

function handleClick() {
    var date = d3.select("#datetime").property("value");
    var filteredSighting = tableData;
  
    if (date) {
      filteredSighting = filteredSighting.filter(row => row.datetime === date);
    }
  
    alienTable(filteredSighting);
}
  d3.selectAll("#filter-btn").on("click", handleClick);

  alienTable(tableData);
  
    