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

tiger = Pet.new("Tiger", 5, "male", "cat", "siamese")
lucy = Pet.new("Lucy", 5, "female", "dog", "golden retreiver")
fido = Pet.new("Fido", 3, "male", "turtle", "box")

animals = []


bosh = Client.new("Chris Bosh", 29, "male", 1, 0)
duncan = Client.new("Tim Duncan", 37, "male", 1, 4)

clients = []


# LeBron joined as a client
clients.push lebron = Client.new("LeBron", 28, "male", 2, 16)
# list clients
puts clients
animals.push tiger = Pet.new("Tiger", 5, "male", "cat", "siamese")
lebron.num_pets -= 1
# list animals
puts animals
# Chris joined as a client
clients.push bosh = Client.new("Chris Bosh", 29, "male", 1, 0)

puts clients

animals.push lucy = Pet.new("Lucy", 5, "female", "dog", "golden retreiver")

puts animals







