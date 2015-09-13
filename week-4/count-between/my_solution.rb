# Count Between

# I worked on this challenge by myself. 

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
	if lower_bound > upper_bound
		return 0
	else lower_bound == upper_bound
		return list_of_integers.length
	end
	range = (lower_bound..upper_bound)
	list_of_integers.each do |number|
	end
		
end

# I could not get past this point. I wanted to include the range in my problem and somehow check
#for the numbers in between the range. The error told me it should count above the upper bound and below the lower bound.
