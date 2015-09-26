# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Chris Mark ].
# I spent [2.5] hours on this challenge.

# Pseudocode

# Input: An integer with 16 digits
# Output: Return true if it is a valid credit card
# Steps:

# Create a class called CreditCard
# Initialize with credit card variable
# IF credit card is not equal to 16 digits
#   Raise argument error
# END
# Define method double digits
#  Split the integer and turn it into an array
# Reverse array and multiply by 2 for each even index
# Define method add digits
# Slice array again and add all digits
# Set an instance variable into the sum of all digits
# Def check card method
# Return true if the number is divisible by 10


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(card)
#     @card = card
#     if card.to_s.length != 16
#        raise ArgumentError.new("credit card number is not equal to 16 digits!")
#     end
#   end

#   def check_card
#     double_digits
#     add_all
#     if @the_sum % 10 == 0
#       return true
#     elsif @the_sum % 10 != 0
#       return false
#     end
#   end

#   def double_digits
#     @split_number = @card.to_s.chars.each_slice(1).map{|digit| digit.join.to_i}

#     @doubled_number = @split_number.reverse.map.with_index do |item,index|
#       if index % 2 != 0
#         item * 2
#       else
#         item
#       end
#     end
#    end

#   def add_all
#     @add_single = @doubled_number.join.chars.map(&:to_i)
#     @the_sum = @add_single.inject {|sum,x| sum + x }
#   end
# end

# Refactored Solution

class CreditCard
  def initialize(card)
    raise ArgumentError.new("credit card number is not equal to 16 digits!") if card.to_s.length != 16
    @card = card
  end

  def check_card
    split_card_into_array
    double_digits
    find_sum
    check_sum
  end

  def split_card_into_array
    @split_number = @card.to_s.chars.map(&:to_i)
  end

  def double_digits
    @doubled_number = @split_number.reverse.map.with_index { |item, index| index % 2 != 0 ? item = item * 2 : item }
   end

  def find_sum
    split_array = @doubled_number.join.chars.map(&:to_i)
    @sum = split_array.inject(:+)
  end

  def check_sum
    @sum % 10 == 0 ? true : false
  end
end

# Reflection

# What was the most difficult part of this challenge for you and your pair?
# The most difficult part of this challenge was figuring out why we were getting rspec
# errors for the "return true if valid card" part when the class was returning true
# when we tested on Coderpad. We realized that we weren't calling some of the other methods
# in the method that tests whether the credit card is valid or not. We thought that it
# wouldn't matter since we are using instance variables, but it made sense in the end
# since the methods still need to communicated with one another.

# What new methods did you find to help you when you refactored?
# We learned the inject(:+) method which sums up all the characters in an array.
# We also learned map.with_index when we were trying to loop through and multiply
# every other number by 2.

# What concepts or learnings were you able to solidify in this challenge?
# I definitely am more familiar with creating classes. I understand the need to calling
# methods within a class and the use of instance variables a little better.