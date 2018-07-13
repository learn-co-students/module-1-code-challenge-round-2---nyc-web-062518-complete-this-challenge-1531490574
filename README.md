# Object Relations Assessment

For this challenge, we'll be building out Netflix! A `Viewer` has many `Movie`s through `QueueItem`s. A `Movie` can appear on many `Viewer`s' queues. A `Viewer` can rate a `Movie`, marking their rating on the `QueueItem`.

As always, make sure to sketch out your domain and think about the single source of truth for your data.

## Topics

- Classes vs Instances
- Variable Scope ( Class, Instance, Local )
- Object Relationships
- Arrays and Array Methods
- Class Methods

## Notes

Your goal is to build out all of the methods listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You must run this from this assignment's root directory, not from inside the tools directory. You'll be able to test out the methods that you write here. Take a look at that file to see how you can pre-define variables and create object instances, rather than manually doing it in every single console session.

## Deliverables

Implement all of the methods described below

### `Viewer`

<!-- + `Viewer.all`
  + returns all of the viewers -->
<!-- + `Viewer#queue_items`
  + this method should return an array of `QueueItem` instances associated with this instance of `Viewer`.
+ `Viewer#queue_movies`
  + this method should return an array of `Movie` instances in the `Viewer`'s queue. -->
<!-- + `Viewer#add_movie_to_queue(movie)`
  + this method should receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue -->
+ `Viewer#rate_movie(movie, rating)`
  + given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's `QueueItem` for that movie. If the movie is not already in the viewer's queue, this method should add a new `QueueItem` with the viewer, movie, and rating. If the movie is already in the queue, this method should not create a new `QueueItem`.

### `QueueItem`

_A `QueueItem` object represents that an individual user has added a particular movie to their queue, and possibly rated it. **It is not the full queue, but a single item in the queue.**_

<!-- + `QueueItem.all`
  + returns an array of all `QueueItem`s -->
<!-- + `QueueItem#viewer`
  + returns the viewer associated with this `QueueItem`
+ `QueueItem#movie`
  + returns the movie associated with this `QueueItem` -->
<!-- + `QueueItem#rating`
  + returns the rating for this `QueueItem`. If the viewer has not yet rated the movie, `QueueItem#rating` should be `nil` -->

### `Movie`

<!-- + `Movie.all`
  + returns an array of all `Movie` -->
<!-- + `Movie#queue_items`
  + returns an array of all the `QueueItem` instances that contain this movie -->
<!-- + `Movie#viewers`
  + returns an array of all of the `Viewer`s with this `Movie` instance in their queue -->
+ `Movie#average_rating`
  + returns the average of all ratings for this instance of `Movie`
+ `Movie.highest_rated`
  + returns the instance of `Movie` with the highest average rating
