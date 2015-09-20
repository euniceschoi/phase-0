# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(list, quantity_to_add)
  list.map! do |x|
    if x.is_a? Integer
      x = x + quantity_to_add
    end
    x
  end
  return list
end

def my_hash_modification_method!(hash, years_to_add)
  hash.each do |k,v|
    hash[k] = v + years_to_add
  end
  return hash
end

# Identify and describe the Ruby method(s) you implemented.
# For permanently altering the original array, I used the map! method.
# "map!" saves you time by performing .each and storing the change into a new array.
# The reference variable name "i_want_pets" now points to the new array.
# I also used ".is_a?" to add quantity_to_add to the element in the array if it is an Integer.
#
#
# For permanently altering the hash, I just directly changed the values for each key.
# Since hashes sort of act like a dictionary, you can permanently alter the values.
# A friend taught me this metaphor. If a "banana" is defined as a "yellow fruit,"
# then you can change it now mean "blue fruit." In a hash, you can permanently change
# values by just altering it.


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#