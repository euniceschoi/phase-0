# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

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



# 3. Refactored Solution







# 4. Reflection