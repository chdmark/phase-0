# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An Array of strings or integers
# What is the output? (i.e. What should the code return?) The mode of that array
# What are the steps needed to solve the problem?
#Create a method that takes an array as the argument
#Create a new hash that sets the value to zero and iterate through all of the array elements
#Increment the value by one 

# 1. Initial Solution
def mode(array)
  h = Hash.new(0)
  array.each do |i| 
    h[i] += 1
  end
  h.sort_by {|key, value| p value}
  key = h.keys[0]
  p key
  p Array.new(1, key)
  
end

mode([8,4,5,3,3,3,2,2,1])

# 3. Refactored Solution
def mode(array)
  h = Hash.new(0)
  array.each do |i| 
    h[i] += 1
  end
 
  mode_array=[]
  h.each do |key, value|
  if value == h.values.max
    mode_array.push(key)
  end
end
 
    p mode_array
end

mode([6, 5, 5, 5, 9])



# 4. Reflection
=begin 
Which data structure did you and your pair decide to implement and why?
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
What issues/successes did you run into when translating your pseudocode to code?
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We decided to implement a hash because we wanted a key/value pair. We wanted to keep track of the number of times a key was in the
array. I think we were able to pseudcode the first steps such as iterating over the hash at first to get the value. However,
we had some trouble turning it into a new array and sorting the hash by the amount of times a number was repeated. We used
the each method at first to iterate over the hash and passed in number of the array into the hash. We wanted to use the inject method,
but couldn't figure out our own initial solution. We eventually resorted to an if statement, and used push to push the key to the new array.



end