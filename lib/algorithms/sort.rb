module Algorithms
  module Sort
    
    def self.selection(arr)
      for i in 0...arr.length
        min_index = i
        for j in i+1...arr.length
          if arr[j] < arr[min_index]
            min_index = j
          end
        end
        arr[i], arr[min_index] = arr[min_index], arr[i]
      end
      return arr
    end

  end
end