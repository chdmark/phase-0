# Create an empty hash 
# Create an add method that updates quantity to the list
# Create a remove method that removes item from the list
#IF item exists, then remove
#ELSE it doesn't exist
#Set a quantity to an object or an item
#Print the list 

#With Celeen

def grocery_list
  Hash.new{}
end


def add(item, quantity, list)

  if list[item].nil?
    list[item] = quantity 
  end
  p list
 
end
new_list = {'apples': 2}
p add("Fruit", 5, new_list)
#add("meat",5)


# On our own
grocery_list = {
  Lemonade: 4,
  }

puts "Would you like to add a grocery item?"
puts "Would you like to update the quantity of a grocery item?"
puts "Would you like to remove a grocery item?"

choice = gets.chomp.downcase

case choice
when "add"
  puts "What grocery item do you want to add?"
  item = gets.chomp
  if grocery_list[item.to_sym].nil?
    puts "What is the quantity of that item?"
    quantity = gets.chomp
    grocery_list[item.to_sym] = quantity.to_i

end
when "update"
  
  puts "What item do you want to update?"
  item = gets.chomp

    puts "What is the new quantity?"
    quantity = gets.chomp
    grocery_list[item.to_sym] = quantity.to_i
when "remove"
  puts "What item do you want to delete?"
  item = gets.chomp
  grocery_list.delete(item.to_sym)

end

p grocery_list

=begin
What did you learn about pseudocode from working on this challenge?
What are the tradeoffs of using Arrays and Hashes for this challenge?
What does a method return?
What kind of things can you pass into methods as arguments?
How can you pass information between methods?
What concepts were solidified in this challenge, and what concepts are still confusing?

I learned that it is important to be specific in pseudocode. We had some difficulty making the pseudocode specific
because we were so new to it. I think we were both new to coding so it will take some time to get used to. 

We decided to use a hash because there were two arguments we wanted to pass. Each had a key/value pair with the
item/quantity so we decided to use  a hash. I think an array would have been hard for this because there were two
different variables at play here. 

The method returns the argument information inside of it. You can pass many things into methods as arguments. If/else
statements, an empty hash, local variables, and parameters as well. 

You can call methods within methods, which was somewhat confusing to us because I believe we did not cover this material yet.
I think the concept of hashes were solidified in this challenge, but last week's material didn't cover hashes 
in depth. We really had to do some research to understand what we were doing at times. Methods take some time to 
get used to, but this challenge was a great learning experience. Our guide did a great job of explaining what was going 
on when we were off track. 
  
=end