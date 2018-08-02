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
    preference = gets.chomp
    find_restaurant_by_food_type(preference)
  end
  # finds out what kind of food the customer wants to order

  def self.find_restaurant_by_food_type(preference)
    # binding.pry
    Restaurant.where(["food_type = ?", preference]).each do |restaurant|
      puts restaurant.name
    end
    new_search
  end
  # finds restaurants based on the type of food/customer preference

  def self.gets_user_budget
    puts "How much do you want to spend today? "
    budget = gets.chomp.to_i
    find_restaurant_by_affordability(budget)
  end
  # finds out how much money the customer is willing to spend

  def self.find_restaurant_by_affordability(budget)
    searchTerm = ''
    if budget >= 1 && budget <= 10
      searchTerm = "Cheap"
    elsif budget >= 11 && budget <= 20
      searchTerm = "Affordable"
    elsif budget >= 21 && budget <= 500
      searchTerm = "Expensive"
    else
      puts "Please enter a reasonable amount."
      gets_user_budget
    end
    Restaurant.where(["affordability = ?", searchTerm]).each do |restaurant|
      puts restaurant.name
    end
    new_search
  end
  # finds restaurants based on the affordability

  def self.gets_user_location
    puts "What part of town are you in? "
    location = gets.chomp
    find_restaurant_by_location(location)
  end
  # finds out where the customer is

  def self.find_restaurant_by_location(location)
    Restaurant.where(["location = ?", location]).each do |restaurant|
      puts restaurant.name
    end
    new_search
  end
  # finds restaurants based on the location

  def self.new_search
    puts "Would you like to start a new search? "
    answer = gets.chomp
    if answer == "yes"
      gets_user_option
    elsif answer == "no"
      puts "Thanks for using IndiEats! See you soon!"
    else
      invalid_answer
    end
  end
  #allows user to input multiple searches without having to run app again

  def self.invalid_answer
    puts "That is an invalid option."
    new_search
  end

  def customer_choice
    puts "Which local restaurant would you like to try? "
    choice = gets.chomp
  end

  def self.run
    greet
    create_new_cli
    gets_user_name
    puts_user_name
    option = gets_user_option
  end
  # runs the CLI

end
# binding.pry
# CLI.greet
