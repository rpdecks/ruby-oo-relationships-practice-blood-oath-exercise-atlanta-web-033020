require_relative '../config/environment.rb'
require_relative 'cult.rb'
require_relative 'follower.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
cult1 = Cult.new
cult2 = Cult.new
cult3 = Cult.new
cult4 = Cult.new
cult5 = Cult.new
cult6 = Cult.new

cult1.location = "Alanta"
cult2.location = "Alanta"
cult3.location = "New York"
cult4.location = "New York"
cult5.location = "New York"
cult6.location = "Athens"

Cult.most_common_location

follower = Follower.new
follower2 = Follower.new
follower3 = Follower.new

follower.age = 25
follower.age = 20
follower.age = 30
follower.join_cult(cult1)

cult1.average_age

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
