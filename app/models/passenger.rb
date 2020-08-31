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