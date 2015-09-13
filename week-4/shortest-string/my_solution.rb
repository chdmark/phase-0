# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  if list_of_words == []
  	return nil
  else
  	
  	shortest_word = ""
  	list_of_words.each do |word|
  		if shortest_word < word
  			return shortest_word = word
  		else
  			word = shortest_word
  		end
  	end
  	end
  	p shortest_word
end

#Refactored
def shortest_string(list_of_words)
  if list_of_words == []
  	return nil
  else
  	return list_of_words.min {|x, y| x.size <=> y.size}
  end
end