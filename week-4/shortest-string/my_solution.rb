# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below


# def shortest_string(list_of_words)
#   length_of_words=[]
#   index=0
#   if list_of_words.count > 1
#     list_of_words.each_with_index do |string, ind|
#     length_of_words << string.length
#     length_of_words.sort
#     list_of_words.eac
#     index=ind
#     end
#     return list_of_words[index.to_i]
#   else
#     return list_of_words[0]
#   end
# end

# def shortest_string(list_of_words)
#   while list_of_words.count > 0
#     list_of_words.each do |string|
#     length_of_words << string.length
#       sort = 100
#       length_of_words.each do |length|
#           if length < sort
#           sort = length
#           else
#             return nil
#         end
#     return sort
#    end

def shortest_string(list_of_words)
  sort = 100
  index = 0
  if list_of_words.count  == 0
    return nil
  elsif
      list_of_words.each_with_index do |string, ind|
      if string.length < sort
        sort == string.length
        index == ind
      end
  return list_of_words[index]
  end
end
end