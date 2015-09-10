# Leap Years

# I worked on this challenge [with:Kai Huang].


# Your Solution Below

def leap_year?(year)
  if (year.to_i % 4 == 0 && year.to_i % 100 != 0) || (year.to_i % 400 == 0)
    #&& year.to_i % 100 == 0)
    return true
  else
    return false
  end
end
