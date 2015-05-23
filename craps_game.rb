$LOAD_PATH.unshift File.join(File.dirname(__FILE__), "lib")
require "game_engine"
#require "game"
require "player"
#require "dice"

#
# A simple game where each player will shoot craps.
#

DICE = %w(1 2 3 4 5 6 7 8 9 10 11 12)

# Get the number of players, and there names

puts "Welcome to the Craps game!"
puts "The number of players is limited to 5. How many are playing?"
player_count = gets
player_count = player_count.to_i

if player_count > 0 and player_count <= 5
  # Load up some players
  players = []

  (0...player_count).each do |index|
    print "Enter name for player ##{index + 1}: "
    name = gets
    name = name.chomp
    players << name
end
  # Initialize a new game
  game_engine = GameEngine.new(players, DICE)

  # Let's see the setup game
  game_engine.show

  # Let's play and see who wins
  game_engine.play

end
