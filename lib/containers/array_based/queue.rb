require_relative "./store"
require_relative "../../dsa_errors"
module Containers
  module ArrayBased

    class Queue
      include Store
      
      def push element
        raise SizeLimitReachedError.new("Queue", capacity) if full?
        store.push element
        self
      end
      alias_method :enqueue, :push

      def pop
        store.shift
      end
      alias_method :dequeue, :pop

      def front
        store.first
      end
      alias_method :peek, :front

      def rear
        store.last
      end

    end

  end
end