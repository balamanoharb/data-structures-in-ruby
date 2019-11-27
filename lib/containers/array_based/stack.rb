require_relative "./store"
require_relative "../../dsa_errors"

module Containers
  module ArrayBased
    
    class Stack
      
      include Store

      def push element
        raise SizeLimitReachedError.new("Stack", capacity) if full?
        store.push element
        self
      end

      def pop
        store.pop
      end

      def peek
        store.last
      end
      alias_method :top, :peek

    end
  end
end
