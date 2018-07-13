require 'pry'

class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end


#returns an array of all queue items where viewer is self
  def queue_items
    QueueItem.all.select do |queue|
      queue.viewer == self
    end
  end

#iterates over the queue_items array (which is an array of objects of all queue items per instance of viewer) and finds the movie out of that object
  def queue_movies
    queue_items.map do |viewer|
      viewer.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end



  def rate_movie(movie, rating)
    movie_object = QueueItem.all.find do |queue|
      queue.movie == movie
    end
    if movie_object != nil
    movie_object.rating = rating
    else
      self.add_movie_to_queue(movie)
    end
  end

end
