class QueueItem
  @@all = []
  attr_reader :movie, :viewer, :rating

  def initialize(movie, viewer, rating=nil)
    @movie = movie
    @viewer = viewer
    @rating = rating
    @@all << self
  end

  def self.all #returns an array of all `QueueItem`s
    @@all
  end
end
