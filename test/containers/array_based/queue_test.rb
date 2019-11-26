require 'test_helper'
Queue = ArrayBased::Queue
describe Queue do
  
  it "creates an empty queue" do
    assert Queue.new.size == 0
  end

  it "enqueue inserts to the end of list" do
    q = Queue.new
    q.enqueue(1)
    q.enqueue(2)
    q.enqueue(3)
    assert q.size == 3
    assert q.peek == 1
  end

  it "dequeue pops element from the beginning of list" do
    q = Queue.new
    q.enqueue(1)
    q.enqueue(2)
    q.enqueue(3)
    assert q.dequeue == 1
    assert q.size == 2
  end

end