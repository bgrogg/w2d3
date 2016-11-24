require "hand"

class Player

  attr_reader :hand, :pot

  def initialize(hand, pot)
    @hand, @pot = hand, pot
  end

end
