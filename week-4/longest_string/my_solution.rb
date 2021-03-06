
# Longest String

# I worked on this challenge by myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  if list_of_words == []
  	return nil
  else
  	
  	longest_word = ""
  	list_of_words.each do |word|
  		if longest_word.length > word.length
  			 word = longest_word
      else
        longest_word = word
    end
  	end
  end
  p longest_word
end

#Factored Solution
def longest_string(list_of_words)
  if list_of_words == []
  	return nil
  else
  	return list_of_words.max {|x, y| x.size <=> y.size}
  end
end