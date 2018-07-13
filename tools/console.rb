require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


  tony = Viewer.new("tony")

  mean_girls = Movie.new("mean girls")
the_departed = Movie.new("the departed")

  tony.add_movie_to_queue(the_departed)
  tony.add_movie_to_queue(mean_girls)

  tony.rate_movie("the_departed", 10)



  Movie.highest_rated
  binding.pry

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
