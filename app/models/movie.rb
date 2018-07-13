class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select {|queue_item| queue_item.movie == self}
  end

  def viewers
    queue_items.map {|queue_item| queue_item.viewer}
  end

  def average_rating
    sum_rating = 0
    num_of_ratings = 0
    QueueItem.all.each do |queue_item|
      sum_rating += queue_item.rating
      num_of_ratings += 1
    end
    sum_rating / num_of_ratings
  end

  def self.highest_rated
    sorted_queue = QueueItem.all.map {|queue_item| queue_item.rating}.sort
    # all.find {|movie| movie} sorted_queue.last
  end

end
