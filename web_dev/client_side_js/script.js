console.log("Script is running");
var header = document.getElementById("header");
header.style.border = "1px solid blue";

function addBorder(event) {
  event.target.style.border = "3px dotted orange";
}

var photo = document.getElementById("smiley-face");
photo.addEventListener("click", addBorder);