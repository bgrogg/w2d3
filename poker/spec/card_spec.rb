require "rspec"
require "card"

describe "Card" do
  describe "#initialize" do
    let (:card) { Card.new("2", "heart") }
    let (:card3) { Card.new("2", "circle") }

    it "sets up a card with a value" do
      expect(card.value).to eq("2")
    end

    it "sets up a card with a suit" do
      expect(card.suit).to eq("heart")
    end

    it "raises an error for an invalid value" do
      expect { Card.new("P", "heart") }.to raise_error("Value Error!")
    end

    it "raises an error for an invalid suit" do
      expect { Card.new("2", "circle") }.to raise_error("Suit Error!")   
    end

  end

  describe "<=>" do
    subject (:card) { Card.new("10", "club") }
    let (:card2) { Card.new("10", "club") }
    let (:card3) { Card.new("8", "club") }
    let (:card4) { Card.new("10", "heart") }
    let (:card5) { Card.new("K", "diamond") }
    let (:card6) { Card.new("10", "spade") }

    it "returns 0 when the cards have the same value" do
      expect(card.<=>(card2)).to eq(0)
    end

    it "returns 1 when card has a higher value than another card" do
      expect(card.<=>(card3)).to eq(1)
    end

    it "returns 1 when card has same value but higher suit" do
      expect(card.<=>(card4)).to eq(1)
    end

    it "returns -1 when card has lower value than another card" do
      expect(card.<=>(card5)).to eq(-1)
    end

    it "returns -1 when card has same value but lower suit" do
      expect(card.<=>(card6)).to eq(-1)
    end
  end
end
