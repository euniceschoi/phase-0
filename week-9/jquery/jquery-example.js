// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})


//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

$('body>h1').html("Bobolinks")
$('body>h1').css("color", "blue")
$('body>h1').css("border", "1px dotted black")
$('body>h1').css("visibility", "visible")

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('mouseover', function(){
  // e.preventDefault()
  $(this).attr('src', 'http://stream.loe.org/images/120302/top/TOPBobolink%20in%20Flight%20Paul%20Higgins.jpg');
  $(this).animate({right:'+=10px'},'slow');
})




$('img').on('mouseleave', function(){
  // e.preventDefault()
  $(this).attr('src', 'devbootcamp-logo.png')
})



//RELEASE 5: Experiment on your own






})  // end of the document.ready function: do not remove or write DOM manipulation below this.