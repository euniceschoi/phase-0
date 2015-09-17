# Calculate the mode Pairing Challenge

# I worked on this challenge [with:Rosslyn Sinclair-Chin]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array of strings or integers
# What is the output? (i.e. What should the code return?) an array of the mode
# What are the steps needed to solve the problem?

# define a method that takes in an array as an argument
# set up a hash with the keys being each element in the array and the value being 0
# iterate through the array
#  everytime we encounter each element in the array, we will add 1 to the value in the hash corresponding to the key.
# find the max value in the hash
# iterate over the hash to find all the keys with the max value
#  add those keys to the array
# return an array of keys with the highest value

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




# 3. Refactored Solution

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
  return frequent_things
end

# 4. Reflection

#Which data structure did you and your pair decide to implement and why?
#We decided to implement a hash because we realized it would we useful to
#use keys and values by making an element count as a key and the frequency
#of that element count as a value.

#Were you more successful breaking this problem down into implementable
#pseudocode than the last with a pair?
#Yes, we were pretty successful in writing an implementable code. My pair and I
#both want to improve our pseudocoding skills, and we think we were able to #write one together that wasn't too "code-y" or too "general."

#What issues/successes did you run into when translating your pseudocode to code?
#We were successful in writing the order of the steps we wanted to take and
#writing most of the iterables. We had more trouble with specific methods we
#needed in order to carry out some of the pseudocode. For example, we tried
#using the max_by hash method to get the max value but were getting errors.
#We ended up fixing this by using hash.values.max instead.

#What methods did you use to iterate through the content? Did you find any
#good ones when you were refactoring? Were they difficult to implement?
#We used the each.do method to iterate. We found the hash.values.max method
#for finding the max value of our hash. They were not that difficult to implement.