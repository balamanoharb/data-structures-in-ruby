module Store

  def initialize(ary = [], capacity = nil)
    @store = []
    @capacity = capacity
    ary.each {|element| push element}
    self
  end

  def size
    @store.size
  end
  alias length size

  def empty?
    @store.empty?
  end

  def full?
    capacity.nil? ? false : capacity == size
  end

  private
  attr_reader :store, :capacity
  
end