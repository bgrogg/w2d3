require_relative "card"

class Deck
  include CardModule

  attr_reader :cards

  def initialize
    @cards = []
    create_cards
  end

  def create_cards
    SUIT_HASH.values.each do |suit|
      VALUES_HASH.values.each do |value|
        cards << Card.new(value, suit)
      end
    end
  end



end
