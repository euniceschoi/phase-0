# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode

#DEFINE a method that accepts a 2D array as an argument
#  LOOP through each array element in the array
#    SET COUNTER
#    LOOP through each element in the nested array
#      SET COUNTER
#      IF [i][j] == x
#        BINGO!
#      ELSIF




# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]


vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]

right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


class BingoScorer

  def initialize(array)
    @array = array
  end

  BINGO_ROW = ['x','x','x','x','x']

  def checker
    horizontal_checker
    vertical_checker
    diagonal_checker
  end

  def horizontal_checker
    @array.each do |nested_array|
      return "Bingo!" if nested_array == BINGO_ROW
    end
  end

  def vertical_checker
    @array.transpose.each do |nested_array|
      return "Bingo!" if nested_array == BINGO_ROW
    end
  end

  def diagonal_checker
    if (@array[0][0] + @array[1][1] + @array[2][2] + @array[3][3] +@array[4][4]) == BINGO_ROW.join
      return "Bingo!"
    elsif (@array[0][4] + @array[1][3] + @array[2][2] + @array[3][1] +@array[4][0]) == BINGO_ROW.join
      return "Bingo!"
    end
  end
end

game1 = BingoScorer.new(vertical)
puts game1.checker



right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


# left_to_right = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]




# Initial Solution
# class BingoScorer

#   #your code here

# end




# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

# Reflection

# What concepts did you review or learn in this challenge?
# What is still confusing to you about Ruby?
# What are you going to study to get more prepared for Phase 1?