// JavaScript Grocery List

// Pseudocode

// create a variable that equals an empty list
// create a constructor function that takes a list as an argument
// add property functions that add, remove, update, and print items on the list
// create a prototype for the constructor for practice



// Initial Solution

var groceryList = {};

function ListMaker(list){
        this.add = function(item,quantity){list[item] = quantity;}
        this.remove = function(item){delete list[item];}
        this.update = function(item,quantity){list[item] = quantity;}
        this.printList = function(list){
          for (var item in groceryList)
          {
            console.log(item + ": " + groceryList[item] + "\n")
          }
        }

};

ListMaker.prototype = {
    add: function(item,quantity){list[item] = quantity;},
    remove: function(item,quantity){delete list[item];},
    update: function(item,quantity){list[item] = quantity;},
    printList: function(list){
          for (var item in groceryList)
          {
            console.log(item + ": " + groceryList[item] + "\n")
          }
        }
}

var grocery = new ListMaker(groceryList);
grocery.add("strawberry",2);
grocery.add("brownies",3);
grocery.add("cookies",1);
grocery.update("cookies",5);
grocery.remove("brownies");
grocery.printList(groceryList);

// Refactored
var groceryList = {};

function ListMaker(list){
        this.add = function(item,quantity){list[item] = quantity;}
        this.remove = function(item){delete list[item];}
        this.update = function(item,quantity){list[item] = quantity;}
        this.printList = function(list){
          for (var item in groceryList)
          {
            console.log(item + ": " + groceryList[item] + "\n")
          }
        }

};

ListMaker.prototype = {
    add: function(item,quantity){list[item] = quantity;},
    remove: function(item,quantity){delete list[item];},
    update: function(item,quantity){list[item] = quantity;},
    printList: function(list){
          for (var item in groceryList)
          {
            console.log(item + ": " + groceryList[item] + "\n")
          }
        }
}

// TEST CODES

var grocery = new ListMaker(groceryList);
grocery.add("strawberry",2);
grocery.add("brownies",3);
grocery.add("cookies",1);
grocery.update("cookies",5);
grocery.remove("brownies");
grocery.printList(groceryList);

// Reflect

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// Concepts of instantiating constructors and using object functions were solidified.
// I learned how to write prototypes on code school and practice that as well
// (although not necessary in this case).


// What was the most difficult part of this challenge?
// The most difficult part was just getting it to work
// I had to debug after my initial solution.


// Did an array or object make more sense to use and why?
// An object made more sense, since you have an item
// that's a key and a quantity that's a value!