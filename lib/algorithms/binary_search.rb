module Algorithms
  module BinarySearch
    
    def self.find(container, item)
      low = 0
      high = container.size - 1
      while(low<=high)
        mid = (low + high) / 2
        if container[mid] == item
          return mid
        elsif container[mid] < item
          low = mid + 1
        else
          high = mid - 1
        end
      end
      return nil
    end

    def self.find_first(container, item)
    end

    def self.find_last(container, item)
    end

    def self.find_in_rotated(container, item)
    end

  end
end