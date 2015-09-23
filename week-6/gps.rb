# Your Names
# 1) Eunice Choi
# 2) Nathan Park

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.


# Initial Solution

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # Hash containing 3 food items as keys , and service sizes as values
  error_counter = 3
  # initialize error_counter with 3

  library.each do |food| #Iterate through each key,value pair
    if library[food] != library[item_to_make] #Make sure item_to_make is inside library hash
      p error_counter += -1 #decrease counter by one for each element that is inside library hash
    end
  end

  if error_counter > 0 #once counter hits 0, no error
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  # return array of values from hash, [0] is first item of array

  serving_size_mod = order_quantity % serving_size
  #Calculate mod if order_quantity is greater than serving size, else 0

  #enter this case statement
  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}" #When there are no leftovers, create n number of food item
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover serving. Suggested baking items: TODO: MAKE THIS FEATURE" #When there are leftovers, Make the rounded down number of order_quantity. You have the remainder number of leftover servings.
  end
end

# Refactored

def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError, "#{item_to_make} is not a valid input" unless menu.has_key?(item_to_make)


  serving_size = menu[item_to_make]
  leftovers = order_quantity % serving_size > 0

  if order_quantity < serving_size
    return "Make 1 of #{item_to_make}, you have #{serving_size - order_quantity} extra servings"

  elsif leftovers
    return "Make #{(order_quantity/serving_size) + 1} of #{item_to_make}, you have #{serving_size - (order_quantity - serving_size)} leftover serving."

  else
    return "Make #{order_quantity/serving_size} of #{item_to_make}"
  end
end

p serving_size_calc("pie", 6)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
# I learned that you can refactor a code but it can be further
# modified for readability. For instance, we wrote an if statement
# to test if the argument item is on the "menu" hash. However, our
# guide suggested we use "raise Argument Error UNLESS." It is much more
# concise and readable. Using while and unless statements can really
# help with readability.

# Did you learn any new methods? What did you learn about them?
# I didn't learn any new methods, but I was reminded of some that I had
# forgotten about. I also that, although it would raise nil, you could
# call an array (key-value pair) from a hash. I also learned that
# you could do values_at instead of value_at, to get an array of the
# values.

# What did you learn about accessing data in hashes?
# I learned that hashes are simple when int comes to accessing data.
# You can directly access like "serving_size = menu[item_to_make]"

# What concepts were solidified when working through this challenge?
# This challenge was a great practice for refactoring and testing using
# driver code. I always tend to learn a better way of approaching coding
# processes during GPS. Accessing keys and key value pairs from a hash
# was solidified as well.