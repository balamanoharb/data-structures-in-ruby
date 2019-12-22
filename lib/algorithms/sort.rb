module Algorithms
  module Sort
    
    def self.selection_sort(container)
      for i in 0...container.length
        min_index = i
        (i+1).upto(container.size-1) do |j|
          if container[j] < container[min_index]
            min_index = j
          end
        end
        container[i], container[min_index] = container[min_index], container[i]
      end
      return container
    end

    def self.quick_sort(container, low = 0, high = container.length - 1)
      return container if low > high
      pivot_index = partition(container, low, high)
      quick_sort(container, low, pivot_index - 1)
      quick_sort(container, pivot_index + 1, high)
      return container
    end

    def self.partition(container, low, high)
      # assume pivot index
      pivot_index = low - 1
      # assume high as pivot element
      while(low < high)
        if(container[low] < container[high])
          pivot_index += 1
          swap(container, low, pivot_index)
        end
        low += 1
      end
      pivot_index += 1
      swap(container, pivot_index, high)
      return pivot_index
    end

    def self.swap(container, i, j)
      container[i], container[j] = container[j], container[i]
    end

  end
end