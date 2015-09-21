# Numbers to Commas Solo Challenge

# I spent 3 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? The input is an integer. 
# What is the output? The output is a number converted to a string with commas. Every number from 1,000 and above should include a comma.
# What are the steps needed to solve the problem?
# Thoughts first:
# => 
# => Convert Integer to string
# => Every 4 digits needs to be separated by a comma in front of the 1st digit of the 4
# => Convert integer to be the size of the digits, i.e. 1, 000 = 4 digits
# => Want to loop 4 times through integer and add a comma in front of the digit
# IF size of the number < 4, return original number
# ELSIF size of the number is divisible by 3
# => Create variable to determine how many commas need to be inserted
# => Use times loop subtracted by one to loop over integer 
# => Loop over 4 digits
# => Insert comma after looping in front of 4th digit
# ELSE
# => size of the number is > 3
# => Create variable to determine how many commas need to be inserted
# => Use times loop to loop over integer
# => Loop over 4 digits
# => Insert comma
# END
# Print the new number 

=begin
# 1. Initial Solution
def separate_comma(num)
	num_new = num.to_s
	num_length = num_new.size

	if num_length < 4
		p num.to_s
	
	else num_length > 3
		comma = num_length / 3
		comma.times do |i|
			i = (i + 1) * 4
			num_new.insert(-i, ",")
		end
	end
	p num_new

end
separate_comma(100000)

=end

# 2. Refactored Solution
def separate_comma(num)
	num_new = num.to_s
	num_length = num_new.size

	p num.to_s if num_length < 4
	
	if num_length % 3 == 0 #added for integer with 6 digits requiring one comma ONLY. I wasn't passing one Rspec test
		comma = num_length / 3
		(comma - 1).times do |i| 
			i = (i + 1) * 4
			num_new.insert(-i, ",")
		end
	else 
		comma = num_length / 3
		comma.times do |i|
			i = (i + 1) * 4
			num_new.insert(-i, ",")
		end
	end
	p num_new
end
separate_comma(100000)

#I wanted to use the each_slice method, but wasn't sure how to incorporate this into my solution. I just cleaned up some redundancies. 

# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?
Was your pseudocode effective in helping you build a successful initial solution?
What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
How did you initially iterate through the data structure?
Do you feel your refactored solution is more readable than your initial solution? Why?

I attempted to break the problem down into really small steps. I thought about what I needed to do, and what kind of exceptions were there.
I knew that if the integer was smaller than 1,000, then it would return the original number. At first, I thought about having ranges of numbers,
but realized that would be really inefficient. Then, I knew the commas would be placed based on the SIZE of the digits, meaning that any number
from 1000 on needed a comma in a specific place. I knew I had to convert the number to a string and then to the size. I set up if/else
statements to satisfy special conditions. 

Pseudocode was helpful for me in the beginning to put my thoughts to paper. However, since I am new to programming, I still had to play with
many different functions in IRB. I think it is still hard to keep pseudocde to plain English, but I am learning and trying to become
better at it. 

I found one Ruby method I wanted to use .each_slice, but did not know how to implement it in my solution. 

I originally thought an each iteration would be useful, but it wouldn't make any sense to iterate over each digit. I decided to use
times because I knew where I wanted to put the comma which was every three digits after 1,000. 

I made my refactored solution more concise with a single if statement, and added a new statement because my initial solution wasn't
passing the rspec test. I used the error it raised, and it helped me figure out the solution. I also removed the else condition num > 3 
because I realized that it was understood that condtion existed. 

= end