// Factorial


//Release 1: Pseudocode

// Create a function called factorial that takes a single integer
// IF number == 0, return 1
// ELSE
//	Set a counter to 1
// Use a for loop to loop up to the number. Increment by 1. Set tthe counter equal to counter * i.
// Return the counter

//Release 2: Initial Solution
function factorial(number) {
	if (number == 0) {
		return 1;
	} else {
		var counter = 1;
		for (var i = 1; i <= number; i++) {
			counter *= i;
			
		} return counter;
	}
}

console.log(factorial(5));

// Release 3: Refactor
// I saw some things on recursion, but I'm not sure how to use that yet. 


// Release 4: Reflect

/*
What concepts did you solidify in working on this challenge? 
What was the most difficult part of this challenge?
Did you solve the problem in a new way this time?
Was your pseudocode different from the Ruby version? What was the same and what was different?

I solidified using a for loop to loop through a number. Just basic iteration. 

The most difficult part of this challenge was to use the for loop instead of each. I think each is a lot easier, but this requires a bit more thinking.

Yes, in Ruby we used a range of numbers. This time, I set a counter to 1 and used a for loop.

It was different because I didn't include the range of numbers like I did with Ruby. I also said to use a for loop. 

*/