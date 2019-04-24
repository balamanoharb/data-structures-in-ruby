module Containers
  module ArrayBased
    
    module BinaryHeap

      def initialize(arr = [])
        # loop through and create a new array
        @store = arr.map {|element| element}
        build_heap
      end

      # add an element to the heap
      def push(element)
        store << element
        heapify_up
        element
      end

      # extract the most dominant element
      def pop
        return nil if empty?
        return store.pop if size == 1
        item = store.first
        store[0] = store.pop
        heapify_down
        return item
      end

      # extract
      def peek
        store.first
      end

      def size
        store.size
      end

      def empty?
        store.empty?
      end

      private

      def store
        @store
      end

      # get indexes
      def parent_index(index)
        (index - 1) / 2
      end
      
      def left_child_index(index)
        (index * 2) + 1
      end

      def right_child_index(index)
        (index * 2) + 2
      end

      # check if parent, left_child, right_child are present
      def parent?(index)
        index >= 1
      end

      def left_child?(index)
        left_child_index(index) < size
      end

      def right_child?(index)
        right_child_index(index) < size
      end

      # get value of
      def parent(index)
        store[parent_index(index)]
      end

      def left_child(index)
        store[left_child_index(index)]
      end

      def right_child(index)
        store[right_child_index(index)]
      end

      # this will be a lambda a <=> b or b <=>a
      def dominant_logic
        raise "Not Implemented Error"
      end

      # determines if a is dominant when compared to b
      def dominant?(a,b)
        dominant_logic.call(a,b) > 0
      end

      def swap(index_1, index_2)
        store[index_1], store[index_2] = store[index_2], store[index_1]
      end

      def heapify_up(current_index = store.size - 1)
        while( 
          parent?(current_index) && 
          dominant?(store[current_index], parent(current_index) )
        )
          swap(parent_index(current_index), current_index)
          current_index = parent_index(current_index)
        end
      end

      def heapify_down(current_index = 0)
        while(left_child?(current_index))
          dominant_index = left_child_index(current_index)
          if( 
            right_child?(current_index) && 
            dominant?(right_child(current_index), left_child(current_index)) 
          )
            dominant_index = right_child_index(current_index)
          end
          
          if dominant?(store[dominant_index], store[current_index])
            swap(current_index, dominant_index)
          else
            break
          end
          current_index = dominant_index
        end
      end

      def build_heap
        (size/2).downto(0) do |index|
          heapify_down(index)
        end
        store
      end

    end

    class MinHeap
      include BinaryHeap
      private 
      def dominant_logic
        lambda { |a,b| b <=> a } 
      end
    end

    class MaxHeap
      include BinaryHeap
      private
      def dominant_logic
        lambda {|a,b| a <=> b}
      end
    end

  end
end