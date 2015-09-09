# Calculate a Grade

# I worked on this challenge [with: Kai Huang].


# Your Solution Below

def get_grade(num_1)
  if num_1.to_i > 89 && num_1.to_i <= 100
    return 'A'
  elsif num_1.to_i > 79 && num_1.to_i <= 89
    return 'B'
  elsif num_1.to_i > 69 && num_1.to_i <=79
    return 'C'
  elsif num_1.to_i > 59 && num_1.to_i <=69
    return 'D'
  else
    return 'F'
  end
end

