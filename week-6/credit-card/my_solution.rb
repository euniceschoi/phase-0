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

class CreditCard
  def initialize(card)
    @card = card
    if card.to_s.length != 16
       raise ArgumentError.new("credit card number is not equal to 16 digits!")
    end
  end

  def double_digits
    @split_number = @card.to_s.chars.each_slice(1).map{|digit| digit.join.to_i}

    @doubled_number = @split_number.reverse.map.with_index do |item,index|
      if index % 2 != 0
        item * 2
      else
        item
      end
    end

   end

  def add_all
    @add_single = @doubled_number.join.chars.map(&:to_i)
    @the_sum = @add_single.inject {|sum,x| sum + x }
  end

  def check_card
    if @the_sum % 10 == 0
      return true
    elsif @the_sum % 10 != 0
      return false
    end
  end
end






# Refactored Solution








# Reflection