// Assign the data from `data.js` to a descriptive variable
var people = data;

// Select the button
var button = d3.select("#button");

// Complete the click handler for the form
button.on("click", function() {

  // Select the input element and get the raw HTML node
  var inputElement = d3.select("#patient-form-input");
  
  // Get the value property of the input element
  var inputValue = inputElement.property("value");

  console.log(inputValue);
  console.log(people);

  // Use the form input to filter the data by blood type
  function filterType(person) {
    return person.bloodType === inputValue;
  };
  
  var peopleBloodType = people.filter(filterType);
  
  var tbody = d3.select("tbody");

  tbody.html("");
  
  peopleBloodType.forEach(function(peopleTable){
  console.log(peopleTable);
    var row = tbody.append("tr");
    
    Object.entries(peopleTable).forEach(function([key, value]){
      console.log(key, value);
      var cell = row.append("td")
      cell.text(value);
    });
  });

  // BONUS: Calculate summary statistics for the age field of the filtered data

  // First, create an array with just the age values
  var ageBT = peopleBloodType.map(person => person.age);
  // Next, use math.js to calculate the mean, median, mode, var, and std of the ages
  var mean = math.mean(ageBT);
  var median = math.median(ageBT);
  var mode = math.mode(ageBT);
  var variance = math.var(ageBT);
  var sd = math.std(ageBT);
  
  // Finally, add the summary stats to the `ul` tag

   var mathList = d3.select("ul");
   mathList.html("");
 
   // append stats to the list
   mathList.append("li").text(`Mean: ${mean}`);
   mathList.append("li").text(`Median: ${median}`);
   mathList.append("li").text(`Mode: ${mode}`);
   mathList.append("li").text(`Variance: ${variance}`);
   mathList.append("li").text(`Standard Deviation: ${sd}`);
});

