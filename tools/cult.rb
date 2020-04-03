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

    def average_age
        # returns avg age of followers list
        average = 0
        @followers.each do |follower|
            average += follower.age 
        end
        average /= followers.length.to_f
    end

    def my_followers_mottos
        # prints all the mottos for the cult followers
        @followers.collect { | follower | puts follower.motto }
    end

    def self.least_popular
        least_popular = all.first
        @@all.each { | cult | least_popular = cult if cult.cult_population < least_popular.cult_population }
        least_popular
    end

end