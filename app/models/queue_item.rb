class QueueItem

  attr_reader :movie, :viewer
  attr_accessor :rating


    @@all = []

    def initialize(movie, viewer, rating=nil)
      @movie = movie
      @viewer = viewer
      @rating = rating
      @@all << self
    end


    def self.all
      @@all
    end


end
