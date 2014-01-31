class Player
  MAX_HEALTH = 20
  ATTACK_HEALTH = MAX_HEALTH * 0.90
  @last_health = nil
  
  def play_turn(warrior)
    @last_health = 20 unless @last_health
    if warrior.feel.enemy?
      warrior.attack!
    elsif taking_damage?(warrior)
      warrior.walk!
    elsif should_rest?(warrior)
      warrior.rest!
    else
      warrior.walk!
    end
    @last_health = warrior.health
  end
  
  def taking_damage?(warrior)
    return warrior.health < @last_health
  end
  
  def should_rest?(warrior)
    return warrior.health < ATTACK_HEALTH
  end
end
