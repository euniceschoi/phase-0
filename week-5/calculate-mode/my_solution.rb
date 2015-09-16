# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

# def mode(things)
#   storage = Hash.new(0)
#   frequent_things = Array.new
# #   things.each do |i|
# #     unless storage.include?(i)
# #       storage[i]=0
# #     end
# #   end
#   things.each do |i|
#     storage[i] += 1
#   end
#   max = storage.max_by{|k,v| v}
#   storage.each do |k,v|
#     if v == max
#       frequent_things << k
#     end
#   end
#   puts frequent_things
# end

# def mode(things)
#   storage = Hash.new(0)
#   frequent_things =Array.new
#   things.each do |i|
#     storage[i] += 1
#   end
#   storage.each do |k,v|
#   if v == storage.values.max
#       frequent_things << k
#     end
#   end
#   return frequent_things
# end


def mode(things)
  storage = Hash.new(0)
  frequent_things = Array.new
  things.each do |i|
    storage[i] += 1
  end
  storage.each do |k,v|
    if v == storage.values.max
      frequent_things << k
    end
  end
  p frequent_things
end

# mode([1,1,2,6])


# 3. Refactored Solution




# 4. Reflection