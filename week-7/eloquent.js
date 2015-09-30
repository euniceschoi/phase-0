// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var firstName = "Eunice"
var lastName = "Choi"
console.log(firstName + " " + lastName)

// Chapter 2
prompt("What is your favorite food?")
alert("Hey! That's my favorite too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//Looping a Triangle

var result = " "
for (var counter = 0; counter < 7; counter +=1)
  console.log(result += "#");

//FizzBuzz

for (var number = 0 ; number <100; number ++)
  if (number % 15 === 0 ) console.log("FizzBuzz");
  else if (number % 5 === 0) console.log("Buzz");
  else if (number % 3 === 0) console.log("Fizz");
  else console.log(number);

// ChessBoard

var size = 8
for (var i = 0; i < size; i++){
  var line=" ";
  for (var j = 0; j < size; j++){
    var total = i+j;
    if (total % 2 == 0){
      line += '#';
    }
    else {
      line += ' ';
    }
  }
  console.log(line);
}


// Functions

// Complete the `minimum` exercise.

function getMinimum(a,b){
  if (a < b)
    return a;
  else
    return b;
}

console.log(getMinimum(9,3))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
name:"Eunice",
age: 21,
favoriteFoods: ["sushi", "spaghetti", "anything Korean!"],
quirk: "sniffles a lot"
};