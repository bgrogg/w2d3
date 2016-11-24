require "rspec"
require "deck"

describe "Deck" do
  let (:deck) { Deck.new }

  describe "#initialize" do
    it "creates a deck of 52 unique cards" do
      expect(deck.cards.length).to eq(52)
      expect(deck.cards.uniq).to eq(deck.cards)
    end
  end
end
