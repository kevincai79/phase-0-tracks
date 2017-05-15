// RELEASE 0
// Set a compare variable equal to the value of first element of the array.
// Loop through the array and compare each the element to the compare variable.
// If the element's length is greater than the compare variable's length, assign the element's value to compare variable.
// Return the compare variable's value at the end.

function longestPhrase(array) {
  var longestPhrase = array[0];
  for(var i = 0; i < array.length; i++) {
    if (array[i].length > longestPhrase.length) {
      longestPhrase = array[i];
    }
  }
  return longestPhrase;
}

// Below function needs to change the array, not as good as above one.
// function longestPhrase(array) {
//   for(var i = 0; i < array.length - 1; i++) {
//     if (array[i].length > array[i+1].length) {
//       array[i+1] = array[i];
//     }
//   }

//   if (array[array.length -1].length === array[array.length -2].length ) {
//     return array[array.length - 2];
//   } else {
//     return array[array.length - 1];
//   }
// }

// RELEASE 1
// Set two objects' keys to array respetively.
// Check if two arrays share same keys.
// If two arrays have same keys, store them to a new array called sameKeys.
// Otherwise return false as they don't have share same key(s).
// Loop through the share keys and check if two objects have same value.
// If two objects have same value for same key, store the key to a array called pairKeys. return true.
// Otherwise return false.

function compareObject(obj1, obj2) {

  var arrKeys1 = Object.keys(obj1);
  var arrKeys2 = Object.keys(obj2);
  var sameKeys = [];
  var pairKeys = [];

  for (var i = 0; i < arrKeys1.length; i++) {
    if (arrKeys2.indexOf(arrKeys1[i]) !== -1) {
      sameKeys.push(arrKeys1[i]);
    }
  }

  if (sameKeys.length !== 0) {
    for (var j = 0; j < sameKeys.length; j++) {
      if (obj1[sameKeys[j]] === obj2[sameKeys[j]]) {
        pairKeys.push(sameKeys[j]);
      }
    }
    if (pairKeys.length !== 0) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}

// RELEASE 2
// Set an empty array randomStrings and a variable for letters.
// Repeat the times of parameter doing below:
  // Set a random length for a string.
  // Loop through the random length times doing below:
    // Set a random index for string.
    // Add all the random letters together to be a random string.
  // Add the random string to the randomStrings array.
// Return the value of randomStrings array.

function randomString(int) {
  var randomStrings = [];
  var letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

  for (var i = 0; i < int; i++) {
    var randomLength = Math.floor(Math.random() * 10 +1);
    var randomString = "";

    for (var j = 0; j < randomLength; j++) {
      var randomIndex = Math.floor(Math.random() * 52);
      randomString += letters.charAt(randomIndex);
    }
    randomStrings.push(randomString);
  }
  return randomStrings;
}

// Test code for release 0:
// var a = ["a", "hello wo", "sea world", "hi", "hellow world", "oala", "15"];
// var b = ["long phrase","longest phrase","longer phrase"];
// var c = ["tiger", "monkey", "cat", "snake", "pandas"]
// console.log(longestPhrase(a));
// console.log(longestPhrase(b));
// console.log(longestPhrase(c));

//Test code for release 1:
// console.log(compareObject({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
// console.log(compareObject({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
// console.log(compareObject({animal: "Dog", legs: 4}, {country: "US", tree: 3}));
// console.log(compareObject({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3, age: 7}));

// Test code for release 2:
// console.log(randomString(5));
// console.log(randomString(3));
// console.log(randomString(7));

