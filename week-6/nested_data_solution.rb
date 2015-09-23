# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

def iterate_nest(array, integer)

  array.map! do |element|
    if element.kind_of? (Array)
      element.map! do |number|
        number + integer
      end
    else
      element + integer
    end
  end
  return array
end

p iterate_nest(number_array, 5)


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def ly_generator(array, suffix)

  array.map! do |element|
    if element.kind_of? (Array)
      element.map! do |inner_element|
        if inner_element.kind_of? (Array)
          inner_element.map! do |last_elements|
            last_elements + suffix
          end
        else
          inner_element + suffix
        end
      end
    else
      element + suffix
    end
  end
end

p ly_generator(startup_names, "ly")


#-------------Reflect----------------

# What are some general rules you can apply to nested arrays?
#Some general rules can be don't forget the index number when
#accessing element in nested arrays and remember to write the indexes
#in order when accessing a nested element.

# What are some ways you can iterate over nested arrays?
#You can iterate over nested arrays by placing if else statements that
#iterate through an element, if it itself is an array. For instance,
#you can write an iterator that goes through each element in an array.
#If it realizes that the element is an array itself, it will go through
#another iterator that does the same thing.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#I learned the .kind_of? method. At first, I thought of putting
#is_a? in order to determine if an element in an array is an array
#itself. My pair saw that kind_of? is used to determine if an element
#has a class of certain type, such as Array, so we used that instead.
