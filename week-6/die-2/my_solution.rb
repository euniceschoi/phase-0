# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# class Die
#   def initialize(labels)
#   end

#   def sides
#   end

#   def roll
#   end
# end

class Die
  def initialize(array)
    @array = array
    if array.length == 0
      raise ArgumentError.new("array should not be empty")
    end
  end
  def sides
    return @array.length
  end
  def roll
    @array.shuffle
    return @array[0]
  end
end


# Refactored Solution








# Reflection