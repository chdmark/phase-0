# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# define a method called super_fizzbuzz that takes an array
# iterate over the array and check if the element is divisible by 3 or 5 or 15
# IF element is divisible by 3, return "Fizz"
# ELSIF element is divisible by 5, return "Buzz"
# ElSE element is divisible by 15, return "FizzBuzz"
# END


# Initial Solution

def super_fizzbuzz(array)
	new_array = array.map! do |x| 
		if x % 15 == 0
			  x = "FizzBuzz"
		elsif x % 3 == 0
			 x = "Fizz"
		elsif x % 5 == 0
			 x = "Buzz"
		
		else
			x
		end
	   x
	end
	p new_array
end

super_fizzbuzz([3,2, 1])



# Refactored Solution





# Reflection
=begin
What concepts did you review in this challenge?
What is still confusing to you about Ruby?
What are you going to study to get more prepared for Phase 1?

I reviewed how to iterate over an array and control flow. I also solidified my learning in using map. 

How information gets passed between classes and inheritance. I'm going to do some extra challenges. 

I'm going to do extra challenges and read some more. 

=end