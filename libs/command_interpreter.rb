=begin
  this class offers some static methods to deal with user input
=end
class CommandInterpreter
=begin
  this method will return an array =[command, track, artist]
=end
  def self.interpret input
    input = input.strip.lstrip.downcase
    input_array = input.split(' ')
    case input_array[0]
    when 'help'
      return ['help']
    when 'exit'
      return ['exit']
    when 'info'
      if input_array[1].nil?
        return ['info']
      else
        command = "info #{input_array[1]}"
        arguments = input.split(' by ')
        track = arguments[0][command.length..-1]
        artist = arguments[1]
        return command, track, artist
      end
    when 'add'
      command = "add #{input_array[1]}"
      arguments = input.split(' by ')
      track = arguments[0][command.length..-1]
      artist = arguments[1]
      raise 'no track arguments' if track.nil?
      return command, track, artist
    when 'play'
      track = input[5..-1]
      raise 'no track arguments' if track.nil?
      return 'play track', track
    when 'count'
      return 'count tracks', '', input.split(' by ')[1]
    when 'list'
      return 'list tracks', '', input.split(' by ')[1]
    else
      raise 'no matched command'
    end
  end
end