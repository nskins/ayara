require 'goby'

include Goby

require_relative "battle/battle_command/attack/punch.rb"
require_relative "map/map/ayara.rb"
require_relative "story/intro.rb"

# Set this to true in order to use BGM.
Music::set_playback(false)

# By default, we've included no music files.
# The Music module also includes a function
# to change the music-playing program.

system("clear")

# Allow the player to load an existing game.
if File.exists?("player.yaml")
  print "Load the saved file?: "
  input = player_input
  if input.is_positive?
    player = load_game("player.yaml")
  end
end

# No load? Create a new player.
if player.nil?
  print_intro

  # A Location specifies the Map and (y,x) coordinates of a Player.
  home = Location.new(Ayara.new, C[11,4])

  # Use the Player constructor to set the
  # location, stats, gold, inventory, and more.
  player = Player.new(
                    stats: {
                      max_hp: 15,
                      attack: 3
                    },
                    location: home,
                    battle_commands: [Punch.new, Use.new]
                    )

end

run_driver(player)
