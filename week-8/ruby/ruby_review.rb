
# Reverse Words


# I worked on this challenge by myself
# This challenge took me [.5] hours.

# Pseudocode
# Define a method called reverse_words that takes sentences as a string
# Create a new variable and split the string and turn it into an array. 
# Iterate over the array and reverse each element in the array 
# Join the array together and turn it into a string


# Initial Solution
def reverse_words(sentence)
	array_of_words = sentence.split
	array_of_words.each do |word|
		word.reverse!
	end
	p array_of_words.join(" ")
end

reverse_words("Hello this is awesome!")


# Refactored Solution
# Not sure if I can refactor here. 




# Reflection
=begin 
What concepts did you review or learn in this challenge?
What is still confusing to you about Ruby?
What are you going to study to get more prepared for Phase 1?

I reviewed basic iteration and turning strings into arrays and joining them at the end.

I think I need to do the more challenging reviews to push my boundaries. Nested hashes and nested arrays are something
I'm not completely comfortable with yet. 
I am going to do a lot more ruby exercises and go over material where I don't feel completely comfortable with. I am going to go through
some previous weeks exercises. 
=end