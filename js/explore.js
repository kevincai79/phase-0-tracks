// Set a function take a string as a parameter and reverse the string
// For the string, take each character from the back by order
// Add the taken characters by order and combine them as a new string

function reverse(string) {
  var reverseString = "";
  for (var i = 0; i<string.length; i++ ) {
    reverseString += string[string.length - 1 - i];
  }
  return reverseString;
}

var testString = reverse("Devbootcamp");

if ("happy".length > 3) {
  console.log(testString);
} else {
  console.log("Need more practice!");
}