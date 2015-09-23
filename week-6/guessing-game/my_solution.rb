# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [2] hours on this challenge.

# Pseudocode

# Input: Takes an integer
# Output: Returns true if the guess is correct, low if the guess is low, and high if the guess is high
# Steps: 
# Initialize the class that takes an integer as its parameter
# => Create an instance variable for answer
# Create an instance method called GuessingGame#guess that takes the an integer called guess.
# => IF guess > answer, return high
# => ELSIF guess < answer, return low
# => ELSE guess == answer, return correct
# => END
# Create an instance method called GuessingGame#solved?
# => IF guess == answer, return true
# => ELSE return false
# => END


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		puts "Try again! Your answer is too high!"
  		return :high
  	elsif @guess < @answer
  		puts "Try again! Your answer is too low!"
  		return :low
  		
  	else @guess == @answer
  		puts "You are correct!"
  		return :correct
  		
  	end
  end

  def solved?
  	if @guess == @answer
  		return true
  	else
  		return false
  	end
  end
  		
end

my_answer = GuessingGame.new(12)
my_answer.guess(14)
my_answer.solved?
my_answer.guess(9)
my_answer.solved?
my_answer.guess(12)
my_answer.solved?

=end

# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	return :correct if @guess == @answer
  	if @guess > @answer
  		return :high 
  	else
  		return :low
  	end
  	
  end

  def solved?
 	@guess == @answer ? true : false
  end
  		
end

my_answer = GuessingGame.new(12)
p my_answer.guess(14)
p my_answer.solved?
p my_answer.guess(9)
p my_answer.solved?
p my_answer.guess(12)
p my_answer.solved?


# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
When should you use instance variables? What do they do for you?
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Why do you think this code requires you to return symbols? What are the benefits of using symbols?

You can imagine the object as your entire body. The variables and methods are like parts of your body such as your arms, legs, hands,
fingers, torso, etc. Together, they make up your entire body. The same can be said for instance variables and methods. 

You should use instance variables when you want to use the same variable throughout your class. The great thing about instance variables
is that you can use it throughout your class. It is not restricted within a method. This helps you control the flow of your challenge.

For this challenge, I used if/else statements and instance variables for control flow. I think I understand the flow of classes to a good
extent. You define multiple methods and it reads the methods. You can use the instance variables from previous methods and use it
in different methods. This way you can use the original parameter and do different things with it with different methods. 

I think this code requires me to return symbols because it is more efficient to store a symbol. According to David Black, symbols can be
accessed faster. In addition, symbols cannot be changed and are immutable. For this chllange, it makes sense to use a symbol because returning
high, low, or correct only returns one of the answers. Because they are immutable, you can access symbols faster than strings. 


=end