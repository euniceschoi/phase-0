# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: guessing integer
# Output: true or false
# Steps:

#Name a CLASS called GuessingGame
#   DEFINE an initializer method that takes an integer as an argument called "answer"
#      Set the argument to an instance variable
#   END
#
#   DEFINE an instance method called "guess" that takes an integer as an input
#      IF the guess is larger than the answer
#         return the symbol :high
#      END
#      IF the guess is smaller than the answer
#         return the symbol :low
#      END
#      IF the guess is equal to the answer
#         return the symbol :correct
#      END
#   END
#
#   DEFINE an instance method called "solved?"
#      IF the guess matches the answer
#         return true
#      ELSE the guess doesn't match the answer
#         return false
#      END
#   END
#END


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
      if @guess > @answer
        return :high
      elsif @guess < @answer
        return :low
      elsif @guess == @answer
        return :correct
      end
  end

  def solved?
    if @guess == @answer
      return true
    end
    if @guess != @answer
      return false
    end
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    return :high if @guess > @answer
    return :low if @guess < @answer
    return :correct if @guess == @answer
  end

  def solved?
    return true if @guess == @answer
    return false if @guess != @answer
  end
end

# ----------------------------Reflection------------------------------
# How do instance variables and methods represent the characteristics and
# behaviors (actions) of a real-world object?
# Instance variables and methods represent the characteristics and behaviors of
# a real-world objects because they allow for different "instances" or sort of
# like "ID's" for a variable. For instance a student can walk to school everyday.
# This student doesn't refer to one student, it could refer to a high schooler
# named Bob or a middle schooler named Sarah. As an instance variable, "studnet,"
# can represent several different instances of a student. The same goes with a
# book. The instance variable "book," can represent "Dracula" or "Odd Thomas."

# When should you use instance variables? What do they do for you?
# You should use instance variables when you need a variable to exist across
# methods, but only for a particular class instance. They allow you to use that
# instance variable across different functions within a class.


# Explain how to use flow control. Did you have any trouble using it in this
# challenge? If so, what did you struggle with?
# Using flow control involves the use of if and else statements. True or false
# statements, such as "If 2 < 4," guide a function to return a certain result.
# The only trouble I had using flow control was getting it to pass the rspec test.
# I realized that I hadn't set the guess number as an instance variable so it wasn't
# allowing the result to be an instance and was causing my code to fail.

# Why do you think this code requires you to return symbols?
# What are the benefits of using symbols?
# This code requires you to return symbols because every Symbol shares the same object id
# and are immutable. You can, therefore, reuse them instead of creating a new copy every
# time. You would want to use a symbol when you may need to use a string multiple times.
# Symbols save time as well and are productive in this way.
