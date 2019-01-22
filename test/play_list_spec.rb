require 'minitest/spec'
require 'minitest/autorun'
require_relative '../Models/play_list'


describe PlayList do
  it 'can initialize' do
    play_list=PlayList.new "name","2015-10-10"
    play_list.must_be_instance_of PlayList
    assert_equal "name", play_list.track_number
    assert_equal "2015-10-10", play_list.play_time
  end

end