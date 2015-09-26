# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Generate a random letter using sample method from the bingo array 
  # Create an instance variable to generate a random number between to a 100. Use rand again.
  # 

# Check the called column for the number called.
# Use collect! to iterate over the double array so that we can replace the original array 


# If the number is in the column, replace with an 'x'
  #Iterate over array using collect. This will be an iteration over a nested array. 
  # IF element includes? number in column, then element will be replaced with "X" in that respective index. The index iterates through the single array and checks if the number is there.  
  # ELSE return the element

# Display a column to the console
  #fill in the outline here
  #

# Display the board to the console (prettily)
  # Use each method to print the board to the console. We can iterate over the array and make the board pretty. This will
  # print the board into columns. 
# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @bingo = ["B","I", "N", "G", "O"]
#   end

#   def call 
#   @random_letter = @bingo.sample #Generates random letter from bingo array
#   @random_number = rand(1..100) #Generates random number 
#   p "Your number is #{@random_letter}#{@random_number}"
#   end

#   def check_column
#     @bingo_board.collect! do |i|
#       if i.include?(@random_number)
#         i[i.index(@random_number)] = "X" ; i #Only replaces number, but doesn't replace it in the corresponding column. Not sure how to replace it with the corresponding column with the bingo array. 
#       else
#         i
#       end
#     end
#   end

#   def display
#     @bingo_board.each {|row| p row}
#   end

# end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo = ["B","I", "N", "G", "O"]
  end

  def call 
  @letter = @bingo.sample #Generates random letter from bingo array
  @number = rand(1..100) #Generates random number 
  puts "Your number is #{@letter}#{@number}"
  end

  def check_column
    @bingo_board.collect! do |i|
      if i.include?(@number)
        i[i.index(@number)] = "X" ; i #Only replaces number, but doesn't replace it in the corresponding column. Not sure how to replace it with the corresponding column with the bingo array. 
      else
        i
      end
    end
  end

  def display
    @bingo_board.each {|row| p row} #printing 
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.call
p new_game.check_column
p new_game.display

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
What are the benefits of using a class for this challenge?
How can you access coordinates in a nested array?
What methods did you use to access and modify the array?
How did you determine what should be an instance variable versus a local variable?
What do you feel is most improved in your refactored solution?

I think it was  difficult pseudocoding this challenge. Usually, I am a lot more detailed in pseudocoding, but I had some trouble collecting my thoughts this time around.
I also could not figure out how to line up the corresponding letter with my array. My methods would replace the number with X's, but it did not
take the letter into consideration. 

You can create the entire blueprint for the bingo game, which is what a class is. There will be different outcomes to this game, but you can use the same
code over and over again. This way, you don't have to pass different methods outside of classes. In addition, you can use instance variables
throughout classes as well. 

You can access coordinates in a nested array by typing array[index]. 

I decided to use the collect! method to iterate over the nested array. This returned a new array with the conditions I gave them. Then, we were able to iterate
over the single arrays after using that method and accessing the indexes of those arrays. 

I mostly used instance variables in this challenge because I used the variables throughout different method definitions. I enjoyed using
instance variables because you only had to define the variable once and it could be used throughout the entire class. 

I adjusted some of the variables to make it a bit more readable. However, I would love to get some advice on how to make the 
letters relevant in the bingo challenge. If you can observe my code, it replaces whatever number it finds in the array. It does not replace
the actual corresponding column. For example, when B34 is called. It will replace all of the 34s, but not the one in the "B" column. 

  
=end