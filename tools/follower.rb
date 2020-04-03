require 'pry'

class Follower

    attr_accessor :name, :age, :life_motto
    attr_reader :cults

    @@all = []

    def initialize
        @cults = []
        @@all << self
    end

    def join_cult(cult)
        @cults << cult
        cult.recruit_follower(self)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        @@all.select { | follower | follower.age >= age }
    end

    def my_cults_slogans
        @cults.each {|cult| puts cult.slogan}
    end

    def self.most_active
        most_active = @@all.first
        @@all.each { |follower| most_active = follower if follower.cults.length > most_active.cults.length }
        most_active
    end

end