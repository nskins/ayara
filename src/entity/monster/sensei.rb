require_relative '../../battle/battle_command/attack/flying_kick.rb'
require_relative '../../battle/battle_command/attack/punch.rb'
require_relative '../../item/equippable/legs/karate_bottom.rb'
require_relative '../../item/equippable/torso/karate_top.rb'

class Sensei < Monster
  def initialize
    super(name: "Sensei", max_hp: 20, attack: 5, agility: 2,
          battle_commands: [FlyingKick.new, Punch.new],
          message: "\"Show me your abilities.\"",
          treasures: [Couple.new(KarateBottom.new, 1),
                     Couple.new(KarateTop.new, 1)])
  end

  def choose_attack
    random = Random.rand(5)
    if (random == 0)
      return @battle_commands[0] # Flying Kick
    else
      return @battle_commands[1] # Punch
    end
  end
end