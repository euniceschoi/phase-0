# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: an array with random strings
# Output: random element from the array
# Steps:

#Name a new CLASS called die
#   DEFINE a METHOD called initialize and takes 1 argument, labels
#      Set INSTANCE VARIABLE labels
#      if argument label is an empty array
#         raise an argument error "array should not be empty"
#      END
#   END
#   DEFINE a METHOD called sides
#      return the number of element in the array called labels
#   END
#   DEFINE a METHOD called roll
#      return a random element from the label
#   END
#END

# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     if labels.length == 0
#       raise ArgumentError.new("array should not be empty")
#     end
#   end
#   def sides
#     return @labels.length
#   end
#   def roll
#     @labels.shuffle
#     return @labels[0]
#   end
# end


# Refactored Solution


class Die
  def initialize(labels)
    @labels = labels
    if labels.length == 0
      raise ArgumentError.new("array should not be empty")
    end
  end
  def sides
    return @labels.length
  end
  def roll
    return @labels[rand(@labels.length)]
  end
end


#-------------------------------Reflection---------------------------------

#What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#The main difference is that this die class takes an array of strings as an argument
#while the die class we created before only takes a number as an argument.
#In order for this die to spit out a random string from the array, we had to
#take a random index from the array, whilst before, we just asked it to pull
#a random number from the range of 1 to the argument number. The logic wasn't
#really any different. Both times, we had to pull a random placement from the
#range or array.

#What does this exercise teach you about making code that is easily changeable or modifiable?
#Classes are pretty easily modifiable if you are just adjusting the the methods
#within it, and want the class to pretty much do the same thing but with a
#different parameter. For instance, we could have easily modified the first die
#challenge code into this code by changing the argument and the roll method.

#What new methods did you learn when working on this challenge, if any?
#I learned that you could pull a random element from an array by using the same
#rand method. Instead of doing rand(1..number), you can do rand(array.length)
#and you're picking a random index from the array, and then you can return that.


#What concepts about classes were you able to solidify in this challenge?
#I am now understanding the concept of instance variables much better and also
#writing classes in general.