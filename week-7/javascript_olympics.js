 // JavaScript Olympics

// I paired with Ian Lockwood on this challenge.

// This challenge took me [1.25] hours.


// Warm Up




// Bulk Up
// PSEUDOCODE
// 1. DEFINE a function called atheletes that takes an array of atheletes and events as an argument
// 2. DEFINE a function called win that returns the athelete name, "won the", and the event

function atheletes(array) {
    for (var i = 0; i < array.length; i++) {
      array[i].win = array[i].name + " won the " + array[i].event + "!"
      console.log(array[i].win)
  };
};

var sarah = {
  name: "Sarah Hughes",
  event: "Ladies Singles"
};

var chris = {
  name: "Chris Watkins",
  event: "Half-pipe"
};

var joe = {
  name: "Joe Georgeson",
  event: "Ice Dancing"
};

var array = [sarah, joe, chris]

atheletes(array)



// Jumble your words

function rev(x) {
return x.split("").reverse().join("")
};

var hello = "hello"

console.log(rev(hello))


// 2,4,6,8

function even(value) {
  return value % 2 == 0;
};

var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

console.log(array.filter(even))



// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name
  this.age = age
  this.sport = sport
  this.quote = quote
};



var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

/*
What JavaScript knowledge did you solidify in this challenge?
What are constructor functions?
How are constructors different from Ruby classes (in your research)?

Loops and iteration were definitely solidified in this challenge. We learned how to use objects in JavaScript and
learned how to create functions. The syntax is not as friendly as Ruby, so we did run into some trouble at times. 

I'm still not entire sure what a constructor function is. However, I do know that the way you create a constructor function
is using this.whatever here. I think it allows you to create a new object, but I'm not entire sure. 

JavaScript uses .new to create a new constructor and it is an actual keyword of JavaScript unlike Ruby. In addition, the way you
create a constructor object is to use this.whatever, whereas Ruby you create a new method for the class. 


*/
