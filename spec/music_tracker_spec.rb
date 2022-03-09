require 'music_tracker'

RSpec.describe MusicTracker do
  it "adds a track to our tracklist" do
    new_tracklist = MusicTracker.new("Playlist_1")
    new_tracklist.add("Road to nowhere")
    expect(new_tracklist.track_list).to eq ["Road to nowhere"]
  end

  it "throws an error when no track is specified" do
    new_tracklist = MusicTracker.new("Playlist_1")
    expect { new_tracklist.add("") }.to raise_error "No track specified"
  end
end