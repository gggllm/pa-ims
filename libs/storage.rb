require_relative './json_data'
module Storage
  @tracks = JSONData.new('tracks')
  @artists = JSONData.new('artists')
  @play_lists = JSONData.new('play_lists')
end
