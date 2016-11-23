class TowersOfHanoi

  attr_reader :towers

  def initialize(towers = [[3, 2, 1], [], []])
    @towers = towers
  end

  def play
    # move until game_over?
    false until won?
    true
  end

  def move(from, to)
    raise "Select another tower!" if from == to
    raise "No disc there!" if towers[from].empty?
    raise "Not a valid tower!" unless to.between?(0, 2)
    # puts "Please select a tower:"
    from_disc = towers[from].pop

    raise "Smaller disc error!" if from_disc > towers[to].last

    towers[to] << from_disc
  end

  def select_tower(input)
    towers[input].pop
  end

  def won?
    towers[0..1].all?(&:empty?)
  end

end
