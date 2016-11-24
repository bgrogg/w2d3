require 'card_module'

class Card
  include CardModule

  attr_reader :value, :suit

  def initialize(value, suit)
    raise "Value Error!" unless VALUES_HASH.values.include?(value)
    raise "Suit Error!" unless SUIT_HASH.values.include?(suit)

    @value = value
    @suit = suit
  end

  def <=>(other_card)
    self_value = VALUES_HASH.values.index(self.value)
    other_card_value = VALUES_HASH.values.index(other_card.value)

    if self_value > other_card_value
      return 1
    elsif self_value < other_card_value
      return -1
    end

    self_suit = SUIT_HASH.values.index(self.suit)
    other_card_suit = SUIT_HASH.values.index(other_card.suit)

    if self_suit == other_card_suit
      return 0
    elsif self_suit > other_card_suit
      return 1
    elsif self_suit < other_card_suit
      return -1
    end
  end

end
