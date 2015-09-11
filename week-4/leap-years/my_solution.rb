# Leap Years

# I worked on this challenge with Awilda Cantres


# Your Solution Below
def leap_year?(integer)
  if integer % 400 == 0 
    return true
   elsif
    integer % 100 == 0
    return false
  elsif 
    integer % 4 == 0
    return true
  else
    return false
  end
end