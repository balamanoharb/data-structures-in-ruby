require 'test_helper'
Queue = ArrayBased::Queue
describe Queue do
  
  it "creates an empty queue" do
    assert Queue.new.size == 0
  end

  it "creates queue with the given array when initialized" do
    assert Queue.new([1,2,3]).size == 3
  end

  it "inserts elements to the end of list when enqueue or push is called" do
    q = Queue.new
    q.enqueue(1)
    q.push(2)
    assert q.size == 2
  end

  it "throws error when the size limit is reached" do
    q = Queue.new([], 3)
    q.enqueue(1).enqueue(2).enqueue(3)
    err = ->{ q.push(100) }.must_raise SizeLimitReachedError
    assert err.message == "Queue reached the given size limit 3"
  end

  it "deletes and returns the oldest inserted element when dequeue or pop is called" do
    q = Queue.new([1,2,3])
    assert q.pop == 1
    assert q.size == 2
    assert q.dequeue == 2
    assert q.size == 1
  end

  it "returns the oldest element inserted when front is called" do
    q = Queue.new
    q.push(1)
    q.push(2)
    q.push(3)
    assert q.front == 1
  end

  it "returns the latest element inserted when rear is called" do
    q = Queue.new
    q.push(1)
    q.push(2)
    q.push(3)
    assert q.rear == 3
  end

  it "returns true if the queue has reached its limit when full? is called" do
    q = Queue.new([],1)
    q.push 1010
    assert q.full? == true
  end

  it "returns true if the queue is empty" do
    assert Queue.new.empty? == true
  end

end