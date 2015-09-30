// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Marcel.

// Pseudocode
// Input : An integer
// Output: String of number with commas
// Turn it into a string
// FOR var i equal to zero, less than or equal to the length of the integer, iterate every 3 characters
//  Insert comma before 4th character 
//  IF number >= 1000, then insert comma after every 3 digits
//  ELSE return integer
//  END


// Initial Solution

function separateComma(integer) {
 var number = integer.toString().split("")
  var digits = integer.toString(),
      i = -3;
 
  while(number.length + i > 0) {
    number.splice(i,0, ",");
    i -= 4;
  }
  
  return number.join("");
}

console.log(separateComma(900))
  

// Refactored Solution

function separateComma(integer) {
 var number = integer.toString().split(""),
     digits = integer.toString(),
      i = -3;
 
  while(number.length + i > 0) {
    number.splice(i, 0, ",");
    i -= 4;
  }
  
  return number.join("");
}

// Your Own Tests (OPTIONAL)



// Reflection

/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
What did you learn about iterating over arrays in JavaScript?
What was different about solving this problem in JavaScript?
What built-in methods did you find to incorporate in your refactored solution?

I think we tried to approach the problem from the perspective of Ruby and it tripped us up. The way you loop through arrays
is a bit different than Ruby since you don't have the .each method, etc. We eventually had to do some research in looping over
arrays in JavaScript. 

We learned to use the different types of iteration. We wanted to use a for loop, but decided that a while loop would be the best way
to go. I think setting up the variables in JavaScript is a lot different as I am not used to the syntax just yet. It was incredibly
frustrating at times when some things did not work. 

The way you inserted elements into arrays was different. We had to figure out how to use the splice method. We didn't know how to use the
RegEx so we decided not to incorporate that. Overall, this was much more difficult than expected. 

*/ 
