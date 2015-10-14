// DOM Manipulation Challenge


// I worked on this challenge  with: Eric Shou 


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").className = "done";


// Release 1:
document.getElementById("release-1").style.display = 'none';



// Release 2:
document.getElementsByTagName("h1")[0].innerHTML= "I completed release 2.";



// Release 3:
document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 4:
var release4 = document.getElementById("release-3");
var release3 = document.getElementById("release-0");
release4.style.fontSize = "2em";
release3.style.fontSize = "2em";



// Release 5:
var temp = document.getElementById("hidden");
document.body.appendChild(temp.content.cloneNode(true));

/*
What did you learn about the DOM?
What are some useful methods to use to manipulate the DOM?

I learned how to manipulate HTML elements with the DOM. We were able to add classes change text, and change the size
of the fonts. 

You can use getElement to modify your desired element. .style is useful for manipulating styles in the HTML. 


*/