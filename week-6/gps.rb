# Your Names
# 1) Chris Mark
# 2) Jenna Andersen

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  cookbook = {"cookie" => 1, "cake" =>  5, "pie" => 7} #standard quantity for making each dish
  leftovers = Hash.new()
  
  if cookbook.any? do |key, value|
    key == item_to_make
  end
  p "Calculating order" 
  else
  raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
#   error_counter = 3 

#   library.each do |food| #iterate through the hash library.any? do  
#     if library[food] != library[item_to_make] #if input does not include the dishes within the library 
#       p error_counter += -1 
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input") #Raises argument error if it goes past 0 
#   end

  serving_size = cookbook.values_at(item_to_make)[0] #referring to value at library hash from line 10 
  serving_size_mod = order_quantity % serving_size # equal amount of servings or if there are leftovers 
  

if serving_size_mod == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
else 
  return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, make additional #{item_to_make} to cover #{serving_size_mod} servings."
end
end




  
# else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("brownie", 10)

#p serving_size_calc("THIS IS AN ERROR", 5)
=begin
#  Reflection
What did you learn about making code readable by working on this challenge?
Did you learn any new methods? What did you learn about them?
What did you learn about accessing data in hashes? 
What concepts were solidified when working through this challenge?

I learned that it was important to write readable code because it makes it easier for other people who are not
familiar with the code to read. I learned about the .any? method through research. 

We used the .any? method to check if the item was available in the cookbook. 

I learned how to refactor better and read code when it was not written by me. I think it was a different experience,
but I know half of programming is reading other people's code. 
   
 
   
 =end