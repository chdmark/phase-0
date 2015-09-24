# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash[outer:][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#p nested_data[:array][0][:hash]
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do |num|
  if num.kind_of?(Array) 
    num.map! {|x| x + 5}
  else
    num + 5
  end
end

p number_array


# Bonus:


startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |names|
  if names.kind_of?(Array)
      names.map! do |element|
        if element.kind_of?(Array)
          element.map! {|y| y + "ly"}
        else
        #names.map! {|x| x + "ly"}
          element + "ly"
        end
    end
  else
    names + "ly"
  end
end
p startup_names



startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def machine(array, suffix)
  
array.map! do |names|
  if names.kind_of?(Array)
      names.map! do |element|
        if element.kind_of?(Array)
          element.map! do |y| 
            y + suffix
          end
        else
          element + suffix
        end
     end
  else
    names + suffix
  end
end
end

p machine(startup_names, "ly")




p startup_names.flatten! #makes the array one dimensional 

startup_names.map! do |names| 
  names + "ly"
end

=begin
What are some general rules you can apply to nested arrays?
What are some ways you can iterate over nested arrays?
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

I think it's important to go through the levels one at a time. You shouldn't get too lost in the dimensions, but it could get tricky
when there are three or four levels. 

We iterated over nested arrays using the map enumerable. When we wanted to go further into the arrays, we created an if statement
that checked if the next array was an actual array, then we would iterate over that array and repeat the process if there was another nested array. 

We used map to iterate through the array. We found out about flatten but didn't know if that did the job. Check out our process,
I think it was pretty efficient! We used map because it returned an entirely new array. 
=end
