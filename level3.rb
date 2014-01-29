class Player
  def play_turn(warrior)
    if !warrior.feel.enemy? && warrior.health < 20
      warrior.rest!
    elsif !warrior.feel.enemy?
      warrior.walk!
    else
      warrior.attack!
    end
  end
end
