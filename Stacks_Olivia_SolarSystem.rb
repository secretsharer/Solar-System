#new class
class SolarSystem
  attr_accessor :planets_list, :formation_year #class attributes

  #contructor method, contructs new class objects
  def initialize(formation_year_input)#parameters
    #instance var
    @planets_list = []
    @formation_year = formation_year_input#method arguemnt(disappears)
  end

  #new method within the SolarSystem class - could this also be organized to be in class Planet and THEN added to planets_list?
  #why not? because scope - with this structure, hash req'd and it was created om Planet class, not ss class.

  def add_planet(planet_obj)#parameter
    @planets_list.push(planet_obj)#push method with argument of "planet_object"
    puts "You just added the planet #{planet_obj.name} to the #{"Juice Box Solar System"}." #what is planet_obj here? hwhere is it pointing?
  end
end

#new class
class Planet
  attr_reader :name, :orbital, :mass_in_earths, :moons, :distance_from_sun #class attributes

  #new method that utilizes/accesses hash
  def initialize(planet_hash)
    @name = planet_hash[:name]
    @orbital = planet_hash[:orbital]
    @mass = planet_hash[:mass_in_earths]
    @moons = planet_hash[:moons]
    @distance_from_sun = planet_hash[:distance_from_sun]
  end

  #new method that accesses instance vars within class:Planet
  def planet_info #(there's no parameter here)
    puts "#{@name} has #{@orbital} days in one of its years, weighs #{@mass} earth, has #{@moons}, and is #{@distance_from_sun} million miles from the sun."
  end
end

#local var set to new solar system with name and argument (formation_year)
juice_box = SolarSystem.new(1000000000)


#hash outside of classes, data hash from which to pull
mercury_hash = {
  name: "Mercury",
  orbital: 88.0,
  moon: 0,
  mass_in_earths: 0.055,
  distance_from_sun: 25.98
}

# venus_hash = {
# name:
# orbital:
# moons:
# mass_in_earths:
# distance_from_sun:
# }

earth_hash = {
  name: "Earth",
  orbital: 365,
  moons: "1, plus new mini-moon! #https://sservi.nasa.gov/articles/simulations-show-mini-moons-orbiting-earth/",
  mass_in_earths: 1.0,
  distance_from_sun: 92.96
}

# mars_hash = {
# name:
# orbital:
# moons:
# mass_in_earths:
# distance_from_sun:
# }

# jupiter_hash = {
# name:
# orbital:
# moons:
# mass_in_earths:
# distance_from_sun:
# }

# saturn_hash = {
# name:
# orbital:
# moons:
# mass_in_earths:
# distance_from_sun:
# }

# nepture_hash = {
# name:
# orbital:
# moons:
# mass_in_earths:
# distance_from_sun:
# }

uranus_hash = {
  name: "Uranus",
  orbital: "yeah",
  moons: "moon time!",
  mass_in_earths: -7,
  distance_from_sun: "wicked far away"
}

# pluto_hash = {
# name:
# orbital:
# moons:
# mass_in_earths:
# distance_from_sun:
# }

# in this block mercury local var is the planet object and is what gets .pushed to the planet list
mercury = Planet.new(mercury_hash)
earth = Planet.new(earth_hash)
uranus = Planet.new(uranus_hash)

#newly named solar_system calling method to add a planet to its planet hashes
#juice_box is an instance of the solar_system class
juice_box.add_planet(mercury)
juice_box.add_planet(earth)
juice_box.add_planet(uranus)

#solar_system accesses planet list calls last planet added for output debriefing
juice_box.planets_list.last.planet_info





#*******SHIT THAT DIDN'T WORK LIVES BELOW THIS LINE******
# venus = Planet.new("Venus", "225", ".815", "none", "67.24 million mi")
#
# earth = Planet.new("Earth", "365", "1", "1 plus new mini-moon! #", "92.96 million mi")
#
# mars = Planet.new("Mars", "687", ".107", "2", "141.6 million mi")
#
# jupiter = Planet.new("Jupiter", "4333", "317.8", "67", "483.8 million mi")
#
# saturn = Planet.new("Saturn", "10759", "95", "62 not including moonlets", "888.2 million mi")
#
# neptune = Planet.new("Neptune", "60,182", "17.147", "14", "2.795 billion mi")
#
# uranus = Planet.new("Uranus", "yeah,", "turnt up earths", "is mooning", "wicked far away")
#
# pluto = Planet.new("Pluto", "too many", "less than an earth", "mooner", "bye-bye")
#


# solar_system_name = SolarSystem.new("Juice Box")
#
# solar_system_name.add_planet("Saturn")
# solar_system_name.add_planet("Neptune")
# solar_system_name.add_planet("Uranus")
#
# puts "Your solar system name is #{solar_system_name.solar_system_name}"

# Create a SolarSystem class that has an attribute planets that has zero to many Planet instances. There are a few different options for how to associate the planets with your solar system:
# Create a method that adds a single planet to a solar system
# Create a method that adds a list of planets to an existing list of planets

#planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter"]

#
# (in_galaxy, in_planets, in_solar_size)
