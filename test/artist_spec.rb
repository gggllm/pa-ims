require 'minitest/spec'
require 'minitest/autorun'
require_relative '../Models/artist'


describe Artist do
  it 'can initialize' do
    artist=Artist.new "name","id"
    artist.must_be_instance_of Artist
    assert_equal "name", artist.name
    assert_equal "id", artist.id
  end

end