require 'goby'

include Goby

require_relative "battle/battle_command/attack/punch.rb"
require_relative "map/map/ayara.rb"
require_relative "story/intro.rb"

print_intro
system("clear")

player = Player.new(
                    stats: {
                      max_hp: 15,
                      attack: 3
                    },
                    location: Location.new(Ayara.new, C[11,4]),
                    respawn_location: Location.new(Ayara.new, C[11,4]),
                    battle_commands: [Punch.new, Use.new]
                    )
run_driver(player)
