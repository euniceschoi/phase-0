/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

// var gradebook = {
//   addScore: function(name,score){
//   gradebook[name]["test scores"].push(score);
//   },
//   getAverage: function(name){
//     return average(gradebook[name]["test scores"]);
//   }
// }

// for(var i = 0; i < students.length; i++) {
//     gradebook[students[i]] = {};
//     gradebook[students[i]]["test scores"] = scores[i];
//   }
//   // return gradebook;
// // function addStudent() {
// //   for(var i = 0; i < students.length; i++) {
// //     gradebook[students[i]] = {};
// //     gradebook[students[i]]["test scores"] = scores[i];
// //   }
// //   return gradebook;
// // }

// function average(array){
//   var total = 0;
//   for(var i = 0; i<array.length; i++){
//     total += array[i];
//   }
//   return total/array.length;
// }

var gradebook = {}

  for(var i = 0; i < students.length; i++) {
    gradebook[students[i]] = {};
    gradebook[students[i]]["testScores"] = scores[i];
  }



function average(array){
  var total = 0;
  for(var i = 0; i<array.length; i++){
    total += array[i];
  }
  return total/array.length;
}

gradebook["addScore"] = function(name,score){
  gradebook[name]["testScores"].push(score);
  },
gradebook["getAverage"] = function(name){
    return average(gradebook[name]["testScores"]);
  }


gradebook.addScore("Joseph",90)
console.log(gradebook.getAverage("Joseph"))
console.log(gradebook)




// __________________________________________
// Refactored Solution


var gradebook = {}

function addStudents(){
  for(var i = 0; i < students.length; i++) {
    gradebook[students[i]] = {};
    gradebook[students[i]]["testScores"] = scores[i];
  }
}
addStudents()

function average(numbersCollection){
  var total = 0;
  for(var i = 0; i<numbersCollection.length; i++){
    total += numbersCollection[i];
  }
  return total/numbersCollection.length;
}

gradebook["addScore"] = function(name,score){
  gradebook[name]["testScores"].push(score);
}
gradebook["getAverage"] = function(name){
  return average(gradebook[name]["testScores"]);
}





// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// I learned that you can add functions to objects the
// way you would add a new value to a property. You
// set the property of an object and give it the name
// of the function then you make that equal to a
// function. I think this is a very useful tool.


// How did you iterate over nested arrays in JavaScript?
// We set the function average to find the average
// of numbers in an array. Then we called that function
// in a another functinon that specified to get the
// average for an array for a particular property (name)
//by accessing [student][testScores].

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// no new methods, but I learned how to set properties
// as functions.g

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)