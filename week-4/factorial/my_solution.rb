# Factorial

# I worked on this challenge [Shawn Watson].


# Your Solution Below

#def method factorial that will take an integer as an argument
#write if statement that will return 1 if integer is less than or equal to 1
#start else statement
  #create new variable that is the range from 1 to integer
  #iterate through each in range and multiply by the next integer
  #return final value

def factorial(integer)
  if integer <= 1
    return 1
  else
    final = 1
    count = 1..integer
    count.each do |x|
      final *= x
      puts final
    end
  return final
  end
end