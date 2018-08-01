# require 'pry'
# class CommandLineInterface
#
#   attr_accessor :name
#
#   def self.create
#     new_cli = CommandLineInterface.new
#   end
#
#   def self.greet
#     puts 'Welcome to IndiEats! Your guide to locally owned independent restaurants!'
#   end
#
#   def self.gets_user_name
#     puts "Feeling hungry and socially conscious? Support local restaurants! Let's get started. "
#
#     puts "Tell us your name: "
#     name = gets.chomp
#   end
#
#   def self.gets_user_preference
#     puts "Hey #{self.name}! What kind of food are you craving? "
#     preference = gets.chomp
#   end
#
#   def self.gets_user_budget
#     puts "How much do you want to spend today? "
#     budget = gets.chomp
#   end
#
#   def self.gets_user_location
#     puts "What part of town are you in? "
#     location = gets.chomp
#   end
#
#     #what could we put here to allow a user to type a response?
#   def run
#     new_cli.greet
#     name = gets_user_name
#
#   end
#
# end

# /////////// NEW CODE ///////////////////////
require 'pry'
class CLI

  attr_accessor :name, :customer, :restaurant, :preference, :budget, :location

  def self.create_new_cli
     CLI.new
  end
# creates a new CLI

  def self.greet
    puts 'Welcome to IndiEats! Your guide to locally owned independant restaurants!'
  end
# welcomes customer to the app

  def self.gets_user_name
    puts "Feeling hungry and socially conscious? Support local restaurants! Let's get started. "

    puts "Tell us your name: "
    @name = gets.chomp
  end
# gets user name

  def self.puts_user_name
    puts "Hey #{@name}!"
  end
# puts user name for a personalized interaction

  def self.gets_user_option
    puts "Would you like to search for restaurants by location, type of food, or price point? "
    option = gets.chomp

    if option == "location"
      self.gets_user_location
    elsif option == "type of food"
      self.gets_user_preference
    elsif option == "price point"
      self.gets_user_budget
    else
      self.invalid_option
    end
  end
# shows criteria the customer wants to search for restaurants by

  def self.invalid_option
    puts "Sorry, I don't recognize that criteria."
    gets_user_option
  end
# sends customer back to original options if
# they are requesting to search by invalid option

  def self.gets_user_preference
    puts "What kind of food are you craving? "
    @preference = gets.chomp
  end
# finds out what kind of food the customer wants to order

def self.find_restaurant_by_food_type(preference)
  Restaurant.where("food_type = ?", preference) do |restaurant|
  restaurant.food_type == @preference
  end
end
# finds restaurants based on the type of food/customer preference

  def self.gets_user_budget
    puts "How much do you want to spend today? "
    @budget = gets.chomp
  end
# finds out how much money the customer is willing to spend

def self.find_restaurant_by_affordability(budget)
  if @budget == (1..10)
    restaurants.affordability == "Cheap"
  elsif @budget == (11..20)
    restaurants.affordability == "Affordable"
  elsif @budget == (21..500)
    restaurants.affordability == "Expensive"
  else
    puts "Please enter a reasonable amount."
    gets_user_budget
  end
end
# finds restaurants based on the affordability

  def self.gets_user_location
    puts "What part of town are you in? "
    @location = gets.chomp
  end
# finds out where the customer is

def self.find_restaurant_by_location(location)
  restaurants.location == @location
end
# finds restaurants based on the location

  def self.run
    greet
    create_new_cli
    gets_user_name
    puts_user_name
    option = gets_user_option

  end
# runs the CLI

end
binding.pry
CLI.greet
