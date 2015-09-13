# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  sort = 0
  index = 0
  if list_of_words.count  == 0
    return nil
  else
    list_of_words.each_with_index do |string, ind|
    if string.length > sort
      sort = string.length
      index = ind
    end
  end
  return list_of_words[index]
end
end
