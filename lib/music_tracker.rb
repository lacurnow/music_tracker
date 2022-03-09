class MusicTracker
  def initialize(name)
    @name = name
    @track_list = []
  end

  def add(track)
    fail "No track specified" if track == ""
    @track_list.push(track)
  end

  def track_list
    @track_list
  end
end