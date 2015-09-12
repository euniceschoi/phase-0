# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)
  if array_1.count + array_2.count == 0
    return []
  else
    array_2.each do |x|
      array_1.push(x)
  end
  return array_1
end
end