 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: to battle and capture Javamon
// Goals: level up through Ruby gems and CSS cookies and capture Javamon by beating it
//         (higher level is winner)
// Characters: Player, Javamon
// Objects: Player(position, level), Javamon, Ruby Gem, CSS Cookie
// Functions:moveUP, moveDOWN, moveForward, moveBack

// Pseudocode
//Declare Player object that has properties as position and level
//Player object has methods for moving up, down, right, left
//Declare Javamon object that has properties as position
//Javamon object is assigned random positions everytime the player moves
//Display where player is but not where Javamon is
//Declare Ruby gem and CSS cookie as position
//Ruby gem and CSS cookie move randomly
//Check position and
//  if player position same as Ruby Gem, player levels up 10 points
//  if player position same as CSS Cookie, player levels up 5 points
//  if player position same as Javamon, it's player's level vs. Javamon random
//    number level. Whoever has higher number wins.
  //    If player wins, player catches Javamon!
  //    If player loses, game over!

// Initial Code

//Declare Player object that has properties as position and level
var player = {
  posX: 0,
  posY: 0,
  level: 30,
  success: false,

//Player object has methods for moving up, down, right, left
  move: function(direction) {
    if(direction === 'right'){
      this.posX +=10;
    }
    else if(direction === 'left'){
      player.posX -=10;
    }
    else if(direction === 'up'){
      player.posY +=10;
    }
    else if(direction === 'down'){
      player.posY -=10;
    }

    //Declare Javamon object within player object that has properties as position
    // When player moves, Javamon moves randomly
    javamon.posX = Math.floor((Math.random()*100)+1);
    javamon.posY = Math.floor((Math.random()*100)+1);


    //Check position of Player
    console.log("Player's position is at" + player.posX + "," + player.posY);

    // Check position of Bonuses
    rubyGem.posX = Math.floor((Math.random()*100)+1);
    rubyGem.posY = Math.floor((Math.random()*100)+1);

    cssCookie.posX = Math.floor((Math.random()*100)+1);
    cssCookie.posY = Math.floor((Math.random()*100)+1);

    // Check position of Bonuses
    console.log("A Ruby gem has been found at" + rubyGem.posX + "," + rubyGem.posY);
    console.log("A CSS cookie has been found at" + cssCookie.posX + "," + cssCookie.posY);

    //if player position same as Ruby Gem, player levels up 10 points
    if (player.posX === rubyGem.posX && player.posY === rubyGem.posY){
      player.level += 10;
      console.log("You found a Ruby gem! You are now level" + player.level);
    }

    //if player position same as CSS Cookie, player levels up 5 points
    else if (player.posX === cssCookie.posX && player.posX === cssCookie.posY){
      player.level += 5;
      console.log("You found a cssCookie! How delicious! You are now level" + player.level);
    }

    //if player position same as Javamon, it's player's level vs. Javamon random
    else if (player.posX === javamon.posX && player.posY === javamon.posY){
      var playerReply = prompt("You have encountered Javamon! Ready to attack? Y/N ");
      if (playerReply === "Y"){
        if (player.level > javamon.level){
          console.log("Javamon is took weak! You win!");
          console.log("You have caught Javamon!")
        }
        if (player.level < javamon.level){
          console.log("Javamon is too strong! You lose!")
        }
        if (player.level === javamon,levl){
          console.log("It's a tie! Time to find some more gems and cookies")
        }
      }
      if (playerReply === "N"){
        console.log("A Javamon trainer must also be brave. You lose!")
      }
  }
}
}



var javamon = {
  posX: Math.floor((Math.random()*100)+1),
  posY: Math.floor((Math.random()*100)+1),
  level: Math.floor((Math.random()*100)+1),
};

var rubyGem = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};

var cssCookie = {
posX: Math.floor((Math.random()*100)+1),
posY: Math.floor((Math.random()*100)+1)
};


player.move('up');
player.move('forward');

// Refactored Code






// Reflection
//
//
//
//
//
//
//
//