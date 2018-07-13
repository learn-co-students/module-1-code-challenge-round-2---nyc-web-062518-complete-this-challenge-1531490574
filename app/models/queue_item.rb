class QueueItem
  ALL = []

  attr_accessor :queue

  def initialize(queue)
    @queue = queue
    @queue << queue

  end

  def self.all
    queue
  end

end
