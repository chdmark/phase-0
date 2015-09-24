#Attr Methods

# I worked on this challenge by myself.

# I spent [1.5] hours on this challenge.

class NameData
	
	def name
		@name = "Chris"
	end
	
end


class Greetings

	def initialize
		@greet = NameData.new
	end

	def display
		puts "Hello " + @greet.name + "! Hope you have a great day!"
	end

end

hello = Greetings.new
hello.display



# Reflection
=begin
Release 1: Read and Research

What are these methods doing?
How are they modifying or returning the value of instance variables?

The methods are returning the instance variables. When the class Profile is intialized, age, name, and 
occupation are assigned values. the what_is_(insert info here) returns the value of the instance variables.
However, you can change these variables with the change_my_(insert info here) and modify the original variables.
This is how you change information within methods. 

When the instance variables are changed with the .change_my_, the info is changed and it will display
the new information you pass in. 

Release 2: Identify the Changes

What changed between the last release and this release?
What was replaced?
Is this code simpler than the last?

The attr_reader was added to the code. def what_is_age method was removed from the previous code. The attr_reader is able
to return the value of the instance variable age without having to write another method for it. This code
is simpler than the last because it removes unnecessary code. 

Release 3: More Changes

What changed between the last release and this release?
What was replaced?
Is this code simpler than the last?

The attr_write for age was added to the code. def change_my_age=(new_age) was removed from the previous code. The attr_writer
allows you to change the variable age now instead of writing a method to change the age. This also
removes an unnecessary method. 

Release 6: Reflect

What is a reader method?
What is a writer method?
What do the attr methods do for you?
Should you always use an accessor to cover your bases? Why or Why not?
What is confusing to you about these methods?

The reader method creates a method that reads and returns the value of any instance variable you created. That is, if you appoint
the reader an instance variable. For example, you can write attr_reader :name. This will then take the place of
def name
	@name
end

The writer method creates a method that can change an instance variable. For example, you can write
attr_writer :name. This will then take the place of
def name=(name)
	@name = name
end

They help save you time and you can eliminate unncessary methods. This in turns makes your program run faster
and more efficiently. You can combine reader and writer methods by using the attr_accessor 

You should only use accessor methods if there is a common instance variable you wish to use. For example,
name, age, height, would all be common attributes. You don't want to always use the attr_accessor method as
well because you don't want to overwrite something that isn't supposed to be overwritten. 

I believe I understand these methods. The only thing that is somewhat confusing to me is passing information
between classes. Wtih practice, I am sure I will get better at it. 


=end