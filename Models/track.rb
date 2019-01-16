class Track
  attr_accessor :track_name, :artist_name

  def initialize name, artist_name
    @track_name = name
    @artist_name = artist_name
  end
end