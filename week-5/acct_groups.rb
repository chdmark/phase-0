#Pseudocode 
#Input: Array of names in cohort
#Output: Array of names split evenly into groups of four or at least three
#Steps to Solve Program 
#Define a method that takes an array of names 
#Shuffle names so that there will be a different order each time
#Split the array into groups of four evenly through cohort
#Print the newly formed array and it will return a nested array of 13 arrays inside.


#Initial Solution
people = ["Shunqian Luo (Nathan)", "Kim Allen","Jenna Andersen", "Pamela Antonow", "Jupiter Baudot", "Ovi Calvo", "Awilda Cantres", "Celeste Carter", "Mike Cerrone", "Eunice Choi","Un Choi", "Kristie Chow", "Regina Compton", "Marcus Davis", "Paul Etscheit", "Solomon Fernandez", "Marcel Galang", "Aurelio Garcia", "Hector Jair Moreno Gomez", "Ricky Binhai Hu", "Kai Huang", "Alex Jamar", "Harmin Jeong", "Lauren Jin", "CJ Joulain", "Michael Landon", "Richard Leo", "Julian Lesse", "Ryan Lesson", "Ian Lockwood", "Christopher Mark", "Lauren Markzon", "Miguel Angel Melendez", "David O'Keefe", "Nathan Park", "Landey Patton", "Farman Pirzada", "Samuel Frederick Purcell", "Salim Rahimi", "Colin Razevich", "Irina Renteria", "Jamie Runyan", "Eric Shou", "Michael Silberstein", "Rosslyn Sinclair-Chin", "Aji Slater", "Marvy Tagala", "George Warnbold", "Shawn Watson", "Hana Worku", "Nicholas Yee"]


def accountable(names)
  names.shuffle! 
  p names.each_slice(4).to_a

end
accountable(people)


#Refactored Solution
def accountable(names)
 names.shuffle!
  groups = {
    1 => [],
    2 => [],
    3 => [],
    4 => [],
    5 => [],
    6 => [],
    7 => [],
    8 => [],
    9 => [],
    10 => [],
    11 => [],
    12 => [],
    13 => [],
    }
  names.each_slice(4) {|unit| groups[1] << unit} #I wanted to split the groups evenly into hashes, but could not figure out how to split the remaining names.
p groups
end
accountable(people)

=begin
What was the most interesting and most difficult part of this challenge?
Do you feel you are improving in your ability to write pseudocode and break the problem down?
Was your approach for automating this task a good solution? What could have made it even better?
What data structure did you decide to store the accountability groups in and why?
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I think the most interesting part of this challenge was deciding how difficult I wanted the challenge to be. I wanted to make my 
method a bit more complex, but in the interest of time, was not able to. I think it was difficult knowing where to start because
creating your own program from scratch is a bit difficult since I was new to programming. I had some difficulty splitting my newly
formed array into even numbers in my hashes group during my refactored solution. 

I feel like my pseudocode is getting better as I get more comfortable with the Ruby language. At times, pseudocode is still
awkward for me because I want to get into IRB and really test how things work. At first, I thought my solution was a good solution,
but then I realized it would be difficult to access those names in the array. It split the names evenly, but other than that it was a very
basic solution.

At first, I thought an array would be the best structure. However, as I refactored my solution, I realized that a hash would
be the best solution for this challenge. It would be difficult to remove names in an array and add complexity to this method.
I could not figure out how to take the names from group 1 and split them evenly into the other arrays in my hash. 

I learned about the .each_slice method which takes an array and splits it evenly by the number you want. I thought that was an
extremely useful tool to splitting names evenly. As I mentioned earlier, I realized a hash would better suit my needs, but I wanted
to show my thought process instead of erasing the entire challenge. 


	
=end
