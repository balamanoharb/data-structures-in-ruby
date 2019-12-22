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
        swap(container, i, min_index)
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

    def self.merge_sort(container, low = 0, high = container.length - 1)
      return container if low >= high
      mid = low + (high - low) / 2
      merge_sort(container, low, mid)
      merge_sort(container, mid + 1, high)
      return merge(container, low, mid, high)
    end

    def self.merge(container, low, mid, high)
      left = container[low..mid]
      right = container[(mid+1)..high]
      left_i = 0
      right_i = 0
      cur = low
      while(left_i < left.length && right_i < right.length)
        if left[left_i] < right[right_i]
          container[cur] = left[left_i]
          left_i += 1
        else
          container[cur] = right[right_i]
          right_i += 1
        end
        cur += 1
      end

      while(left_i < left.length)
        container[cur] = left[left_i]
        cur += 1
        left_i += 1
      end
      
      while(right_i < right.length)
        container[cur] = right[right_i]
        cur += 1
        right_i += 1
      end
      return container
    end

    def self.swap(container, i, j)
      container[i], container[j] = container[j], container[i]
    end

  end
end