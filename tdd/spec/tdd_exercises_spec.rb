require 'rspec'
require 'tdd_exercises'

describe "#my_uniq" do
  let(:array) { [1, 2, 1, 3, 3] }

  it "return an array" do
    expect(array.my_uniq).to be_a(Array)
  end

  it "it does not modify the original array" do
    expect(array.my_uniq).to_not be(array)
  end

  it "contains only unique elements" do
    expect(array.my_uniq).to eq([1, 2, 3])
  end
end

describe "#two_sum" do
  let(:array) { [-1, 0, 2, -2, 1] }
  let(:one_zero) { [3, 0, 4] }

  it "returns the indices of elements that add to 0" do
    expect(array.two_sum).to eq([[0, 4], [2, 3]])
  end

  it "does not return a single zero" do
    expect(one_zero.two_sum).to eq ([])
  end

  it "each passed element index sorted by smaller element first" do
    array_res = array.two_sum.first
    expect(array_res.first).to be < (array_res.last)
  end

  it "sorts array of pairs dictionary-wise" do
    array_first_element = array.two_sum.first[0]
    array_second_element = array.two_sum.last[0]

    expect(array_first_element).to be < array_second_element
  end
end

describe "#my_transpose" do
  let(:rows) {[[0, 1, 2],[3, 4, 5],[6, 7, 8]]}

  it "transposes the matrix" do
    columns = [[0, 3, 6],[1, 4, 7],[2, 5, 8]]
    expect(my_transpose(rows)).to eq(columns)
  end
end

describe "#stock_picker" do
  let(:array) { [3, 1, 2, 1, 5, 4] }

  it "outputs the most profitable pair of buy and sell days" do
    expect(stock_picker(array)).to eq([1, 4])
  end

  it "does not buy stocks in a crash" do
    expect(stock_picker([5, 4, 3, 2, 1])).to be_nil
  end

end
