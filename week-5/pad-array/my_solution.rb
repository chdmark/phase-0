# Pad an Array

# I worked on this challenge with Richard Leo. 

# I spent 1 hour on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Arguments which is an array, the minimum size of the pad, and any value we want to use to pad our array 
# What is the output? (i.e. What should the code return?) Output should be the new padded array 
# What are the steps needed to solve the problem?
# IF the minimum size <= length of array, return original array
# ELSE 
#    Padding is equal to minmum size - array length
# => Create a new Array taking padding and value as its parameters
# => Join the new Array together 
#END

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length 
    array
  else 
    padding = min_size - array.length
    array_new = Array.new(padding, value)

    p array.concat(array_new)
    end
    
end

pad!([5,4,5],5)

def pad(array, min_size, value = nil) #non-destructive
    if min_size <= array.length 
    array
    else 
    padding = min_size - array.length
    array_new = Array.new(padding, value)
    p z = array + array_new

    end

end


# 3. Refactored Solution

def pad!(array, min_size, value = nil)
  array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil)
  array.dup.fill(value, array.length...min_size)
end

p pad!([5,45, 9], 5, "Chris")

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
When you refactored, did you find any existing methods in Ruby to clean up your code?
How readable is your solution? Did you and your pair choose descriptive variable names?
What is the difference between destructive and non-destructive methods in your own words?

I think we are all still getting used to pseudocode because we are new to the Ruby language. I am still unfamiliar with it, but I am working to become
better at Pseudocode. We were able to nail the first part down, but had some trouble filling the array with the value we wanted it to. After some
research, we were able to fill the array. 

We only failed one test, where we could not figure out what went wrong. It was difficult to read the rspec because it expected this: value != number and it 
got a number for the nondestructive pad. 

We found the .fill method, where it filled the length fo the array up to the minimum size. We were surprised on how effective the solution was. To make
it nondestructive, there was a .dup method that preserved the data structure. 

I think our solution was readable. We wanted to name the variable padding and named the new array, array_new. 

Destructive methods completely change the data structure replacing it with the new data strcture. Non-destructive methods preserve the original data structure,
while producing an entirely new data structure. Destructive methods usually end with an !. 

  
end