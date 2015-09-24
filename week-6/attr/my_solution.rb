#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData

end


class Greetings

end



# Reflection

#Release 1

#What are these methods doing?
# Each method is returning a trait of a profile, such as the name, age, and
# occupation. The first method "print_info" is printing all 3 : name, age,
# and occupation on the screen. This class also contains a few methods, which
# take in a new name, age, or occupation as an argument and changing the
# instance variables to the new parameter.

#How are they modifying or returning the value of instance variables?
# Since an instance variable scopes across methods within a class, the methods
# that are returning the value of instance variables simply has that instance
# variable in them. To modify an instance variable, the method takes an argument
# ,a new name for example, and sets it to the instance variable called name. It
# is important to note that the method which returns @name is placed after the
# method which allows you to modify the name instance variable so that it
# prints the most updated name.

#Release 2

#What changed between the last release and this release?
# In this release, there is no longer the method called what_is_age that returns
# the instance of age.

#What was replaced?
# Instead, there is now an attribute reader :age. This attribute reader allows you
# to "get" an instance variable that is set after the :. So now instead of having
# to write a whole another method that returns age, you can just set age as an
# attr_reader and it will still be able to called when you do p instance_of_profile.age.

#Is this code simpler than the last?
# Yes, definitely. Using an attribute reader gets rid of the tedious process of having
# to write a method that simply returns an instance variable.

#Release 3

#What changed between the last release and this release?
# Now, there is no longer the method called change_my_age which took a new age as an
# argument and set the instance variable age to that new age.

#What was replaced?
# Instead, there is now an attribute writer :age. This attr_writer allows you to
# set an instance variable to a new value. So now instead of having to write a whole
# another method that takes in a new age as an argument to change the age instance
# variable, you can just set it as an attribute writer. To use this you will simple
# write instance_of_profile.age = 28 to set it.

#Is this code simpler than the last?
# Yes, using an attribute writer takes away the work for writing a whole new method
# that will set a new value to an instance variable.
