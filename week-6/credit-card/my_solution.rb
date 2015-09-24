# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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