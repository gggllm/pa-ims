require 'minitest/spec'
require 'minitest/autorun'
require_relative '../methods'


describe Methods do

  it 'execute play' do
    Methods.play ("something")
  end

  it 'execute info track' do
    Methods.info_track "something"
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

end