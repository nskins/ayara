class Rest < Event
  def initialize
    super(command: "rest")
  end

  def run(player)
    puts "#{player.name} takes a nap.."
    sleep(1)
    print "..and fully recovers!\n\n"
    player.set_stats(hp: player.stats[:max_hp])
  end
end