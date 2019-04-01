module Containers
  module ArrayBased

    class Stack

      def initialize
        @store = []
      end

      def push element
        store.push element
      end

      def pop
        store.pop
      end

      def peek
        store.last
      end

      def size
        store.size
      end
      alias length size

      def empty?
        store.empty?
      end

      private
      def store
        @store
      end

    end

  end
end
