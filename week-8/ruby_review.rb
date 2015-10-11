# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [3] hours on this challenge.

# Pseudocode

#CLASS called BingoScorer
#
#  DEF an initialize method that takes an array as an argument
#    set array to instance variable
#  END
#
#  DEF a method that checks for horizontal bingo
#    set a variable that equals a row of 'x's
#    LOOP through each nested array in array
#      IF nested array is equal to a row of 'x's
#        return BINGO
#      ELSE
#        check for vertical bingo
#  END
#
#  DEF a method that checks for vertical bingo
#    flip the board horizontally (ruby method called transpose)
#    do the same check you did for horizontal bingo
#    IF no bingo
#      check for diagonal bingo
#  END
#
#  DEF a method that checks for diagonal bingo
#    check to see if the first index of first nested array, second index of second
#    nested aray, third index of third nested array.. etc are equal to a row of 'x's
#    check to see if the first index of last nested array, second index of second
#    to last nested array.. etc are equal to a row of 'x's
#    IF YES
#      BINGO
#    IF NO
#      you have no bingo!
#  END




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


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
# class BingoScorer

#   def initialize(array)
#     @array = array
#   end

#   BINGO_ROW = ['x','x','x','x','x']

#   def checker
#     @array.each do |nested_array|
#       return "BINGO you have a horizontal!" if nested_array == BINGO_ROW
#     end
#     vertical_checker
#   end

#   def vertical_checker
#     @array.transpose.each do |nested_array|
#       return "BINGO you have a vertical!" if nested_array == BINGO_ROW
#     end
#     diagonal_checker
#   end

#   def diagonal_checker
#     first_check = []
#     second_check = []
#     first_check.push(@array[0][0], @array[1][1], @array[2][2], @array[3][3], @array[4][4])
#     second_check.push(@array[0][4], @array[1][3], @array[2][2], @array[3][1], @array[4][0])
#     if first_check == BINGO_ROW || second_check == BINGO_ROW
#       return "BINGO you have a diagonal!"
#     else
#       return "Try again!"
#     end
#   end
# end




# Refactored Solution
class BingoScorer

  def initialize(array)
    @array = array
  end

  BINGO_ROW = ['x','x','x','x','x']

  def checker
    @array.each do |nested_array|
      return "BINGO you have a horizontal!" if nested_array == BINGO_ROW
    end
    vertical_checker
  end

  def vertical_checker
    @array.transpose.each do |nested_array|
      return "BINGO you have a vertical!" if nested_array == BINGO_ROW
    end
    diagonal_checker
  end

  def diagonal_checker
    first_check = []
    second_check = []
    first_check.push(@array[0][0], @array[1][1], @array[2][2], @array[3][3], @array[4][4])
    second_check.push(@array[0][4], @array[1][3], @array[2][2], @array[3][1], @array[4][0])
    if first_check == BINGO_ROW || second_check == BINGO_ROW
      return "BINGO you have a diagonal!"
    else
      return "Try again!"
    end
  end
end





# DRIVER TESTS GO BELOW THIS LINE

game1 = BingoScorer.new(right_to_left)
puts game1.checker
# implement tests for each of the methods here:

puts game1.vertical_checker
puts game1.diagonal_checker

# Reflection

# What concepts did you review or learn in this challenge?
# I almost forgot how to write classes! This challenge
# was a great review for getting back into Ruby and
# refreshing my brain on how to call methods across
#a class.

# What is still confusing to you about Ruby?
# Nothing that was used in this challenge

# What are you going to study to get more prepared for Phase 1?
# I am going to try more challenges and am going to
#study ruby docs, since there are still many useful
# methods that I don't know
