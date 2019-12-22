require 'test_helper'
Sort = Algorithms::Sort
describe Sort do

  before do

    # since there are n^2 algorithms involved
    # increasing the limits beyond 300 will cause the entire test suite to slow down
    @upper_limit = 100
    @lower_limit = -@upper_limit

    @test_inputs = [
      # empty array
      [],
      # array with element
      [1],
      # array with two elements
      [2,3],
      # array with three elements,
      [9, 3, 5],
      # array in already sorted order
      (1..@upper_limit).to_a,
      # array in reversed order,
      @upper_limit.downto(1).to_a,
      # array with repeated values,
      (1..@upper_limit).to_a * 2,
      # mix of positive and negative
      @upper_limit.downto(@lower_limit).to_a
    ]

    @expected_outputs = [
      [],
      [1],
      [2,3],
      [3,5,9],
      (1..@upper_limit).to_a,
      (1..@upper_limit).to_a,
      ((1..@upper_limit).to_a * 2).sort,
      (@lower_limit..@upper_limit).to_a
    ]
  end

  it "should sort all inputs as expected" do
    @test_inputs.each_with_index do |arr, i|
      assert Sort.selection_sort(arr) == @expected_outputs[i]
      assert Sort.quick_sort(arr) == @expected_outputs[i]
      assert Sort.merge_sort(arr) == @expected_outputs[i]
    end
  end

end