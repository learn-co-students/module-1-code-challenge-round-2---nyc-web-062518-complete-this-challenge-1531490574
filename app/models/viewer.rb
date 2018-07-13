require 'pry'

class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue_item|
      queue_item.viewer == self
    end
  end

  def queue_movies
    queue_items.map do |queue_item|
      queue_item.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)
    QueueItem.new(self, movie, rating)
  end


end
