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

end