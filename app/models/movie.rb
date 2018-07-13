require 'pry'
class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end
  end

  def viewers
    queue_items.map do |queue_item|
      queue_item.viewer
    end
  end

  def average_rating
    total = 0
      self.all.each do |movie|
        total += movie.rating
      end
    total/self.all.count
  end

  def self.highest_rated
    average_rating.reverse.count
  end

end
