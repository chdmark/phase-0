//N7 vs. Reaper Game

// Mission Description:
// Overall Misssion : Kill the boss / reaper
// Goals : Attempt to kill the reaper with weapons that have the most power
// Characters: N7, Reaper
// Objects: Player (health, power), Reaper(health, energy)
// Want to simulate a fight that takes turns much like mass effect 3. Idea is a bit complicated
//but I think we can get the basic fighting down. 
// Weapons should be based on level or skill of player, but that is too complicated to implement

// Pseudocode:
// Create an N7 and reaper character that will have properties such as health and and energy
// Add a function that will let him attack the reaper.
// Add a function that will allow the reaper to attack the player 
// IF the reaper's health is zero, then the player wins!
// ELSE, the reaper wins 


// //Initial Solution
// //Basic attributes such as health and energy for reaper to track progress
// var playerN7 = {
// 	health: 100, 
// 	energy: 100,
// };

// var reaper = {
// 	health: 100,
// 	energy: 100,  
	
// }; 
// //Create a function attack for the player with variety of weapons at disposal
// function playerAttack(weapon) {
// 	if(weapon === "fist") { 
// 		reaper.health -= 25;
// 		playerN7.energy -= 20;
// 	}
// 	else if(weapon === "sword") {
// 		reaper.health -= 50;
// 		playerN7.energy -= 40;
// 	}
// 	else if(weapon === "shotgun") {
// 		reaper.health -= 75;
// 		playerN7.energy -= 70;
// 	}
// 	else { (weapon === "kamehameha") //included because of childhood obsession
// 		reaper.health -= 95; 
// 		playerN7.energy -= 100;    //Need to implement a feature that won't let player/reaper attack if energy goes down to zero. 
// 	}
// };  								
// //Create a function attack for the reaper with variety of weapons at disposal
// function reaperAttack(weapon) {
// 	if(weapon === "laserbeams") {
// 		playerN7.health -= 40;
// 		reaper.energy -= 40;
// 	}
// 	else if(weapon === "fireball") {
// 		playerN7.health -= 60;
// 		reaper.energy -= 50; 
// 	}
// 	else { (weapon === "electric shock")
// 		playerN7.health -= 80;
// 		reaper.energy -= 70;
// 	}
// };

 
// // playerAttack("fist")
// // console.log(reaper.health)
// // reaperAttack("laserbeams")
// // console.log(playerN7.health)
// // playerAttack("sword")
// // console.log(reaper.health)
// // reaperAttack("fireball")


// playerAttack("fist");
// console.log(reaper.health);
// reaperAttack("laserbeams"); // Need to implement feature where you have to take turns attacking
// console.log(playerN7.health);
// playerAttack("shotgun");

// if(reaper.health === 0) {
// 	console.log("Mission accomplished: You saved the world");
// } else { (playerN7.health === 0)
// 	console.log("Earth will detonate in 5, 4, 3, 2, 1...Game over");
// };

//Refactored Solution
var playerN7 = {
	health: 100, 
	energy: 100,
};

var reaper = {
	health: 100,
	energy: 100,  
	
}; 
//Create a function attack for the player with variety of weapons at disposal
function playerAttack(weapon) {
	if(weapon === "fist") { 
		reaper.health -= 25;
		playerN7.energy -= 20;
		console.log("You inflicted 25 points of damage. The reaper has a remaining health of " + reaper.health);
	}
	else if(weapon === "sword") {
		reaper.health -= 50;
		playerN7.energy -= 40;
		console.log("You inflicted 50 points of damage. The reaper has a remaining health of " + reaper.health);
	}
	else if(weapon === "shotgun") {
		reaper.health -= 75;
		playerN7.energy -= 70;
		console.log("You inflicted 75 points of damage. The reaper has a remaining health of " + reaper.health);
	}
	else { (weapon === "kamehameha") //included because of childhood obsession
		reaper.health -= 95; 
		playerN7.energy -= 100;    //Need to implement a feature that won't let player/reaper attack if energy goes down to zero. 
		console.log("You inflicted 95 points of damage. The reaper has a remaining health of " + reaper.health);
	}
};  								
//Create a function attack for the reaper with variety of weapons at disposal
function reaperAttack(weapon) { //These attacks need to be random in my opinion
	if(weapon === "laserbeams") {
		playerN7.health -= 40;
		reaper.energy -= 40;
		console.log("The reaper inflicted 40 points of damage on you. You have a remaining health of " + reaper.health);
	}
	else if(weapon === "fireball") {
		playerN7.health -= 60;
		reaper.energy -= 50; 
		console.log("The reaper inflicted 50 points of damage on you. You have a remaining health of " + reaper.health);
	}
	else { (weapon === "electric shock")
		playerN7.health -= 80;
		reaper.energy -= 70;
		console.log("The reaper inflicted 70 points of damage on you. You have a remaining health of " + reaper.health);
	}
};

 
// playerAttack("fist")
// console.log(reaper.health)
// reaperAttack("laserbeams")
// console.log(playerN7.health)
// playerAttack("sword")
// console.log(reaper.health)
// reaperAttack("fireball")


playerAttack("fist");

reaperAttack("laserbeams"); // Need to implement feature where you have to take turns attacking

playerAttack("shotgun");

if(reaper.health === 0) {
	console.log("Mission accomplished: You saved the world");
} else { (playerN7.health === 0)
	console.log("Earth will detonate in 5, 4, 3, 2, 1...Game over");
};

/*Reflection
What was the most difficult part of this challenge?
What did you learn about creating objects and functions that interact with one another?
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
How can you access and manipulate properties of objects?

I think the most difficult part of this challenge was implementing a working solution that fit all of the criteria in my head. Creating a game is challenging
as you want many different elements in the game. I used to be a heavy gamer myself, so I wanted to replicate some complicated ideas, but realized
it wasn't feasible at my level. 

I learned how to create objects using the object literal notation and use the dot notation to interact with those properties. I created two functions
for different attacks for the reaper and the main character. 

I did not learn about any built in methods. I wanted to use a random function for attacks, but I did not know how to implement them. 

You can access by using this or the dot notation. 
*/