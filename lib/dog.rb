# Add your code here

# Dog
#   .new
#     initializes with one argument - a name
#   class variables
#     @@all
#       has a class variable, @@all, the points to an array
#   class methods
#     .all
#       is a class method returns all dog instances
#     .clear_all
#       is a class method that empties the @@all array of all existing dogs
#     .print_all
#       is a class method that puts out the name of each dog to the terminal
#   #save
#     adds this dog instance to the @@all array when called
#     gets called inside initialize when a new Dog is created
#   #name
#     has a name

class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def self.print_all
    # puts @@all.map(&:name) - another way to solve, but more complex than needed for this example
    #puts @@all.map{ |dog| dog.name } - easier way?
    @@all.each do |dog|
      puts dog.name
    end
  end

  def self.clear_all
    @@all.clear
  end

  def save
    @@all << self
  end
end
