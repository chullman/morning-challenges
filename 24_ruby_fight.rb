# The Company has two directors who are passionately disagreeing, they want to fight it out. Being the fantastic human you are, you propose creating a virtual fight to minimise physical harm.
# You need to create a simple fighting game, where two opponents will fight until one of them loses.

# Hints: start by creating a Player class (the instance variables could be name, health and power).
# You’ll need a few methods, consider one that keeps track of whether a player is alive, another one that calculates the impact of hits (decreases the opponents heath by the the amount of the other players power). And a third that outputs the players information.

# You’ll then need to make a fight method that uses a loop to make the players hit one another until  the is alive method returns false for one of them. When the loop is finished (which would mean one of the players has lost), show the players output.

# Then create two Player objects (create a random value for each player’s health and power, make is so that the maximum health value for a player is 200, and the maximum power value is 25) and call the fight method.

class Player

  attr_reader :health, :power_max
  attr_accessor :name


  def initialize
    @health = 200
    @power_max = 25
  end

  def get_attacked(power)
    @health -= power
  end

  def is_dead
    if @health.to_i <= 0
      return true
    end
    return false
  end

end

player1 = Player.new
player1.name = "Fighter A"

player2 = Player.new
player2.name = "Fighter B"


while (!player1.is_dead && !player2.is_dead) do
  
  # Check who will attack
  player_num = rand(1...3)

  if player_num == 1
    random_power = rand(player1.power_max.to_i)
    player2.get_attacked(random_power.to_i)
    puts "#{player2.name} gets attacked for #{random_power}, #{player2.name} now has #{player2.health} health"
  elsif player_num == 2
    random_power = rand(player2.power_max.to_i)
    player1.get_attacked(random_power.to_i)
    puts "#{player1.name} gets attacked for #{random_power}, #{player1.name} now has #{player1.health} health"
  end

  if player1.is_dead
    puts "#{player2.name} wins!"
  elsif player2.is_dead
    puts "#{player1.name} wins"
  end
  
end
