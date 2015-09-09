# Full name greeting exercise
puts "Hi, what is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello " + first_name + " " + middle_name + " " + last_name + "!"

#Bigger, better favorite number exercise

puts "Hi, what's your favorite number?"
fav_num = gets.chomp.to_i
better_num = fav_num + 1
puts "That's nice, but the number " + better_num.to_s + " is better!"

=begin

How do you define a local variable?
How do you define a method?
What is the difference between a local variable and a method?
How do you run a ruby program from the command line?
How do you run an RSpec file from the command line?
What was confusing about this material? What made sense?

Define a local variable
	variable_name = "I'm writing something here"
Define a method	
	def method(argument)
		some code
	end

The difference between a local variable and a method is that a local variable is used to store information. 
You can use that information throughout your program. When you declare a method, you are telling
it to do something to the object. 

The way you run a ruby program from the command line is like this: ruby filename.rb
The way your run an RSpec file from the command line is like this: rspec filename.rb

I didn't think any of the material was too confusing. It was a good refresher on what we learned
prior to coming to DBC. I thought the material was straight forward, but getting the spacing right
on 4.3.1 was extremely tedious. I'm still trying to understand how everything in ruby is an object,
but learning more about methods helped me solidfy that understanding. 

Exercise 4.3:    https://github.com/chdmark/phase-0/blob/master/week-4/define-method/my_solution.rb
Exercise 4.3.1 : https://github.com/chdmark/phase-0/blob/master/week-4/address/my_solution.rb
Exercise 4.3.2 : https://github.com/chdmark/phase-0/blob/master/week-4/math/my_solution.rb

	
=end