// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Ali Lyons .

// Pseudocode
/* Input: integer
   Output: string with commas at the thousands place
   Steps: create function separateComma
          convert integer to string
          if string length less than 4 return as is
          else
          reverse and split string
          create index variable equal to 3
          index variable at 3
          while index variable < array length
          place comma at array[index variable position]
          index += 3
          reverse string
          if first element = , remove
*/


// Initial Solution
// function separateComma(number){
//   var numString = number.toString();
//   if (numString.length < 4)
//     return numString;
//   var reversedString = numString.split('').reverse;
//   var index = 3;
//     while (index < reversedString.length) {
//       reversedString.splice(index,0, ",")
//     index += 3
//       }
//   var finalNum = reversedString.reverse;
// //   if (finalNum[0] == ",");
// //     finalNum.shift();
//   return finalNum;
// }

// console.log(separateComma(1234));

function separateComma(num) {
  var index = 3;
  var numToString = num.toString().split("").reverse();
  while (index < numToString.length ){
    numToString.splice(index, 0, ",")
    index += 4;
  }
  var finalNum = numToString.reverse().join("");
  return finalNum
}

console.log(separateComma(12340000000))
console.log(separateComma(1234))
console.log(separateComma(12))
console.log(separateComma(1234000000000))



// Refactored Solution

function separateComma(num) {
 var numToString = num.toString().split("").reverse();
 for (var index = 3; index < numToString.length; index += 4){
   numToString.splice(index, 0, ",")
 }
 var finalNum = numToString.reverse().join("");
 return finalNum
}

console.log(separateComma(12340000000))
console.log(separateComma(1234))
console.log(separateComma(12))
console.log(separateComma(1234000000000))

// Your Own Tests (OPTIONAL)




// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// It wasn't too difficult approaching the problem. We approached the problem similarly to how we
// approached Ruby, and my pair and I both had a logical idea of how we wanted to figure this out.

// What did you learn about iterating over arrays in JavaScript?
// I learned that it is similar to Ruby, but the syntax is a lot different. The for method is very
// useful in Javascript because it has sort of an outline, and you type in when you want your
// iterator to end and what to update.

// What was different about solving this problem in JavaScript?
// Definitely, the syntax

// What built-in methods did you find to incorporate in your refactored solution?
// We used .length, .split, .reverse, .splice (which was very useful)., and .join!