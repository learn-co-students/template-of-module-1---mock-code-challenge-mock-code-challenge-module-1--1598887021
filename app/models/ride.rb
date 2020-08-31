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

    # def self.average_distance
    #     self.class.all.find {|rides| rides.distance.sum / rides.size}
    # end


end