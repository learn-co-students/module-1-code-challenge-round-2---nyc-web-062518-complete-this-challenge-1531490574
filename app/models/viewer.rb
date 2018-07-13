class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all #returns all of the viewers
    @@all
  end

  def queue_items
    #return an array of `QueueItem` instances associated with this instance of `Viewer`.
    QueueItem.all.select do |queue_item|
      queue_item.viewer == self
    end
  end

  def queue_movies
    #return an array of `Movie` instances in the `Viewer`'s queue
    QueueItem.all.collect do |queue_item|
      if queue_item.viewer == self
        queue_item.movie
      end
    end
  end

  def add_movie_to_queue(movie)
    #receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue
    QueueItem.new(movie, self)
  end

  def rate_movie(movie, rating)#given a movie and a rating (a number between 1 and 5)
    #assign the rating to the viewer's `QueueItem` for that movie
    
    QueueItem.new(movie, self, rating)
    #If the movie is not already in the viewer's queue,
    #this method should add a new `QueueItem` with the viewer, movie, and rating.
    #If the movie is already in the queue, this method should not create a new `QueueItem`
  end
end
