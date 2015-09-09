
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