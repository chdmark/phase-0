# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# README file
# 2. What is the line number where the error occurs?
# The error occurs on line 170, but the real error occurs line 16. 
# 3. What is the type of error message?
# Syntax error
# 4. What additional information does the interpreter provide about this type of error?
# It says that there is an unexpected end-of-input, expecting keyword end
# 5. Where is the error in the code?
#The error in the code is after # Write your reflection below as a comment. It expects the word end.
# 6. Why did the interpreter give you this error?
# The while loop starting on line 14 did not have an end keyword. We needed to close the loop

# --- error -------------------------------------------------------

south_park = "Great show"

# 1. What is the line number where the error occurs?
# The error is  on line 36. 
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# There is an undefined local variable or method 'south_park' for main: Object
# 4. Where is the error in the code?
#It occurs after the south_park variable.
# 5. Why did the interpreter give you this error?
#The variable was unassigned a value, and you can't have empty values. 

# --- error -------------------------------------------------------

def cartman
end

# 1. What is the line number where the error occurs?
# The error is on line 51.
# 2. What is the type of error message?
# No Method Error
# 3. What additional information does the interpreter provide about this type of error?
# There is an undefined method 'cartman' for main: Object
# 4. Where is the error in the code?
# The error occurs when cartman is declared
# 5. Why did the interpreter give you this error?
# There is no defined method. When you declare a method, you need to start with a def and end it.
# An empty method is okay too. 

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
#  The error occurs on line 68.
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# The interpreter expected an argument after declaring cartmans_phrase
# 5. Why did the interpreter give you this error?
# We called the method with an argument, but the original method has no arguments. I took away the argument so there wouldn't be a mismatch in the number of arguments.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("I hate you!")

# 1. What is the line number where the error occurs?
# The error occurs on line 87.
# 2. What is the type of error message?
# It is another argument error
# 3. What additional information does the interpreter provide about this type of error?
# in 'carman_says: wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# The error occurs when calling cartman says
# 5. Why did the interpreter give you this error?
# The interpreter is expecting an argument after calling cartman_says.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie("I love you", "Chris")

# 1. What is the line number where the error occurs?
# The error occurs on line 108
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# In cartmans_lie: wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# The error occurs on line 112 when it expected another argument.
# 5. Why did the interpreter give you this error?
# There needs to be two arguments after cartmans_lie

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# Error occurs on line 127
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# Occurs in '*' after the 5
# 5. Why did the interpreter give you this error?
# You cannot multiply a number by a string because it means "string" sets of the number 5. I switched the order so it prints out the string five times

# --- error -------------------------------------------------------

amount_of_kfc_left = 20.0/0.0


# 1. What is the line number where the error occurs?
# The error occurs on line 142. 
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
#  Divided by 0
# 4. Where is the error in the code?
#  The error happens after the division sign
# 5. Why did the interpreter give you this error?
# The integer had a rounding error. If you change the numbers to a float, it is mathematically defined now, resulting in infinity. 

# --- error -------------------------------------------------------

require_relative "cartmans_essay.rb"

# 1. What is the line number where the error occurs?
# occurs on line 158
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file and gives me the path
# 4. Where is the error in the code?
# the error occurs after declaring require_relative. 
# 5. Why did the interpreter give you this error?
# There was no file available and Ruby does not support markdown. I changed the extension to rb and it fixed the error. 


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment. 
=begin

Which error was the most difficult to read?
How did you figure out what the issue with the error was?
Were you able to determine why each error message happened based on the code? 
When you encounter errors in your future code, what process will you follow to help you debug?	

I think the first error was the hardest to read because it pointed the error at the end of the line. I was able to 
figure out the error by reading the comments when they expected the word end. I realized that the while loop was 
not closed with an end. 

Yes, I was able to figure out the error message based on code. I think Ruby does a great job of letting you know 
what is wrong, and it takes some familiarity with the code to figure out what is going on. When I encounter future errors
in my code, I will look at what Ruby is telling me first. If I can't figure it out, I will do a simple google search to help
me out. 

=end
