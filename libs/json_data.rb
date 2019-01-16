require 'yaml/store'
class JSONData
  def initialize file_name
    @store = YAML::Store.new("./storage/#{file_name}.yml")
  end

  def set key, value
    @store.transaction do
      @store[key] = value
      @store.commit
    end
  end

  def put key, value
    set key, value
  end

  def get key
    @store.transaction do
      @store[key]
    end
  end
end