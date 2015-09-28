# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode

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

  def num_letter
    bingo_letters = ["B","I","N","G","O"]
    @letter = bingo_letters[rand(bingo_letters.length)]
    @number = rand(1..100)
    p "#{@letter}, #{@number}"
  end

  def check_board
    num_letter
    if @letter == 'B'
      @bingo_board.map! do |element|
        if element[0] == @number
          element.map! {|x| x == @number ? 'X' :x}
        else
          element
        end
      end
    end
    if @letter == 'I'
      @bingo_board.map! do |element|
        if element[1] == @number
          element.map! {|x| x == @number ? 'X' :x}
        else
          element
        end
      end
    end
    if @letter == 'N'
      @bingo_board.map! do |element|
        if element[2] == @number
          element.map! {|x| x == @number ? 'X' :x}
        else
          element
        end
      end
    end
    if @letter == 'G'
      @bingo_board.map! do |element|
        if element[3] == @number
          element.map! {|x| x == @number ? 'X' :x}
        else
          element
        end
      end
    end
    if @letter == 'O'
      @bingo_board.map! do |element|
        if element[4] == @number
          element.map! {|x| x == @number ? 'X' :x}
        else
          element
        end
      end
    end
  @bingo_board.map { |block| puts block.inspect }
  end


end


# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def generator
    bingo_letters = ["B","I","N","G","O"]
    @letter = bingo_letters[rand(bingo_letters.length)]
    @number = rand(1..100)
  end

  def check_board
    generator
    if @letter == 'B'
      @bingo_board.map! do |element|
        element.map! {|x| x == @number ? 'X' :x} if element[0] == @number
        element
      end
    end

    if @letter == 'I'
      @bingo_board.map! do |element|
        element.map! {|x| x == @number ? 'X' :x} if element[1] == @number
        element
      end
    end

    if @letter == 'N'
      @bingo_board.map! do |element|
        element.map! {|x| x == @number ? 'X' :x} if element[2] == @number
        element
      end
    end

    if @letter == 'G'
      @bingo_board.map! do |element|
        element.map! {|x| x == @number ? 'X' :x} if element[3] == @number
        element
      end
    end

    if @letter == 'O'
      @bingo_board.map! do |element|
        element.map! {|x| x == @number ? 'X' :x} if element[4] == @number
        element
      end
    end

    @bingo_board.map { |block| puts block.inspect }
    end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.check_board


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Pseudocoding was not too difficult, but I had to make sure that I was considering
# every aspect of the bingo game. I personally like my pseudocing style; I was
# partially influenced by a GPS guide and a previour pair in it. Although, it is
# encouraged not to use syntax in your pseudocode, I use some just to organize it.
# I'll use words like DEFINE and END. I also like to indent my pseudocode in the way
# the actual code would be written. It allows for translatability (if that's a word!).

# What are the benefits of using a class for this challenge?
# The benefits of using a class for this challenge, is that you can create a method
# that returns a random letter from (B,I,N,G,O) and a random number from 1 to 10 and
# set those as instance variables. This allows you to use these instance variables
# in the next method which will look through your board to see if the number letter
# combo exists. I think it's not that necessary, but writing a class really helps
# with organization in this case.

# How can you access coordinates in a nested array?
# You can access coordinates in a nested array by indexing in the nested order.
# If you wanted to access the first element in the second nested array, you would
# write array[1][0]. The one stands for the second nested array which has an index
# of 1 in the parent array. The 0 stands for the first element in that second
# nexted array.

# What methods did you use to access and modify the array?
# I mainly used .map! to iterate through the array and look to see if the number
# exists in a certain position of a nested array. I also used .map! when I wanted
# to display the board in a "pretty" manner.

# How did you determine what should be an instance variable versus a local variable?
# I determined what should be an instance variable based on whether that variable is
# needed across methods or only locally. @number and @letter, for example, are needed
# across methods so those are set as instance variables.

# What do you feel is most improved in your refactored solution?
# I think what's most improved is refactoring for readability. It is something I'm
# working on! This is because, you could shorten your code by a lot but that doesn't
# necessarily mean that it is more readable.