  #this class offers some static methods to deal with user input
class CommandInterpreter
  #this method will return an array =[command, track, artist]
  def self.interpret input
    input = input.strip.lstrip.downcase
    input=input.gsub /\s+/," "
    input_array = input.split(/\s+/)
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
        case input_array[1]
        when "artist"
          artist = input[command.length + 1..-1]
        when "track"
          track = input[command.length + 1..-1]
        end
        return command, track, artist
      end
    when 'add'
      command = "add #{input_array[1]}"
      arguments = input.split(/\s+by\s+/)
      track = arguments[0][command.length + 1..-1]
      artist = arguments[1] || arguments[0][command.length + 1..-1]
      raise 'no track arguments' if track.nil?
      return command, track, artist
    when 'play'
      track = input[11..-1]
      raise 'no track arguments' if track.nil?
      return 'play track', track
    when 'count'
      return 'count tracks', '', input.split(/\s+by\s+/)[1]
    when 'list'
      return 'list tracks', '', input.split(/\s+by\s+/)[1]
    else
      raise 'no matched command'
    end
  end
end