# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

#3 arguments
#create new empty array
#if empty, return 0
#else
#for each element in list_of_integer, if element is >= lower_bound and <= upper_bound
  #emptyarray.push(x)r
  #end
#return emptyarray.count
# end

def count_between(list_of_integers, lower_bound, upper_bound)
  new_array = []
  if list_of_integers.count == 0
    return 0
  else
    list_of_integers.each do |x|
      if x >= lower_bound && x <= upper_bound
        new_array.push(x)
      end
  end
  return new_array.count
end
end