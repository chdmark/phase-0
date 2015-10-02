// PSEUDOCODE
// CALCULATE THE SUM, MEAN, AND MEDIUM FOR COLLECTION OF NUMBERS


// Define the “sum” function and allow it to take two arguments (even and odd numbered arrays).
// Create a sum variable and set it to 0
// Use a loop (either “for” or “while”) that takes the variable in the array (“i” is popular default in JS) and increases in value if conditions are met
// Return both arrays

function sum(a, b) {
  var counter = 0;
  for (var i = 0; i < a.length; i++) {
    counter += a[i]
  };
  for (var j = 0; j < b.length; j++) {
    counter += b[j]
  }
  return counter
}
console.log(sum([6,7,8], [5,4,3]))



// Define the “mean” function and allow it to take two arguments
// Create a variable and set it to 0
// Use a loop (either “for” or “while”) that takes the variable in the array (“i” is popular default in JS) and increases if conditions are met
// Return both arrays

function mean(a, b) {
  var counter = 0; 
  for (var i = 0; i < a.length; i++) {
    counter += a[i]
  };
  for (var j = 0; j < b.length; j++) {
    counter += b[j]
  }
  return counter / (a.length + b.length)
}

console.log(mean([2], [2]))
console.log(mean([10, 5, 7], [12, 2]))

// Define the “median” and allow it to take two arguments
// Sort numbers from lowest to highest
// Use conditional statements
// If length is odd (perhaps use %), return median. Else, length is even
// Return median

function median(a, b) {
  var sorted = (a.concat(b)).sort(function(x,y) {return x-y});
  if (sorted.length % 2 !== 0) {
    return sorted[Math.floor(sorted.length/2)];
  }
  else {
   return ((sorted[sorted.length/2] + sorted[sorted.length/2 - 1]) /2);
  };
}
 var x = [4, 5, 6] 
 var y = [5, 4] 
 
 var c = [9, 8, 7]
 var d = [5, 4, 2, 2, 2, 2, 2] 
console.log(median(x, y))

console.log(median(c,d))