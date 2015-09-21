# Research Methods

# Christopher spent [1.5] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Christopher's solution
def my_array_finding_method(source, thing_to_find)
  source.find_all do |x|
     x.to_s.include? thing_to_find
    end
end

p my_array_finding_method(i_want_pets, "t")


def my_hash_finding_method(source, thing_to_find)
  source.select {|key, value| value == thing_to_find}.keys
end

p my_hash_finding_method(my_family_pets_ages, 6)

# Identify and describe the Ruby method(s) you implemented.
# The ruby methods I used were find_all, select, to_s, include?, and keys.
#find_all is an enumerable that returns an array that contains all the values from the original array that match the criteria in the code block.
#In this case, we wanted to return a new array that matches the criteria in the code block.
#.to_s converts the elements in an array to strings. I ran into a problem with FixNum so I decided to convert the array to all strings.
#.include? returns true if the object is present. In this case, we wanted to see if the array had the criteria we wanted.
#.select is an enumerator and is much like find_all, but you can call the select method on hashes or arrays. The difference is
#select returns an array if called on an array, and returns a hash when called on a hash.
#We only wanted to print the keys to a single array. Calling keys returns a new array with keys from the hash.

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# Look above for the explanations, but I can give some examples.
# find_all is an enumerable
#Say you have an array = ["thing", "thomas", "hello"]. You want to find the elements with a "t" in it.
# Call the find_all method on the array like this:
# array.find_all {|item| item.include? "t"}
# => ["thing", "thomas"]
# It would return the array that met the conditions given to the code block which was why I used include?
# As mentioned earlier, include? is not a method for integers, so I converted the entire array to strings.

#select is also an enumerable
# hashes are a bit trickier because we wanted to return only the key.
# Let's say we have a hash = {"Chris" => 3, "Kevin" => 5, "Calvin" => 3} and we wanted to find everyone who had a value of 3.
# hash.select{|key, value| value == 3}
# => {"Chris" =>3, "Calvin" => 3}
# This printed the entire hash/key out with the criteria we gave it. This took me a whiile to figure out, but we wanted
# a single array with just the keys that met our conditions. Then, use the keys outside of the code block to
# return the values we want into a single array.
# hash.select{|key, value| value == 3}.keys
# => ["Chris", "Calvin"]
# Neat isn't it? I think hashes are harder to conceptualize, and it certainly took me a while to figure this out,
# but I hope my explanations were good. Looking forward to learning from everyone!

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned how find methods in the Ruby Docs. It can be challenging at times, but I guess we all have to start somewhere.
# The techniques suggested by that blog helped a bit. I also used the Well Grounded Rubyist for some methods
# explanations as well. When I didn't understand something, I researched further online.
# Explaining my research to others helped me solidify my understanding of the methods. I'm also new to programming,
# so I tried to break it down into smaller steps for people who are newer to programming as well. I know I always
# appreciate thorough explanations.

# Michael's Solution
def my_array_modification_method!(source, thing_to_modify)
  (0...source.length).each{|num| source[num] +=thing_to_modify if source[num].is_a? Numeric}
  source
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each{|value, key| source[value] = (key + thing_to_modify)}
  source
end

# Identify and describe the Ruby method(s) you implemented.
#I used .each to cycle through the elements in each hash or array and modified them in the block and returned the modified data. In the first method I also used .is_a? to identify numbers in the array.
#
#In the first method as well, I decided to cycle through the array by the index number so that way I could manually set the value of the number in that index, thereby being destructive.

# Research Methods

# CJ spent [2] hours on this challenge.

# CJ's Solution
def my_array_sorting_method(pets)
  return pets.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(ages)
   ages.sort_by {|x,y| y}
end

# Identify and describe the Ruby method(s) you implemented.
#  Create and define a method that takes an array as an argument.
# Sort the array in chronological order (including numerically and alphabetically)
# Make sure to return strings as well as integers.
# Return the array.
# Follow similar process for hash
#
# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# I followed a similar process for both methods. For hash, I used sort_by, with the key-value pair standing for name and age. Then, by using sort_by, I sorted by age.
#
# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# One thing I'm struggling with is re-factoring.  I'm at the stage when I'm not quite sure how to make my code shorter and cleaner, as I'm just discovering methods and techniques that work. Stack Overflow is handy for research, as is experimenting with different methods outlined in the Ruby documentation. I reserched splice but didn't know if it was the right command to use. Research and trying to explain my thought process to others makes it clear what I need to improve on.

#There was no number 4

# Research Methods

# Nathan spent [1] hours on this challenge.

# Nathan's Solution
def my_array_splitting_method(source)
  copy = source.dup
  copy.partition{|item| item.kind_of?(Fixnum)}
end

def my_hash_splitting_method(source, age)
  copy = source.dup
  copy.sort_by{|k,v| v}
  copy.partition{|item| item[1]<= age}
end

# Identify and describe the Ruby method(s) you implemented.

# The ruby methods implemented were sort_by and partition.
# Sort_by is an enumerable which allows you to sort based on a criteria. In my case, I used it to sort based on the values of the key-value pairs. This return an array of nested two-item arrays [key,value].
# Partition is a useful enumerable in the fact that it can split an array based on a given conditional/criteria. You can split an array based on it being an integer or string, or based on an age such as in the my_hash_splitting_method.

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

# sort_by is an enumerable.
# sort_b{|obj| block} -> array
# %w{"apple","man","bear"}.sort_by{|word| word.length}
# =>["man","bear","apple"}]

# partition is an enumerable
# partition{|obj| block} ->[true_array,false_array]
# (1..6).partition{|v| v.even?}
# =>[[2,4,6],[1,3,5]]

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?

# I learned a great deal about reading documentation, finding examples online to help clarify its uses and/or variations, and lastly testing it out for myself in irb. In explaining it to others, it reconfirms and solidifies my understanding of the concepts.
