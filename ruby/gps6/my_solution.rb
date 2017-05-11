# Virus Predictor

# I worked on this challenge [with guide: Ian D Agne].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative is most likely to bring in code from another file you wrote.
#
require_relative 'state_data'

class VirusPredictor

# Initialize the instance for the class VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Call the method to show the predicted deaths and virus spread speed.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# Base on the state population demsity, and the population to print out the predicted deaths.
  def predicted_deaths
    # predicted deaths is solely based on population density

=begin
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
=end

    factor = case @population_density
      when 0...50 then 0.05
      when 50...100 then 0.1
      when 100...150 then 0.2
      when 150...200 then 0.3
      else 0.4
    end

    number_of_deaths = (@population * factor).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Base on state population density, print out the predicted virus spread speed of the state.
  def speed_of_spread
  #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

=begin
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
=end

    factor = case @population_density
      when 0...50 then speed += 2.5
      when 50...100 then speed += 2
      when 100...150 then speed += 1.5
      when 150...200 then speed += 1
      else speed += 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density],data[:population])
  state.virus_effects
end

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end


#=======================================================================
# Reflection Section
=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
  One is with string as key and use hash as value;
  The other is use symbol as key and integer as value.

What does require_relative do? How is it different from require?
  require_relative will most likely be used to bring in code from another file that you wrote.
  require will most likely be used to bring in code from a library someone else wrote.

What are some ways to iterate through a hash?
  1. Use Hash#each to iterate the hash.
  2. Can set conditions then use 'loop do .. end' to iterate the hash as well.
  3. Use hash.length to iterate the hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  Instance variables don't need to pass in method as parameters.

What concept did you most solidify in this challenge?
  Better understanding instance variable's usage.

=end