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

#How do you define a local variable?
# A local variable stores data locally. It can hold numbers, letters, and symbols, basically anything that you want to store. Local variables are useful for when you want to avoid repetition. For example, if you wanted to print the alphabet out 10 times but didn't want to type each letter out every single time, you could store the alphabet into a local variable called alphabet. Then you could multiply the local variable by 10 so it will print the alphabet 10 times.

# How do you define a method?
# Chris Pine suggests a great way to think of methods. He says that methods are like the verbs while objects (strings, integers, and floats) are like the nounds. Methods carry out the action and can be defined. Simple one word actions like puts and gets are methods. You can also define a method to carry out several actions whenever you call the method with an argument.

# What is the difference between a local variable and a method?
# The difference between a local variable and a method is that a local variable doesn't really perform an action. It stores data that you want to perform methods with. For instance, a variable may contain a gets.chomp input of someone's name, with which you may want to include in a print method.

# How do you run a ruby program from the command line?
# You run a ruby program from a command line by first writing your ruby command in a ruby file (a file that ends with .rb). Then you type ruby "name of file" onto your command line.

# How do you run an RSpec file from the command line?
# You run a RSpec file from the command line by typing rspec "name of rspec file" onto the command line. You should perform this in the directory your rspec file is in. Then it will tell you how many examples and failures your code has.

# What was confusing about this material? What made sense?
# It was confusing for me at first to understand errors given through rspec, but I became used to it. The use of methods and variables made sense to me since it is like learning a new language. Thinking like a computer really helps when trying to write methods, since you realize how simply and straight forward you have to think.

# Add a link to each exercise solution file as well so your peers can easily look at your code.

# https://github.com/euniceschoi/phase-0/blob/master/week-4/address/my_solution.rb

# https://github.com/euniceschoi/phase-0/blob/master/week-4/math/my_solution.rb
