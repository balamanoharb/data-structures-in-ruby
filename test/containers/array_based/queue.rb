require 'test_helper'
Queue = ArrayBased::Queue
describe Queue do
  
  it "creates empty queue" do
    assert Queue.new(10).size == 0
  end

  it "enqueue inserts to the end of list" do
    q = Queue.new(3)
    q.enqueue(1)
    q.enqueue(2)
    q.enqueue(3)
    assert q.size == 3
    assert q.peek == 1
  end

  it "dequeue pops element from the beginning of list" do
    q = Queue.new(3)
    q.enqueue(1)
    q.enqueue(2)
    q.enqueue(3)
    assert q.dequeue == 1
    assert q.size == 2
  end

end