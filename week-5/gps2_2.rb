#I paired with just my guide, Celeen. She drove while I navigated

# create methods for the following:
# create a new grocery list:
#   DEFINE a method, new_grocery_list, that takes no arguments
#     create a new, empty, hash
#   END

# add an item with a quantity to the list:
#   DEFINE a method, add_item, that takes three arguments: item, a string, quantity, an integer, ad list, a hash
#     add item/quantity to hash- item as key, quantity as value
#   END

# remove an item from the list:
#   DEFINE a method, remove_item, that takes one argument: item, a string
#     delete key/value pair associated with item
#   END

# update quantities for items in the list:
#   DEFINE a method, update_item, that takes two arguments: the item (string) and quantity (integer)
#     find the key (item) and update its value
#   END

# print out the final list:
#  DEFINE a method, print_list, that takes no arguments
#    prints hash
#  END

def new_grocery_list
  grocery_list = Hash.new
end

def add_item(item, quantity, list)
  list[item] = quantity
end

def remove_item(item, list)
  list.delete(item)
end

def update_item(item, quantity, list)
  list[item] = quantity
end

def print_list(list)
  list.each do |item, quantity|
    puts "item: #{item}, quantity: #{quantity}"
  end
end


# -------------DRIVER CODE--------------
puts "Test 1: #new_grocery_list returns an empty hash"
our_list = new_grocery_list
p our_list == {}

puts "Test 2: #add_item returns a non-empty hash"
add_item("lemonade", 2, our_list)
add_item("tomatoes", 3, our_list)
add_item("onions", 1, our_list)
add_item("ice cream", 4, our_list)
p our_list == {"lemonade" => 2,
                "tomatoes" => 3,
                "onions" => 1,
                "ice cream" => 4}

puts "Test 3: #remove_item deletes a key/value pair"
remove_item("lemonade", our_list)
p our_list == {"tomatoes" => 3,
                "onions" => 1,
                "ice cream" => 4}

puts "Test 4: #update_item updates the value of an item on the list"
update_item("ice cream", 1, our_list)
p our_list == {"tomatoes" => 3,
                "onions" => 1,
                "ice cream" => 1}

print_list(our_list)


# -------------Reflection--------------

# What did you learn about pseudocode from working on this challenge?
# Before, I was not sure whether my pseudocoding was optimal for translating
# to an initial solution. I asked my guide if she had any tips, and she had
# plenty of great ones. I learned that it could be very helpful if you
# organize and indent your pseudocode the way you would with the actual code.
# Although your pseudocode shouldn't be too "code-like" it was helpful to
# capitalize some key words, such as define and end.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# I think Hashes are beneficial for this challenge since you can organize key
# and values into items and quantities. Hashes are better for the layout of
# the grocery list.

# What does a method return?
# A method returns the last declared variable. You can make the last statement
# be "return ___" and it will return that variable.

# What kind of things can you pass into methods as arguments?
# You can pass any data types into methods as parameters (arguments). You can
# add integers, floats, strings, etc.

# How can you pass information between methods?
# You can pass information between methods via global variables, but that is
# not recommended. Instead, it helps to create a variable that would sort of
# act like an umbrella variable. For instance, when using the grocery list
# program, you could set a new variable to equal a new grocery list. Then you
# can add this variable as a parameter in methods and be accessing it every
# time.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# The concept of passing information between methods without using classes
# were solidified. I also learned some great ways to test code while coming
# up with it. You can create a driver code to test what should be expected
# for each block of code and make it have a boolean result.

