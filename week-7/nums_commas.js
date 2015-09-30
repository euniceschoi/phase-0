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
  var index = 3;
  var numToString = num.toString().split("").reverse();
  while (index < numToString.length ){
    numToString.splice(index, 0, ",")
    index += 4;
  }
  var finalNum = numToString.reverse().join("");
  return finalNum
}



// Your Own Tests (OPTIONAL)




// Reflection