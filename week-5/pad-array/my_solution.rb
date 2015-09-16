# Pad an Array

# I worked on this challenge [with: Lauren Jin ]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? pad method with 3 arguments:array, size, and optional object
# What is the output? (i.e. What should the code return?)
#should return the array if its size is greater than the minimum size or the array with padding (nil or optional object) until it equals the size of minimum size
# What are the steps needed to solve the problem?

# There are 3 arguments for the method
  # First is the array
  # Second is the number of elements
  # Optional argument (object to pad the array)
# create new array to clone array
# If array is equal or greater than integer, put array (or new array)
# If array is less than integer, add optional argument (or nil) into new array until the length of array equals minimum size


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   # Your code here
# end

# def pad(array, min_size, value = nil) #non-destructive
#   # Your code here
# end

# def pad(array, size, string=nil)
#   new_array = array.clone
#   if array.length >= size
#     return new_array
#   else
#     while new_array.length < size
#       new_array << string
#     end
#   end
#   return new_array
# end

# def pad!(array, size, string=nil)
#   new_array = array
#   if array.length >= size
#     return array
#   else
#     while new_array.length < size
#       new_array << string
#     end
#   end
#   return new_array
# end

# 3. Refactored Solution
def pad(array, size, padding_object=nil)
  new_array = array.clone
  if array.length >= size
    return new_array
  else
    while new_array.length < size
      new_array << padding_object
    end
  end
  return new_array
end

def pad!(array, size, padding_object=nil)
  if array.length >= size
    return array
  else
    while array.length < size
      array << padding_object
    end
  end
  return array
end
#got rid of new_array in pad! method

# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# We were successful in breaking down the problem into if else statements
# and figuring out how to return the array with the padding.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#We were able to translate for it to carry out the function of returning
#the array with padding or without. However, we struggled passing the rspec
#test and making the nondestructive/ destructive part work.


# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#No, the errors we encountered were due to the fact that our nondestructive
#method was in fact, permanently changing the original array. Therefore,
# we weren't passing tests. What we did to fix this was create a new array,
#for us to pass on the padding to, so that the original array stays the same.


# When you refactored, did you find any existing methods in Ruby to clean up your code?
# We did find some interesting methods, such as padding and fill.
#However, I felt that for the destructive method, just keeping our
#code as array << string was as simple as can be.


# How readable is your solution? Did you and your pair choose descriptive variable names?
#I think our solution is pretty readable. We kept our variables simple and
#straightforward.


# What is the difference between destructive and non-destructive methods in your own words?
#Destructive methods will change an array or hash permanently and is labeled
#with an exclamation mark. For instance, adding more elements to an array will
#permanently change that array to always have those elements. If you were to
#call that array, it would be its changed version.
#Non-destructive methods don't make permanent changes. In our code, for example
# we created a clone of our array and gave it a new name, so that whatever we
#add to the new array won't affect the original array.