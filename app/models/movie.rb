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
    QueueItem.all.select do |queue|
      queue.movie == self
    end
  end

  def viewers
    queue_items.map do |movie|
      movie.viewer
    end
  end

  def average_rating
    ratings_var = 0
    queue_items.each do |movie|
      ratings_var += movie.rating
    end
    ratings_var / queue_items.length
  end

  def self.highest_rated
    movie_ordered = all.max do |a,b|
      a.average_rating <=> b.average_rating
    end
    movie_ordered[0]
  end

end
