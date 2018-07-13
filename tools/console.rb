require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

viewer1 = Viewer.new("Jack")
viewer2 = Viewer.new("Lily")


movie1 = Movie.new("Miko")
movie2 = Movie.new("Hachiko")


# queue1 = QueueItem.new(nil, viewer1 , movie1)
# queue2 = QueueItem.new(2, viewer1, movie1)
queue3 = QueueItem.new(3, viewer1, movie2)
queue4 = QueueItem.new(5, viewer1, movie2)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
