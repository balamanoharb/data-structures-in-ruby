module Containers
  module ArrayBased

    class QueueError < StandardError
    end

    class Queue

      def initialize(capacity)
        @store = []
        @capacity = capacity
      end

      def full?
        store.size == capacity
      end

      def empty?
        store.empty?
      end

      def enqueue(obj)
        raise QueueError, "Queue capacity full" if full?
        store.push obj
        obj
      end

      def dequeue
        store.shift
      end

      def front
        store.first
      end
      alias peek front


      def rear
        store.last
      end

      def size
        store.size
      end

      private
      def store
        @store
      end

      def capacity
        @capacity
      end

    end

  end
end