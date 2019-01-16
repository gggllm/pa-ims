class PlayList
  attr_accessor :track_number, :play_time

  def initialize number
    @track_number = number
    @play_time = Time.now
  end
end