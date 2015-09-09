
##Release 1##

*What does puts do?*
The puts command displays the results of evaluating Ruby code. What differentiates puts from prints is that puts also adds a newline after executing. A great example comes from Codeacademy:

3.times { puts "Hello!" }
Hello!
Hello!
Hello!

You can see above that instead of displaying Hello!Hello!Hello! on one line, it adds newlines.

*What is an integer? What is a float?*
Integers are integral, whole numbers without decimal points. Floats are numbers with decimal points. An integer would be any whole number from 0 to infinity. Floats will include all numbers with decimal points like 3.2 or 1.99.

*What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?*
When you divide integers, or do any other arithmetic to integers, you will get integers. If the calculator answer has a decimal point it will round down. For example, 9 and 2 are integers, but if you divided 9 by 2 on a calculator, you get 4.5. On Ruby, you will get 4. This is useful for applying to real world circumstances. For instance, if a movie ticket costs 2 dollars, you can only buy 4 with 9 bucks.

On the other hand, float division will result in a float answer. 9.0 divided by 2.0 will give you 4.5. This is useful for math or scientific uses. In physics, for example, you will want the calculator answer when performing arithmetics.

##Release 2##

*Hours in a year:*
```ruby
puts 365*24
```
*Minutes in a decade*
```ruby
puts 365 * 10 * 24 * 60
```
##Release 7##

*How does Ruby handle addition, subtraction, multiplication, and division of numbers?*
Ruby handles arithmetic in a simple sensible way like using a calculator. The methods used for addition, subtraction, multiplication, and division are as follows: +, -, *, /. The only difference between a calculator and a computer is that a calculator always uses floats (numbers with potential decimals) while a computer can use floats or integers (whole numbers with no decimals). If you want your computer to behave exactly like a calculator, you should use floats.

*What is the difference between integers and floats?*
Integers are integral, whole numbers without decimal points. Floats are numbers with decimal points. An integer would be any whole number from 0 to infinity. Floats will include all numbers with decimal points like 3.2 or 1.99. Floats are used when you want exact calculator type answers instead of rounded answers.

*What is the difference between integer and float division?*
With integer division, the answer will be rounded down. For instance, if you divide 10 by 3 you will get 3. Float division gives you the exact number including decimal points. For instance, if you divide 9 by 2, you will get 4.5.

*What are strings? Why and when would you use them?*
Strings are a group of letters, numbers, symbols, or even empty spaces. They basically hold anything you want them to hold and can be used for manipulation. For example, "Eunice Choi" is a string that contains my full name. "45" is a string holding the number 45. You could perform arithmetic on a string, whether it holds letters or numbers. For instance "Eunice" + "Choi" will give you "EuniceChoi". Notice how there is no space in between my first and last name? That is because the strings don't hold any spaces and computers do exactly as they're told.

*What are local variables? Why and when would you use them?*
Local variables are variables at the local scope. They hold strings so you don't have to repeatedly type them out. Local variables are always named beginning with a lowercase letter or an underscore. You would use local variables to store strings you want to use but not rewrite.

*How was this challenge? Did you get a good review of some of the basics?*
Yes, this challenge was a good review of the basics! Especially in terms of remembering term names.