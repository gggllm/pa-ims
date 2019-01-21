require 'minitest/spec'
require 'minitest/autorun'
require_relative '../libs/json_data'


describe JSONData do
  it 'can initialize' do
    JSONData.new('unit_test').must_be_instance_of JSONData
  end

  it 'can set and get' do
    data = JSONData.new('unit_test')
    data.set(:test, [12345, "56789"])
    assert_equal([12345, "56789"], data.get(:test))

  end

end