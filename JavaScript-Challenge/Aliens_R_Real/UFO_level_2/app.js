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


var filters = {};

function filterUpdate() {
  var newElement = d3.select(this).select("input");
  var idFiltered = newElement.attr("id");
  var elementValue = newElement.property("value");

  if (elementValue) {
    filters[idFiltered] = elementValue;
  };
  else {
    delete filters[idFiltered];
  };
  filterAlien();

};

function filterAlien() {
  var filteredData = tableData;
  Object.entries(filters).forEach(function([key, value]) {
    filteredData = filteredData.filter(row => row[key] === value);
  });
  alienTable(filteredData);
};

d3.selectAll(".filter").on("change", filterUpdate);

alienTable(tableData);
