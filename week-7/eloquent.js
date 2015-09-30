// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var richness = 20
richness = 50 * richness
console.log(richness)

// prompt("What is your favorite food?")
// alert("Hey! That's my favorite too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//FizzBuzz

// Initial Solution
// for (var number = 1; number <=100; number++) {
// 	if (number % 3 == 0 && number % 5 == 0)
// 		console.log("FizzBuzz");
// 	else if (number % 3 == 0)
// 		console.log("Fizz");
// 	else if (number % 5 == 0)
// 		console.log("Buzz");
// 	else 
// 		console.log(number);
// }

for (var number =1 ; number <= 100; number ++) {
	var output = "";
	if (number % 3 == 0)
		output += "Fizz";
	if (number % 5 == 0)
		output += "Buzz";
	console.log(output || number);
}


// Functions

// Complete the `minimum` exercise.

function min(a, b) {
	if (a < b)
		return a;
	else
		return b;
}; 

console.log(min(0, 10));
console.log(min(0, -10));


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Chris Mark",
	age: 24,
	FavoriteFood: ["Mi Quang", "Korean BBQ Beef", "Burritos"],
	quirk: "I enjoy the darker side of music!"
};

console.log(me);