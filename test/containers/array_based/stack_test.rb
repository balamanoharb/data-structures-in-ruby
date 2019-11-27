require 'test_helper'
Stack = ArrayBased::Stack
describe Stack do
  
  it "creates empty stack" do
    assert Stack.new.size == 0
  end

  it "accepts an optional array and initializes the stack with array elements" do
    s = Stack.new([1,2,3])
    assert s.size == 3
  end

  it "throws error when stack reaches the given capacity" do
    s = Stack.new([], 3)
    s.push 100
    s.push 200
    s.push 300
    err = ->{ s.push(100) }.must_raise SizeLimitReachedError
    assert err.message == "Stack reached the given size limit 3"
  end

  it "inserts an element and the size gets updated when push is called" do
    s = Stack.new
    s.push(100)
    assert s.size == 1
  end

  it "returns the last inserted element when top/peek is called" do
    s = Stack.new
    s.push 100
    s.push 200
    assert s.top == 200
    assert s.peek == 200
  end

  it "deletes and returns the last inserted element and reduces size when pop gets called" do
    s = Stack.new
    s.push 100
    s.push 200
    assert s.pop == 200
    assert s.size == 1
  end

  it "returns true if the stack has reached its limit when full? is called" do
    q = Stack.new([],1)
    q.push 1010
    assert q.full? == true
  end

  it "returns true if the stack is empty" do
    assert Stack.new.empty? == true
  end

end