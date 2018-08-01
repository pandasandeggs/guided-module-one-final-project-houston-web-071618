class CommandLineInterface

  def self.create_new_cli
    new_cli = CommandLineInterface.new
  end

  def self.greet
    puts 'Welcome to IndiEats! Your guide to locally owned independant restaurants!'
  end

  def self.gets_user_name
    puts "Feeling hungry and socially conscious? Support local restaurants! Let's get started. "

    puts "Tell us your name: "
    name = gets.chomp
  end

  def self.gets_user_preference
    puts "Hey #{name}! What kind of food are you craving? "
    preference = gets.chomp
  end

  def self.gets_user_budget
    puts "How much do you want to spend today? "
    budget = gets.chomp
  end

  def self.gets_user_location
    puts "What part of town are you in? "
    location = gets.chomp
  end

    #what could we put here to allow a user to type a response?
  def run
    new_cli.greet
    name = gets_user_name
    preference = gets_user_preference

  end


end
