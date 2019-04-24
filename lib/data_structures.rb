module Containers
  module ArrayBased; end
  module ObjectBased; end
end

module Algorithms; end

# data structures
require_relative "containers/array_based/stack"
require_relative "containers/array_based/queue"
require_relative "containers/array_based/binary_heap"

# algorithms
require_relative "algorithms/search"