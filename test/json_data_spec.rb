require 'minitest/spec'
require 'minitest/autorun'
require_relative '../methods'


describe Methods do
  it 'can be created with p and r' do
    circle.must_be_instance_of Circle
  end

end