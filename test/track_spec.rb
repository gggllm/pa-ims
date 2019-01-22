require 'minitest/spec'
require 'minitest/autorun'
require_relative '../Models/track'


describe Track do
  it 'can initialize' do
    track=Track.new "name","artist"
    track.must_be_instance_of Track
    assert_equal "name", track.track_name
    assert_equal "artist", track.artist_name
  end

end