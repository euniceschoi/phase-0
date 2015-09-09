#Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

puts "Hello, what is your first name?"
first_name=gets.chomp
puts first_name + ", what about your middle name?"
middle_name=gets.chomp
puts "Interesting," + first_name + ' ' + middle_name, " What about your last name?"
last_name=gets.chomp
puts "So your full name is " + first_name + ' ' + middle_name + ' ' + last_name


#Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "What is your favorite number?"
favorite_number=gets.chomp
better_number=favorite_number.to_i + 1
puts "I think " + better_number.to_s + " is a better and bigger number!"
