class Viewer
  attr_accessor :username

  @@all = []
  @@movie = []

  def initialize(username, movie, rating)
    @username = username
    @@movie = movie
    @@rating = rating
    self.class.all << self
    self.queue_movies << movie
  end

  def self.all
    @@all
  end

  def queue_items
    #a.select {|item|"a" == item}
    @@queueItem.select do |viewer| viewer
    end
  end

  def queue_movies
    @@movie
  end

  def add_movie_to_queue
    self.queue_movies << @@movie
  end

  def rate_movie(movie, rating)
    (1..5).rating
    self.queueItem << rating
  end

end
