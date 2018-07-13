class QueueItem

	@@all = []

	attr_accessor :viewer, :movie, :rating

	def initialize(viewer, movie, rating)
		@viewer = viewer
		@movie = movie
		@rating = rating
		@@all << self
	end

	def self.all
		@@all
	end

	def rating
		self.rating
	end




end
