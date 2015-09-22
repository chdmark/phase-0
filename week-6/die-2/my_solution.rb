# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: Takes an array of strings
# Output: Gives you ONE random letter from the array of strings
# Steps:
# Create a Die Class
# Initialize the class that takes an array 
# Create an instance variable that takes the method's parameter
# IF the array is empty, rasie an Argument error
# Create a method that counts the size of the array 
# Create a method that randomly rolls the array
# => Generate a random letter by calling the array and randomize it by the array's size



# Initial Solution

class Die
  def initialize(labels)
  	@labels = labels 
  	if @labels.empty? 
  		raise ArgumentError.new("You can't pass an empty array in!")
  	end
  end

  def sides
  	p @labels.size
  end

  def roll
  	p @labels[rand(@labels.size)]
  end
end



# Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels 
  	if @labels.empty? 
  		raise ArgumentError.new("You can't pass an empty array in!")
  	end
  end

  def sides
  	p @labels.size
  end

  def roll
  	p @labels.sample #Generates random letter from array
  end
end

letters = Die.new(["A", "B", "C", "D", "E"])
letters.sides
letters.roll

=begin
# Reflection
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
What does this exercise teach you about making code that is easily changeable or modifiable? 
What new methods did you learn when working on this challenge, if any?
What concepts about classes were you able to solidify in this challenge?

The main difference was that you cannot generate a random letter in the array using the rand method. The rand only takes
numbers as its parameter. In addition, you had to convert the array to a numeric side using the size method. In the previous
die challenge, you could just return the sides because it was a number. I definitely got a bit stuck on the roll part
because I had some trouble generating a random letter or string from the rand. I eventually called the array with the rand
method, using the size of the labels. 

I like that you can use the instance variables throughout your class. It's important to make it not as complicated as it needs to be.

I learned about the sample method! When I went through the ruby docs, I looked into the Array class. To my delight,
sample generated a random letter or string from the array!

I definitely solidfied learning about instance variables. In addition, I understand how methods flow in classes and how
you can define multiple methods within a class. 

=end



