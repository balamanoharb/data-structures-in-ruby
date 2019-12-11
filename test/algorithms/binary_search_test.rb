require 'test_helper'
BinarySearch = Algorithms::BinarySearch
describe BinarySearch do

  it "should find the index of given element" do
    arr = (0..1000).to_a
    assert BinarySearch.find(arr, 0) == 0
    assert BinarySearch.find(arr, 499) == 499
    assert BinarySearch.find(arr, 999) == 999
  end

  it "should return nil if the given element is not found" do
    arr = (0..1000).to_a
    assert BinarySearch.find(arr, 1001) == nil
  end

end