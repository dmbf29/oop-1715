# OOP = Data + Behavior
# data -> instance variable
# behavior -> instance methods
#
# Car.new -> triggers my initialize method

# attr_reader :color
# -> CREATES A METHOD
# attr_witer will CREATE a method to change the attribute
class Car
  # attr_reader :color # getter
  # attr_writer :color # setter
  attr_accessor :color

  # what kind of data do we want to store initially?
  # we create @instance variable to store data
  def initialize(color)
    @color = color
    @engine_started = false
  end

  # method just to read the attribute
  # for booleans, we wont make attr_reader
  def engine_started?
    @engine_started
  end

  # when you have a method to just read the same named attribute, we'll create an attr_reader
  # def color
  #   @color
  # end

  # instance method
  def start_engine
    # you have access to all instance vars inside of the methods
    spark_plugs
    inject_fuel
    @engine_started = true
  end

  private

  def spark_plugs
    puts 'sparking plugs...'
  end

  def inject_fuel
    puts 'injecting fuel...'
  end
end
