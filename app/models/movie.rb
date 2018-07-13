class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all#returns an array of all `Movie`
    @@all
  end

  def queue_items
    #returns an array of all the `QueueItem` instances that contain this movie
    QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end

  end

  def viewers
    #returns an array of all of the `Viewer`s with this `Movie` instance in their queue
    QueueItem.all.collect do |queue_item|
      if queue_item.movie == self
        queue_item.viewer
      end
    end
  end

  def average_rating
    #returns the average of all ratings for this instance of `Movie`
    
  end

  def self.highest_rated
    #returns the instance of `Movie` with the highest average rating
  end

end
