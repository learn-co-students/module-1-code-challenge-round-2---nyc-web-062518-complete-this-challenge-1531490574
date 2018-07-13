class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

 #return an array of `QueueItem` instances
  def queue_items
  	QueueItem.all.select do |item|
  		item.viewer == self
  	end
  end

# return an array of `Movie` instances in the `Viewer`'s queue.
  def queue_movies
  	queue_items.map do |item|
  		item.movie
  	end
  end

#receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue
  def add_movie_to_queue(movie)
  	QueueItem.new(self, movie, nil)
  end


  def rate_movie(movie, rating)
  	# If it is in the queue
  	if queue_items.include?(movie)
  		item = queue_items.find do |queue_item|
  			queue_item.movie == movie
  		end
  		item.rating = rating
  	
  	#If it is not in the queue
  	else
  		QueueItem.new(self, movie, rating)
  	end
  end

end
