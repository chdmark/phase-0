# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# It requires another file for the file to run. It is usually in the same path or directory
# When you need the full path, it would need require. 
#require_relative 'state_data'

class VirusPredictor
  # Creating three instance variables, and each object has data about the state. This method instantiates the entire class. There's three parameters. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #calling two other methods that predicts death and speed of the viruses spread. 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #takes in population density and determines the number of deaths based on these parameters. 
  def predicted_deaths
    rate_table = {
      200 => 0.4,
      150 => 0.3,
      100 => 0.2,
      50 => 0.1,
      0 => 0.05
      }
    
    number_of_deaths = 0
    
    rate_table.each do |k, v|
      if @population_density >= k
        number_of_deaths = (@population * v).floor
      end
    end
    
    # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # the lower the density, the higher it will spread 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    
    rate_table = {
      200 => 0.5,
      150 => 1.0,
      100 => 1.5,
      50 => 2.0,
      0 => 2.5
      }
    
    rate_table.each do |k, v|
      if @population_density >= k
        speed = v 
      end
    end

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
What does require_relative do? How is it different from require?
What are some ways to iterate through a hash?
When refactoring virus_effects, what stood out to you about the variables, if anything?
What concept did you most solidify in this challenge?

It is a nested hash. STATE_DATA is an entire hash itself. However, each state is also a key with two key /value pairs. 

Require relative requires another file for the file to run. It is usually in the same path or directory. When you need the full path, it would need require. 

We used the each method to iterate through the nested hash. We also accessed the state's data by accessing the hash via
the notation above. 

We realized that we didn't need the local variables or parameters that it was taken since we already declared the instance variables
in the initialize method. We also changed the if statement and iterated through the hash to make it cleaner.

Different ways to refactor were definitely solidified. In addition, iterating through a nested hash was also solidified. 

=end