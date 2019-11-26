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

  it "push inserts an element -> the size gets updated and peek gives last element" do
    s = Stack.new
    s.push(100)
    assert s.size == 1
    assert s.peek == 100
  end

  it "pop removes the last inserted element and reduces size" do
    s = Stack.new
    s.push 100
    s.push 200
    assert s.pop == 200
    assert s.size == 1
  end

end