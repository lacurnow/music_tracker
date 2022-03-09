# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._
```ruby
class MusicTracker
  def initialize(name) # name is a string
    # ...
  end

  def add(track) # track is a string (but may become a hash)
    # No return value
  end

  def track_list
    # Returns a list of tracks
  end
end
```

## 3. Create Examples as Tests

```ruby
# 1
new_tracklist = MusicTracker.new("Playlist_1")
new_tracklist.add("Road to nowhere")
new_tracklist.track_list 
# => returns ["Road to nowhere"]

# 2
new_tracklist = MusicTracker.new("Playlist_1")
new_tracklist.add("")
# => Throws error "No track specified"

# 3
new_tracklist = MusicTracker.new("Playlist_1")
new_tracklist.add("Road to nowhere")
new_tracklist.add("Move on up")
new_tracklist.track_list 
# => returns ["Road to nowhere", "Move on up"]

# 4
new_tracklist = MusicTracker.new("Playlist_1")
new_tracklist.track_list
# => Throws error "No songs on tracklist" 
```
