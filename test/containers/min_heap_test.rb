require 'test_helper'

describe MinHeap do
  
  it "creates empty heap" do
    assert MinHeap.new.size == 0
  end

  it "should create min heap from an array" do
    arr = Array.new(20) { rand(1..100) }
    ordered = arr.sort
    heap = MinHeap.new(arr)
    result = []
    result << heap.pop until heap.empty?
    assert result == ordered
  end

  it "should always give the min element when inserted using peek" do
    arr = Array.new(10) { rand(1..100) }
    arr.sort!
    heap = MinHeap.new
    heap.push arr.last
    (arr.size - 1).downto(0) do | index |
      heap.push arr[index]
      assert heap.peek == arr[index]
    end
  end

  it "should maintain heap property for an element" do
    arr = Array.new(10) { rand(1..100) }
    heap = MinHeap.new
    arr.each {|element| heap.push(element)}
    result = []
    result << heap.pop until heap.empty?
    assert result == arr.sort
  end

end