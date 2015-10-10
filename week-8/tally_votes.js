// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Regina Compton
// This challenge took me [4] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// loop through each name in each title in voteCount:
//   IF name doesn't exist in officers and vote count number is greater than number in officers,
//   put name in officers

// __________________________________________
// Initial Solution

// Initial Solution

//   for (var key in validation_messages) {
//    if (validation_messages.hasOwnProperty(key)) {
//        var obj = validation_messages[key];
//         for (var prop in obj) {
//           // important check that this is objects own property
//           // not from prototype prop inherited
//           if(obj.hasOwnProperty(prop)){
//             console.log(prop + " = " + obj[prop]);
//           }
//        }
//     }
// }

// for(var person in votes){
//   var name = votes[person];
//     for(var title in name) {
//       var votee = name[title];
//         if (title == "president"){
// //           voteCount.president = name[title][1];

//         }

//         else if (title == "vicePresident" && votee != voteCount.vicePresident[votee]) {
//           voteCount.vicePresident[votee] = 1;
//             if (voteCount.vicePresident[votee] = votee){
//               voteCount.vicePresident[votee] = 2;
//             }
//           }
//         }


//     }



// console.log(voteCount);

for(var person in votes){
  var name = votes[person];
    for(var title in name) {
      var votee = name[title];

        if (title == "president") {
             if (voteCount.president.hasOwnProperty(votee)) {
               voteCount.president[votee] += 1;
             }
             else {
              voteCount.president[votee] = 1;
             }
           }

        else if (title == "vicePresident") {
             if (voteCount.vicePresident.hasOwnProperty(votee)) {
                voteCount.vicePresident[votee] += 1;
             }
             else {
              voteCount.vicePresident[votee] = 1;
             }
           }

        else if (title == "secretary") {
             if (voteCount.secretary.hasOwnProperty(votee)) {
                voteCount.secretary[votee] += 1;
             }
             else {
              voteCount.secretary[votee] = 1;
             }
          }

        else if (title == "treasurer") {
             if (voteCount.treasurer.hasOwnProperty(votee)) {
                voteCount.treasurer[votee] += 1;
             }
             else {
              voteCount.treasurer[votee] = 1;
             }
          }

        }
      };

console.log(voteCount);



var highVotes = {}

for (var title in voteCount){
  var max = 0;
  for (var name in voteCount[title]){
    var count = voteCount[title][name];
    if (count > max) {
      max = count;
//       console.log(max);
      var winner = name;
//       console.log(winner);
      highVotes[title] = winner
    }
  }
}

console.log(highVotes);

for (var office in officers){
  for (var title in highVotes){
  if (office == title){
    officers[office] = highVotes[title];
  }
  }
}







// __________________________________________
// Refactored Solution

for (var person in votes){
  var name = votes[person];
  for (var title in voteCount){
    if (voteCount[title][name[title]]) {
      (voteCount[title][name[title]]) += 1 }
    else {
      (voteCount[title][name[title]]) = 1
    }
  }
}



for (var title in voteCount){
  var max = 0;
  for (var name in voteCount[title]){
    var count = voteCount[title][name];
    if (count > max) {
      max = count;
//       console.log(max);
      var winner = name;
//       console.log(winner);
      officers[title] = winner
    }
  }
}






// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// I learned that it is very challenging! It was
// difficult for me to use bracket notation, and
// follow along with where I was looping.
// I learned that you can refer to other objects
// using the same bracket notation, if that other
// object has the same property name.

// Were you able to find useful methods to help you with this?
// The method that helped me the most was splitting
// the challenge into small parts. I first tried
// tackling just the president list, then expanded
// from there.

// What concepts were solidified in the process of working through this challenge?
// iterating through JS objects was not fully solidified
// but I am definitely more comfortable with it.
// Using for.. var.. in. was more solidified as well.




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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)