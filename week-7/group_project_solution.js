function sum(numberCollection1, numberCollection2){
  var sum = 0;
  for(i=0; i < numberCollection1.length; i++){
    sum += numberCollection1[i];
  }
  for(i=0; i < numberCollection2.length; i++){
    sum += numberCollection2[i];
  }
  return sum;
}

function mean(numberCollection1, numberCollection2){
  var total = sum(numberCollection1, numberCollection2);

  return total / (numberCollection1.length + numberCollection2.length);
}

function median(numberCollection1, numberCollection2){
  var combinedCollection = numberCollection1.concat(numberCollection2);
  combinedCollection.sort();
  if(combinedCollection.length % 2 != 0){
    return combinedCollection[Math.floor(combinedCollection.length / 2)]
  } else {
    return (combinedCollection[(combinedCollection.length / 2) - 1] + combinedCollection[(combinedCollection.length / 2)]) / 2;
  }
}


// Refactored

// userstory: As a user, I want to calculate the sum of two groups of numbers.
function sum(numberCollection1, numberCollection2){
  var totalSum = 0;
  numberCollection1.forEach(function(item, index){
    totalSum += item;
  })
  numberCollection2.forEach(function(item, index){
    totalSum += item;
  })
  return totalSum;
}

// userstory: As a user, I want to calculate the whole average of two groups of numbers.
// I want to find the sum of all the numbers first then find the average by dividing the sum
// by the number of integers.
function mean(numberCollection1, numberCollection2){
  var totalSum = sum(numberCollection1, numberCollection2);
  return totalSum / (numberCollection1.length + numberCollection2.length);
}

// userstory: As a user, I want to calculate the median of two groups of numbers. I want to
// combine all the numbers first then find the median.
function median(numberCollection1, numberCollection2){
  var combinedCollection = numberCollection1.concat(numberCollection2);
  var half = Math.floor(combinedCollection.length / 2);
  combinedCollection.sort();
  if(combinedCollection.length % 2 != 0){
    return combinedCollection[half]
  } else {
    return (combinedCollection[half- 1] + combinedCollection[half]) / 2;
  }
}