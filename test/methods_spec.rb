require 'minitest/spec'
require 'minitest/autorun'
require_relative '../methods'


describe Methods do

  it 'execute play' do
    track_name="track_name_very_strange"
    assert_equal "cannot find this track",Methods.play(track_name)
  end

  it 'execute info track' do
    Methods.info_track 1
  end

  it 'execute info artist' do
    Methods.info_artist "something"
  end

  it 'execute count tracks' do
    Methods.count_tracks "something"
  end

  it 'execute list tracks' do
    Methods.list_tracks "something"
  end

  it 'execute add track' do
    Methods.add_track("something", "something")
  end

  it 'execute add artist' do
    Methods.add_artist "something"
  end

  it 'cannot add artist with strange id' do
    artist_id = "very strange stuff"
    assert_equal "cannot find artist with id #{artist_id}", Methods.add_track("something", artist_id)
  end

end