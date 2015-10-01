 // JavaScript Olympics

// I paired [with: Shawn Watson] on this challenge.

// This challenge took me [1.3] hours.

// Bulk Up
var athlete1 = {
  name: "Sarah Hughes",
  event: "Ladies Singles"
}

var athlete2 = {
  name: "Shawn Watson",
  event: "Mens Singles"
}


var array = [athlete1, athlete2]

function win(input) {
  for(var index in input) {
  input[index].win = input[index].name + " has won the " + input[index].event;
  }
  console.log(array);
}

win(array)

// Jumble your words

function reverse(input) {
  var array1 = input.split("");
  var array2 = [];
  for(var index in array1) {
    array2.unshift(array1[index]);
  }
  console.log(array2);
}

reverse("Hello");


// 2,4,6,8

var evens = function(input) {
  var array = []
  for(var index in input) {
    if (input[index] % 2 === 0) {
      array.push(input[index]);
    }
  }
  console.log(array);
}

evens([2,5,7,9,11,13,15, 14, 18, 20000000]);



// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// I feel more comfortable with looping through arrays via Javascript and writing functions in
// general. Also remembering that index actually means the index number, not the element.

// What are constructor functions?
// My partner and I came across the conclusion that they act like Ruby classes.
// The this.() acts sort of as instance variables where the parameters you put in will be
// set as those variables. You instantiate new objects written using constructor functions.

// How are constructors different from Ruby classes (in your research)?
// I am still unsure on this but I know that Javascript doesn't have classes. constructors
// interact with prototypes which define the methods of the objects the constructor defines.
// Constructor functions provide a way to define behaviour which is shared by all new objects that
// are created by that function. Classes provide a way of creating objects with defined
// behaviour (methods) via the new method.