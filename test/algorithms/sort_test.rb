require 'test_helper'
Sort = Algorithms::Sort
describe Sort do

  it "should sort the give array" do
    arr = (1..1000).to_a.reverse
    assert Sort.selection(arr) == (1..1000).to_a
  end

end