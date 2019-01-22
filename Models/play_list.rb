class PlayList
  attr_accessor :track_number, :play_time

  def initialize number, time = Time.now
    @track_number = number
    @play_time = time
  end
end