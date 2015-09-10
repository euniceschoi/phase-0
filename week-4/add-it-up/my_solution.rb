# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [Shawn Watson].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of all numbers in array
# Steps to solve the problem.

# Define a Method named total that accepts an Array of numbers
# Iterate over each item in the array
# Add them together

# 1. total initial solution

def total(array)
  final = 0
  array.each do |x|
    final += x
  end
  return final
end

# 3. total refactored solution

def total(array)
  final = 0
  array.each do |x|
    final += x
  end
  return final
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:array
# Output: sentence with all things in array concatenated
# Steps to solve the problem.

# Create a Method "sentence_maker" that accepts an array of strings
# iterate over each string in the array
# With each string, attach it to the next one

# 5. sentence_maker initial solution


def sentence_maker(array)
  string = ""
  array.each do |x|
    if x == array.last
      string += x + "."
    else
      string += x + " "
    end
  end
  return string.capitalize
end


# 6. sentence_maker refactored solution

def sentence_maker(array)
  string = ""
  array.each do |x|
    if x == array.last
      string += x.to_s + "."
    else
      string += x.to_s + " "
    end
  end
  return string.capitalize
end