# Die Class 1: Numeric

# I worked on this challenge by myself. 

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input: The Die class should take a numeric number 
# Output: Create a new die object with amount of sides
# Steps:
# Create a die class
# Create a method initialize that takes a numeric integer
# => Create an instance variable called sides which is equal to the parameter
# => IF sides is less than 1, raise an argument error
# END 
# Create a method sides that takes the instance sides as its argument
# Create a method roll that generates a random number between 1 and the instance variable sides. 


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
    	raise ArgumentError.new("Please select a number that is equal to or greater than 1")
    end
  end

  def sides
   @sides
  end

  def roll
  	rand(1..@sides)
  end

end



# 3. Refactored Solution
# Not sure if there are any methods because the solution is pretty basic. 






# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
What is a Ruby class?
Why would you use a Ruby class?
What is the difference between a local variable and an instance variable?
Where can an instance variable be used?

An ArgumentError is raised when arguments are wrong. For example, passing the wrong number of arguments will raise an exception. 
You could raise an ArgumentError if you think certain arguments aren't acceptable in your class. For example, a side less than 1 wasn't acceptable
in our program, so we raised an exception.

I learned how to create an instance variable and learned how to generate a new number. Generating a random number was relatively easy,
but remembering that you can access an instance variable anywhere within the class was something to new to me. 

A Ruby class is like a blueprint where you can write once and create an object. Classes are useful because you can define 
many methods in there and can be used over and over. 

A local variable is only accessible within a method, block, or loop. They are generally written with lowercase letters and denoted
like local_variable. An instance variable can be used anywhere within its specific class. You can define it at the top of your class
or at the bottom of your class, and it could be used anywhere. Instance letters are preceded by an @. 


	
=end