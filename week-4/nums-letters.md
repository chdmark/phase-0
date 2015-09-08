## Numbers, Letters, and Variable Assignment

-[Defining Variables](https://github.com/chdmark/phase-0/blob/master/week-4/defining-variables.rb)
-[Simple String Methods](https://github.com/chdmark/phase-0/blob/master/week-4/simple-string.rb)
-[Local Variables and Basic Arithmetical Operations](https://github.com/chdmark/phase-0/blob/master/week-4/basic-math.rb)

-What does puts do?
-What is an integer? What is a float?
-What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Puts prints the output to the console or screen. It does not return a value, but returns nil. An integer is a number without a decimal point, and a float is a number with decimal points. The difference between float and integer division is that float division gives you the actual value of your program. For example puts 9.0 / 2.0 will print a value of 4.5. In integer division, you will always get integer answers. If a computer can't get the "right" answer, it always rounds down. For example, 9/2 would print out 4. The best way I can describe the difference to someone is when you buy an item, you can't get 5 items that are 2 dollars each if you only have 8 dollars. You have to get 4. This is the same principle as integer division. 

```ruby
puts 24 * 365
```

```ruby
puts 60 * 24 * (365 * 10 + 2)
```

-How does Ruby handle addition, subtraction, multiplication, and division of numbers?
-What is the difference between integers and floats?
-What is the difference between integer and float division?
-What are strings? Why and when would you use them?
-What are local variables? Why and when would you use them?
-How was this challenge? Did you get a good review of some of the basics?

Ruby handles addition, subtraction, multiplication, and division of numbers just like a calculator. You input two values followed by a respective sign, and it will give you a value. In terms of the difference between integer and float division, you can see my answer above. 

Strings are essentially a group of letters. Usually a string is in between quotation marks or apostrophes. For example, 'Hello', would be a string. We use strings to describe things, or if we wanted to print a message with words to the console. 

Local variables contain values that you give them so you can use them later in a program. We would want to use variables so we don't have to type repeated values over and over again. Instead of typing puts "Hello", you can assign a variable to contain that message. For example, greeting = "Hello". Greeting would now have "Hello" as a variable and you can use it again in your program.

The challenges weren't too bad at all. I had to remember how to convert integers to floats, but a little research helped that. It was a good review on the basic concepts of Ruby. 