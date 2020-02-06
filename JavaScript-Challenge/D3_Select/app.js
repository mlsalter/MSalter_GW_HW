// Use D3 to select the table body
var gradesTbody = d3.select("tbody");

// Use D3 to select the table
var gradesTable = d3.select("table");

// Use D3 to set the table class to `table table-striped`
gradesTable.attr("class", ".grades table table-striped");

// Loop through an array of grades and build the entire table body from scratch
var grades = [["Malcolm", 80], ["Zoe", 85], ["Kaylee", 99], ["Simon", 99], ["Wash", 79]];

// gradeTbody.html("");

grades.forEach(function(grade){
    console.log(grade);
    var row = gradesTbody.append("tr");
  
  Object.entries(grade).forEach(function([key, value]){
    console.log(key, value);
    var cell = row.append("td")
    cell.text(value);
  })
});
