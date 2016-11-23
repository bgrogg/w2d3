require "rspec"
require "towers_of_hanoi"

describe "#towers_of_hanoi" do
  subject(:game) { TowersOfHanoi.new }
  let(:tower_one) { [3, 2, 1] }
  let(:tower_two) { [] }
  let(:tower_three) { [] }

  it "confirms towers initialized correctly" do
    expect(game.towers).to eq([tower_one, tower_two, tower_three])
  end

  it "does not select a disc from an empty tower" do
    disc1 = game.select_tower(0)
    disc2 = game.select_tower(1)
    disc3 = game.select_tower(2)
    expect(disc1).to be_truthy
    expect(disc2).to be_falsy
    expect(disc3).to be_falsy
  end

  describe "#move" do

    it "will place a smaller disc on top of a big disc" do
      game = TowersOfHanoi.new([[3,2], [1], [0]])
      game.move(1, 0)
      expect(game.towers[0]).to eq([3,2,1])
    end

    it "will not select a disk from an empty tower" do
      expect { game.move(1, 2) }.to raise_error("No disc there!")
    end

    it "won't try to place a disc on a tower that doesn't exist" do
      expect { game.move(0, 4) }.to raise_error("Not a valid tower!")
    end

    it "won't place a bigger disc on a smaller disc" do
      game = TowersOfHanoi.new([[3,2], [1], [0]])
      expect { game.move(0, 1) }.to raise_error("Smaller disc error!")
    end

    it "does not let you move disc to the tower it came from" do
      expect { game.move(0, 0) }.to raise_error("Select another tower!")
    end

  end

  describe "#won?" do

    it "will end game when all dics have been placed on third tower" do
      expect(game.won?).to be false
      game = TowersOfHanoi.new([[], [], [3, 2, 1]])
      expect(game.won?).to be true
    end

  end

end
