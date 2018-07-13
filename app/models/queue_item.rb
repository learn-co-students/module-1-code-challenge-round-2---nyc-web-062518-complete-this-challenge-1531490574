class QueueItem

  @@all = []

  attr_accessor :rating, :viewer, :movie

  def initialize(rating, viewer, movie)
    @rating = rating
    @viewer = viewer
    @movie = movie
    @@all << self
  end

  def self.all
    @@all
  end

end
