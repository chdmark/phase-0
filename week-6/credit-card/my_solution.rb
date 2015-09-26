# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Eunice Choi
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer with 16 digits 
# Output: Return true if it is a valid credit card
# Steps:

# Create a class called CreditCard
# Initialize with credit card variable 
# IF credit card is not equal to 16 digits
#   Raise argument error
# END

# Define method double digits
#  Split the integer and turn it into an array

# Reverse array and multiply by 2 for each even index

# Define method add digits
# Slice array again and add all digits
# Set an instance variable into the sum of all digits

# Def check card method
# Return true if the number is divisible by 10



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(card)
#     @card_number = card 
#     if card.to_s.length != 16
#        raise ArgumentError.new("credit card number is not equal to 16 digits!") 
#     end
#   end

#   def double_digits 
#     @split_number = @card_number.to_s.chars.each_slice(1).map{|digit| digit.join.to_i}

#     @doubled_number = @split_number.reverse.map.with_index do |item,index|
#       if index % 2 != 0
#         item * 2
#       else
#         item
#       end
#     end
  
#    end
  
#   def add_all
#     double_digits
#     @add_single = @doubled_number.join.chars.map(&:to_i)
#     @the_sum = @add_single.inject {|sum,x| sum + x }
#   end
  
#   def check_card
#     double_digits 
#     add_all
#     if @the_sum % 10 == 0 
#       return true
#     else
#       return false
#     end
#   end
# end


      
  
# new = CreditCard.new(4563960122001990) 
# #p new.double_digits
# p new.add_all
# p new.check_card

#Refactored Solution

class CreditCard
  def initialize(card)
    @card_number = card 
    if card.to_s.length != 16
       raise ArgumentError.new("credit card number is not equal to 16 digits!") 
    end
  end

  def double_digits 
    @split_number = @card_number.to_s.chars.each_slice(1).map{|digit| digit.join.to_i}

    @doubled_number = @split_number.reverse.map.with_index do |item,index|
      if index % 2 != 0
        item * 2
      else
        item
      end
    end
  end
  
  def add_all
    double_digits
    @add_single = @doubled_number.join.chars.map(&:to_i)
    @the_sum = @add_single.inject {|sum,x| sum + x}
  end
  
  def check_card
    double_digits 
    add_all
    @the_sum % 10 == 0 ? true : false
  end
end


      
  


new = CreditCard.new(4563960122001999) 
#p new.double_digits
p new.add_all
p new.check_card

=begin 
#Reflection

What was the most difficult part of this challenge for you and your pair?
What new methods did you find to help you when you refactored?
What concepts or learnings were you able to solidify in this challenge?

I think the most difficult challenge was converting from different classes. We ran into a lot of different errors when
we ran certain methods that wouldn't work. We also got stuck on how to work through the problem. It took us a bit of time, but we got
it in the end. 

We used inject to add all of the digits together. We learned about chars, map._with_index to check what position
the array was in. We also used slice to split the integer up and turn it into an array. 

I think stringing methods together were solidified in this challenge. In addition, how to convert from class to class
was solidified. 

=end
