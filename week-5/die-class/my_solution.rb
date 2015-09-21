# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [3] hours on this challenge.

# 0. Pseudocode

# Input:sides which is an integer
# Output:return random number from 1 to the number of sides, as if you rolled a dice
# Steps:
# DEFINE a class called Die
# => DEFINE a method called initialize that will take a number as an argument
# => set the number of sides as an instance variable to use across methods
# => raise argument error if number is equal to or less than 1
# => END
# => DEFINE a method called sides that returns instance variable sides
# => END
# => DEFINE a method called roll
# => this method will return a random number from 1 to number of sides
# => END

# 1. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     if sides < 1
#       raise ArgumentError.new("number needs to be greater than 1")
#   end
# end

#   def sides
#     return @sides
#   end

#   def roll
#     return rand(1..sides)
#   end

# end



# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("number needs to be greater than 1")
  end
end

  def sides
    return @sides
  end

  def roll
    return rand(1..sides)
  end

end


# 4. Reflection

# What is an ArgumentError and why would you use one?
# An argument error is used to raise errors for arguments that are not
# correct. An argument error can be used if the wrong number of arguments
#are passed. In this case, I raised an argument if the number of sides
#is less than or equal to 1. This is because a dice should not just have
#one or zero sides.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#The new methods I implemented is .rand. I was already familiar with
#this built in method, so I did not have much challenge using it.

# What is a Ruby class?
# A Ruby class is an object that is initialized and assigned to a
#global variable. In the class, instance variables and methods are set
# for that global variable. For instance, if we set "Music" as a new
#class, we can set instance variables "Songs" and "Artists." We can also
#set methods that perform actions we want to carry out using these
#instance variables. Maybe we could return Songs and Artists organized
#into a hash. A class allows multiple methods to be ran by default
# when a new object of the class is called.

# Why would you use a Ruby class?
# Classes are useful in object-oriented programming. They act as
#"blue prints" used to create objects. Classes are in fact objects
# themselves of "Class." You would use a class to define the instance
#variables and methods that make up a created object.

# What is the difference between a local variable and an instance variable?
#A local variable only has scope within the context it is set in.
#For instance, a local variable in a method only has scope within that
#method. An instance variable has scope in one instance of a class and
#can be used in all methods of the class.

# Where can an instance variable be used?
#They are usually set in the intialize method in the class then can be
#used in the class methods.