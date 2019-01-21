require 'minitest/spec'
require 'minitest/autorun'
require_relative '../libs/storage'
require_relative '../libs/json_data'


describe Storage do
  it 'can offer artists,tracks and playlist' do
    Storage.tracks.must_be_instance_of JSONData
    Storage.artists.must_be_instance_of JSONData
    Storage.play_lists.must_be_instance_of JSONData
  end

end