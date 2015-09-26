# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:
#create a CLASS called BingoBoard
#
#  DEF method called initialize that takes a bingo board as an argument
#    set an instance variable called bingo board that is equal to the argument
#  END
#
#  DEF a method that will generate a letter ( b, i, n, g, o) and a number (1-100)
#    set an instance variable equal to the array [ b, i, n, g, o]
#    set an instance variable that takes a random letter from the array
#    set an instance variable equal to a random number from range (1-100)
#  END
#
#  DEF a method that checks the called column for the number called.
#    call second method
#    if random letter equals B
#      loop through the bingo board and look for every first number in each array
#      and check if element equals random number, and if equal, replace with X
#    END
#    Do the same for letters I, n, g, and o
#  END
#
#  DEF a method that displays the board
#    call other methods
#    return the binbo board
#  END
#
#END

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end


end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection