require "rspec"
require "player"

describe "Player" do
  let (:card2) { Card.new("10", "club") }
  let (:card3) { Card.new("8", "club") }
  let (:card4) { Card.new("10", "heart") }
  let (:card5) { Card.new("K", "diamond") }
  let (:card6) { Card.new("10", "spade") }
  let(:hand) { [card2, card3, card4, card5, card6] }
  let(:player1) { Player.new(hand, 100) }

  describe "#initialize" do
    it "sets up a player with a hand and a pot" do
      expect(player1.hand.length).to eq(5)
      expect(player1.pot).to be_truthy
    end

  end

  describe "#discard" do
    it "asks the player which cards they want to discard cards" do

    end

  end

  describe "#bet" do
    it "asks the player if they wish to fold, see, or raise" do
  
    end
  end


end
