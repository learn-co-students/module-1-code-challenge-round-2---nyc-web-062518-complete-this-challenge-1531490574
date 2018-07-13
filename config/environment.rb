require 'bundler/setup'
Bundler.require
require_rel '../app'

incredibles = Movie.new("Incredibles")
kungfupanda = Movie.new("Kung Fu Panda")

ann = Viewer.new("Ann")
jack = Viewer.new("Jack")
sean = Viewer.new("Sean")

item1 = QueueItem.new(ann, incredibles, 4)
item2 = QueueItem.new(jack, kungfupanda, 5)
item3 = QueueItem.new(sean, incredibles, 5)
