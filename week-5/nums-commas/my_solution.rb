# Numbers to Commas Solo Challenge

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

#DEFINE a method called separate_comma that takes one argument called integer
#  Split the integer into an array
#    Return the array if the array length is less than 4
#    If not, find the remainder of the array length divided by 3
#      If the remainder is greater than 0 then reverse the array
#      start a counter at three and give it a variable n
#      BEGIN LOOP
#      while n is less than or equal to the length of reversed array
#        insert a comma in the nth index of the array
#        n counter goes up by 4
#      END
#    END
#    return the reversed array, reversed back to normal
#END

# What is the input? an integer argument
# What is the output? (i.e. What should the code return?) integer with commas in correct spots (ex. 1,000)
# What are the steps needed to solve the problem? Steps needed are to reverse the integer and add commas
# after ever 3 zeroes if the integer length is greater than 3


# 1. Initial Solution

# def separate_comma(integer)
#   int_array = integer.to_s.split('')
#   return int_array.join if int_array.count < 4

#   remainder = int_array.count % 3

#   reversed_array = int_array.reverse
#   n= 3
#   while n <= reversed_array.count
#     reversed_array.insert(n, ",")
#     n = n + 4
#   end

#   if reversed_array.last == ","
#     reversed_array.pop
#   end
#   return reversed_array.reverse.join
# end
# puts separate_comma(1) == "1"
# puts separate_comma(1)
# puts separate_comma(100) == "100"
# puts separate_comma(100)
# puts separate_comma(1000) == "1,000"
# puts separate_comma(1000)
# puts separate_comma(1000000) == "1,000,000"
# puts separate_comma(1000000)
# puts separate_comma(1000000000) == "1,000,000,000"
# puts separate_comma(1000000000)


# 2. Refactored Solution
def separate_comma(integer)
  int_array = integer.to_s.split('')
  return int_array.join if int_array.count < 4

  reversed_array = int_array.reverse
  n= 3
  while n <= reversed_array.count
    reversed_array.insert(n, ",")
    n = n + 4
  end

  if reversed_array.last == ","
    reversed_array.pop
  end
  return reversed_array.reverse.join
end



# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# My process for breaking the problem down was first to use a modulo method and add commas at the position of
# the remainder. Then I would add commas after every 4 positions from that first comma. However, this was
# very complicated, and I realized it is much more simple to just reverse the integer and add commas at every
# intervals of 4.

# Was your pseudocode effective in helping you build a successful initial solution?
#It was more helpful for my code layout, but I ended up altering my solution. My pseudocode helped me realize
#that my original plan was more complicated than it should be.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# I did not alter much from my initial solution. The only change was to delete the remainder variable because
# it was no longer needed. Some methods I used for my solution were ".split", ".pop", ".join", and ".reverse."
# I did not have much difficulties, and they helped with all the quick alterations needed.

# How did you initially iterate through the data structure?
# I used a loop to add in the commas starting at position 3 and then going up in intervals of 4.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# My refactored solution similar to my initial solution. I think it is readable because of the layout
# of my code and it is easy to follow along. I did not condense it too much, so it still makes logical sense.