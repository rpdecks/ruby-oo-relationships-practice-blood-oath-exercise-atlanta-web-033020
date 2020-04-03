require 'pry'

class Cult

    attr_accessor :name, :founding_year, :slogan, :cult_population
    attr_reader :followers

    @@all = []

    def initialize
        @followers = []
        @@all << self
    end

    def recruit_follower(follower)
        @followers << follower
    end

    def cult_population
        @followers.length
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        # return_cult = nil
        @@all.find do | cult |
            cult.name == name
        end
        # return_cult
    end

    def self.find_by_location(location)
        @@all.select { | cult | cult.location == location}
    end

    def self.find_by_founding_year(year)
        @@all.select { | cult | cult.founding_year == year}
    end

end