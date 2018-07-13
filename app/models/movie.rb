class Movie
  attr_accessor :title, :rating

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end


  def queue_items
  	QueueItem.all.select do |item|
  		item.movie == self
  	end
  end

  def viewers
  	queue_items.map do |item|
  		item.viewer
  	end
  end

  def average_rating
  	total_rating = 0
  	binding.pry
  	queue_items.map do |item|
  		total_rating += item.rating
  	end
  	total_rating/queue_items.length
  end


  def self.highest_rated
  	array = []
  	all.map do |movie|
  		array << movie.average_rating
  	end
  	array.max
  end

end
