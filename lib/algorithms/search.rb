module Algorithms
  module Search

    # Binary Search implementations

    def self.binary_search(container, key)
      low = 0
      high = container.size - 1
      while(low <= high)
        mid = low + (high - low)/2
        if container[mid] == key
          return mid
        elsif container[mid] > key
          high = mid - 1
        else
          low = mid + 1
        end
      end
      return -1    
    end

    def self.binary_search_recursive(container, key)
      return binary_search_helper(container, key, 0, container.size - 1)
    end

    def self.binary_search_helper(container, key, low, high)
      return -1 if low > high
      mid = low + (high - low)/2
      return mid if container[mid] == key
      return binary_search_helper(container, key, low, mid - 1) if container[mid] > key
      return binary_search_helper(container, key, mid + 1, high)
    end

  end
end