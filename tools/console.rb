require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

class Ride
  attr_accessor :driver, :passenger, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

end


class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select do |rides|
      rides.passenger == self
      self
    end
  end

  def drivers
    Ride.all.select do |rides|
      rides.driver == self
    end
  end

  def self.all
    @@all
  end

end

class Driver

  attr_accessor :name
  @@all = []

  def initialize(name)
      @name = name
      @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |rides|
      rides.driver == self
    end
  end

  def passenger_names
    Ride.all.collect do |rides|
      if rides.driver == self
        puts rides.passenger
    end
  end

end

leah = Driver.new("Leah")
fatima = Driver.new("Fatima")

christina = Passenger.new("Christina")
maurice = Passenger.new("Maurice")

ride2 = Ride.new(fatima, christina, 7)
ride = Ride.new(leah, maurice, 7)

binding.pry
