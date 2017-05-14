function longestPhrase(array) {
  for(var i = 0; i < array.length - 1; i++) {
    if (array[i].length > array[i+1].length) {
      array[i+1] = array[i];
    }
  }
  return array[array.length - 1];
}

var a = ["a", "hello wo", "sea world", "hi", "hellow world", "oala", "15"];
console.log(longestPhrase(a));