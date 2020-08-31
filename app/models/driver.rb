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