require 'test_helper'

describe Heap do
  
  it "creates empty heap" do
    assert Heap.new.size == 0
  end

end