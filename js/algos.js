function longestPhrase(array) {
  for(var i = 0; i < array.length - 1; i++) {
    if (array[i].length > array[i+1].length) {
      array[i+1] = array[i];
    }
  }

  if (array[array.length -1].length === array[array.length -2].length ) {
    return array[array.length - 2];
  } else {
    return array[array.length - 1];
  }
}

var a = ["a", "hello wo", "sea world", "hi", "hellow world", "oala", "15"];
var b = ["long phrase","longest phrase","longer phrase"];
var c = ["tiger", "monkey", "cat", "snake", "pandas"]
console.log(longestPhrase(a));
console.log(longestPhrase(b));
console.log(longestPhrase(c));