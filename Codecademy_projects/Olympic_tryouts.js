/*
Olympic Tryouts - One of the functions projects from Codecademy
*/

// Runner times
var carlos = [9.6,10.6,11.2,10.3,11.5];
var liu = [10.6,11.2,9.4,12.3,10.1];
var timothy = [12.2,11.8,12.5,10.9,11.1];

// Define the function calculateAverage
var calculateAverage = function (raceTimes) {
  for ( i = 0; i < raceTimes.length; i++ ) {
    var totalTime = (totalTime || 0) + raceTimes[i];
  }
// assign variable averageTime
    var averageTime = totalTime / raceTimes.length;
    return averageTime;
};


var isQualified = function (runner) {
  // Assign the variable averageTime
  var averageTime = calculateAverage(runner);  
  if ( averageTime >= 11.5 ) { 
    // Times greater than or equal to 11.5 are too slow
	console.log("Close, but you didn't make the cut.");
  } else if ( averageTime < 11.5 ) {
	// An average time of less than 11.5 can join the team
	console.log("Welcome to the team, speedy!");
  }
};

// Call the function isQualified on liu and timothy
isQualified(liu);
isQualified(timothy);