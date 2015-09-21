#Pseudocode
#DEFINE method that takes 2 arguments: an array of names and the number of group size
# => Randomize the order of the names
# => split the array of numbers by their index numbers
# => return new groups
#END


cohort = %w(bob sam phil jason jack eunice billy kelly micheal sarah michelle obama brian miley cyrus julienne bananaman kanye batman justin beiber scooby doo)
#%w changes list into array and turns each item into a string

def accountability_group(names, group_size)
  names.shuffle!
  return names.each_slice(group_size).to_a
end

cohort_size = cohort.length


#-------DRIVER CODE -----------
p cohort_size == 23

p accountability_group(cohort,4)
p accountability_group(cohort, 4).length == (cohort_size / 4.0).ceil

#-------Reflection-------------
# What was the most interesting and most difficult part of this challenge?
# The most interesting part of this challenge was finding some
# useful built in methods during refactoring. I found that .each_slice
# takes a number as an argument and splits an array into groups of that
# number. I also dicoverd %w, which turns a list (without commas), into
# an array with each item as a string.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Yes, I was very unsure about my pseudocode when I first began, but
#working with others and even learning from guides taught me some useful
#pseudocoding styles. This has helped me write more implementable
#pseudocodes.

# Was your approach for automating this task a good solution? What could have made it even better?
# My first approach was to loop through the
# array and grab group size amounts of names by adding the group size
#from index 0. It was complicated because I would have to take
#account of the remainder, which could be different every time
#depending on the number of names. This method wasn't working out
#and I discovered the splice method after research.

# What data structure did you decide to store the accountability groups in and why?
#I used an array, since a hash would not be necessary in this case.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#I learned severeal great Ruby methods, such as .each_slice, %w, and
#.ceil which rounds up numbers.
