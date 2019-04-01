require 'test_helper'
MaxHeap = ArrayBased::MaxHeap
describe MaxHeap do
  
  it "creates empty heap" do
    assert MaxHeap.new.size == 0
  end

  it "should create max heap from an array" do
    arr = Array.new(20) { rand(1..100) }
    ordered = arr.sort {|x,y| (y <=> x)}
    heap = MaxHeap.new(arr)
    result = []
    result << heap.pop until heap.empty?
    assert result == ordered
  end

  it "should always give the max element when inserted using peek" do
    arr = Array.new(10) { rand(1..100) }
    arr.sort!
    heap = MaxHeap.new
    arr.each do |element|
      heap.push element
      assert heap.peek == element
    end
  end

  it "should maintain heap property for insertion" do
    arr = Array.new(10) { rand(1..100) }
    heap = MaxHeap.new
    arr.each {|element| heap.push(element)}
    result = []
    result << heap.pop until heap.empty?
    assert result == arr.sort {|x,y| (y <=> x)}
  end

end