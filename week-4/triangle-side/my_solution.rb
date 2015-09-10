# I worked on this challenge [with: Kai Huang].


# Your Solution Below

=begin
def valid_triangle?(a, b, c)
  # Your code goes here!
  if a+b>c && b+c>a && a+c>b
  return true
  else
  return false
 end

end
=end


def valid_triangle?(a, b, c)
 ((a+b>c) && (b+c>a) && (a+c>b))? true:false
end