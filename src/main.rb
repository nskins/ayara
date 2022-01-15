require 'goby'

include Goby

require_relative "battle/battle_command/attack/punch.rb"
require_relative "map/map/ayara.rb"
require_relative "story/intro.rb"

print_intro
system("clear")

player = Player.new(
                    max_hp: 15,
                    attack: 3,
                    map: Ayara.new,
                    location: Couple.new(11,4),
                    battle_commands: [Punch.new, Use.new]
                    )
run_driver(player)
