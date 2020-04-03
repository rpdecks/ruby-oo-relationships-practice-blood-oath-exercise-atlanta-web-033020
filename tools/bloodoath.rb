require 'pry'

class bloodoath

    attr_reader :initialization_date
    
    @@all = []
    
    def initialize 
        @@all << self
    end

    def self.all
        @@all
    end

end