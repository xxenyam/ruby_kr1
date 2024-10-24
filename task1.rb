require "rspec"

def sort_array_in_ascending (array)
  array.length.times do
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end

  array
end

RSpec.describe "#sort_array_in_ascending" do
  it "sorts an array in ascending order" do
    expect(sort_array_in_ascending([5, 3, 8, 1])).to eq([1, 3, 5, 8])
  end

  it "returns an empty array if the input is empty" do
    expect(sort_array_in_ascending([])).to eq([])
  end

  it "handles an array with one element" do
    expect(sort_array_in_ascending([7])).to eq([7])
  end

  it "sorts an array with negative numbers" do
    expect(sort_array_in_ascending([3, -2, 5, -1])).to eq([-2, -1, 3, 5])
  end

  it "sorts an array with float numbers" do
    expect(sort_array_in_ascending([4, 2, 7.0, 3])).to eq([2, 3, 4, 7.0])
  end

  it "sorts an array with a mix of ints, floats, and negative numbers" do
    expect(sort_array_in_ascending([4, 2, 7.0, 3])).to eq([2, 3, 4, 7.0])
  end

  it "sorts an array with a mix of ints, floats, negative numbers and dublicates" do
    expect(sort_array_in_ascending([4, 2, 4, 3, -8, 3.0])).to eq([-8, 2, 3, 3.0, 4, 4])
  end
end