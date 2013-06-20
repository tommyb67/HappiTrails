require 'pry'

class Entity
  attr_accessor :name, :age, :gender
end

class Client < Entity
  attr_accessor :num_kids, :num_pets
  def initialize(name, age, gender, num_kids, num_pets)
    @name = name
    @age = age
    @gender = gender
    @num_kids = num_kids
    @num_pets = num_pets
  end

  def to_s
    return "Client #{@name} is a #{@age} year old #{@gender}. Client has #{@num_kids} kids and #{@num_pets} pets."
  end
end

class Pet < Entity
  attr_accessor :species, :breed, :fave_toys, :adopted
  def initialize(name, age, gender, species, breed)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @breed = breed
    @fave_toys = []
    @adopted = false
  end

  def to_s
    return "#{@name} is a #{@age} year old #{@gender}. #{@name} is a #{@breed} #{@species}."
  end
end

def up_for_adoption(array)
  puts array.select {|animal| animal.adopted == false }
end

animals = []
clients = []

# Printing each array that changes with each change

# LeBron joined as a client
clients.push lebron = Client.new("LeBron", 28, "male", 2, 16)
# list clients
puts "Clients"
puts clients
puts ""
# LeBron dropped off Tiger
animals.push tiger = Pet.new("Tiger", 5, "male", "cat", "siamese")
lebron.num_pets -= 1
# list animals and available animals
puts "All animals"
puts animals
puts ""
puts "Up for adoption"
up_for_adoption(animals)
puts ""
# Chris joined as a client
clients.push bosh = Client.new("Chris Bosh", 29, "male", 1, 0)
# list clients
puts "Clients"
puts clients
puts ""
# Lebron dropped off Lucy
animals.push lucy = Pet.new("Lucy", 5, "female", "dog", "golden retreiver")
lebron.num_pets -= 1
# list animals and available animals
puts "Animals"
puts animals
puts ""
puts "Available animals"
up_for_adoption(animals)
puts ""
# Chris picked up Lucy
lucy.adopted = true
bosh.num_pets += 1
# list available animals
puts "Available animals"
up_for_adoption(animals)
puts ""
# Tim joined as a client
duncan = Client.new("Tim Duncan", 37, "male", 1, 4)
# list clients
puts "Clients"
puts clients
puts ""
# Lebron dropped off Fido
fido = Pet.new("Fido", 3, "male", "turtle", "box")
lebron.num_pets -= 1
# list animals and available animals
puts "All animals"
puts animals
puts ""
puts "Up for adoption"
up_for_adoption(animals)
puts ""
# Tim picked up Tiger
tiger.adopted = true
duncan.num_pets += 1
# list available animals
puts "Available animals"
up_for_adoption(animals)
puts ""
# Bosh dropped off Lucy and picked up Fido
lucy.adopted = false
fido.adopted = true
# list available animals
puts "Available animals"
up_for_adoption(animals)
puts ""
# Tim picked up Lucy
lucy.adopted = true
duncan.num_pets += 1
# list available animals
puts "Available animals"
up_for_adoption(animals)
puts ""
# list clients, animals and available animals for the last time
puts "Clients"
puts clients
puts ""
puts "All animals"
puts animals
puts ""
puts "Up for adoption"
up_for_adoption(animals)
puts ""