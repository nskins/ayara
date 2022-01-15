require_relative '../../../../lib/Battle/BattleCommand/Attack/attack.rb'

class Punch < Attack
  def initialize
    super(name: "Punch", strength: 3, success_rate: 99)
  end
end