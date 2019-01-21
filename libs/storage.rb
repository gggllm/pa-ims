require_relative './json_data'
module Storage
  @tracks = JSONData.new('tracks')
  @artists = JSONData.new('artists')
  @play_lists = JSONData.new('play_lists')

  def self.tracks
    @tracks
  end

  def self.artists
    @artists
  end

  def self.play_lists
    @play_lists
  end
end
