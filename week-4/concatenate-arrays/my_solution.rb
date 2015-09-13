# Concatenate Two Arrays

# I worked on this challenge by myself. 


# Your Solution Below

def array_concat(array_1, array_2)
  z = array_1 + array_2
end

#Refactored

def array_concat(array_1, array_2)
  array_1.concat array_2
end

p array_concat([9,5,3,2], ["dog", 5, "cat"])