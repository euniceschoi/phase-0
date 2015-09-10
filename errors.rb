# Analyze the Errors

# I worked on this challenge [by myself.]
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => The error is occurring in my errors.rb file.
# 2. What is the line number where the error occurs?
# => The error occurs in line 170
# 3. What is the type of error message?
# => This is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# => It says that there was an unexpected end-of-input. It is expecting the keyword end.
# 5. Where is the error in the code?
# => The interpreter expect an end to some method.
# 6. Why did the interpreter give you this error?
# => The method is not closed with an end tag.

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# --- error -------------------------------------------------------

# south_park
# 1. What is the line number where the error occurs?
# => 41
# 2. What is the type of error message?
# => Name error
# 3. What additional information does the interpreter provide about this type of error?
# => there is an undefined local variable or method
# 4. Where is the error in the code?
# => the interpreter wants south_park to be defined
# 5. Why did the interpreter give you this error?
# => south_park is not defined and holds no value

south_park = "cartoon"

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => 57
# 2. What is the type of error message?
# => No method error
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method 'cartman' for main
# 4. Where is the error in the code?
# => the interpreter wants cartman() to be defined
# 5. Why did the interpreter give you this error?
# => cartman() is undefined

def cartman(number)
  if number.to_i < 10
    return true
  end
end

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 78
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments for the method (1 for 0)
# 4. Where is the error in the code?
# => error is in cartmans_phrase method, it is expecting 0 arguments but is getting 1
# 5. Why did the interpreter give you this error?
# => cartmans_phrase method should have no arguments

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase


# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => 104
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => There is a wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => The interpreter is expecting 1 argument but is getting 0 in line 108
# 5. Why did the interpreter give you this error?
# => When writing cartman_says in line 108, there was no argument given

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("hello")


# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 130
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => The interpreter expects 2 arguments but is only receiving 1
# 5. Why did the interpreter give you this error?
# => in line 134, there is only one argument given when there should be a second one, name.

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','Eunice')
# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 154
# 2. What is the type of error message?
# => Type Error
# 3. What additional information does the interpreter provide about this type of error?
# => Strings can't be forced into Fixnums
# 4. Where is the error in the code?
# => Interpreter can't multiply fixnum by a string
# 5. Why did the interpreter give you this error?
# => You can not multiply 5 by a string, you can do it the other way around.

"Respect my authoritay!" * 5

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# =>171
# 2. What is the type of error message?
# =>Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# =>divided by zero around '/'
# 4. Where is the error in the code?
# => interpreter can not divide a number by 0
# 5. Why did the interpreter give you this error?
# => division by zero is not allowed in Ruby

amount_of_kfc_left = 20/5
# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 188
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file
# 4. Where is the error in the code?
# =>erros occurs in phase-0 directory and can't open the file "cartmans_essay.md"
# 5. Why did the interpreter give you this error?
# => interpreter can not find this file


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# I think the second syntax error was hardest to read because it pointed to line 170 which was caused by a syntax error in an earlier line.

# How did you figure out what the issue with the error was?
# Well I knew that the syntax error was from not having an end tag for the method, but I didn't figure out why it was pointing to line 170 until I thought about it. I realized that because it wasn't ended right after it was defined, the next end tag "ended" the previous method, leading to a cascading effect and causing the last method not to have an end tag (in line 170).

# Were you able to determine why each error message happened based on the code?
# Yes.

# When you encounter errors in your future code, what process will you follow to help you debug?
# I will follow the processes we used in this exercise. It was great practice to be able to look at the error and determine where and what is causing the error.