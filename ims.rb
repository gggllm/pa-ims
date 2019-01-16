require './libs/command_interpreter'
require './libs/storage'
require './methods'
loop do

  input = gets.chomp
  begin
    command, track, artist = CommandInterpreter.interpret input
  rescue
    puts "input command doesn't have the right arguments"
  end

  case command
  when 'exit'
    exit(0)
  when 'help'
    puts '
  1.Help - display a simple help screen. This is a text message, multi line, that explains the available commands. Sort of like this list.
  2.Exit - save state and exit. The effect of this is that when the app is run again, it is back to exactly where it was when you exited. What this amounts to is basically to make sure the tracks and artists and their info have all been saved.
  3.Info - display a high level summary of the state. At minimum, the last 3 tracks played, and a count of the total number of tracks and the total number of artists. You can elaborate if you want.
  4.Info track - Display info about a certain track by number
  5.Info artist - Display info about a certain artist, by id
  6.Add Artist - Adds a new artist to storage and assign an artist id. Default artist id is the initials of the artist. If this is ambiguous then another id is automatically assigned and displayed. e.g. add artist john osborne
  7.Add Track - Add a new track to storage. add track watching the sky turn green by jo
  8.Play Track - Record that an existing track was played at the current time, e.g. play track 13.
  9.Count tracks - Display how many tracks are known by a certain artist, e.g. count tracks by jo
  10.List tracks - Display the tracks played by a certain artist, e.g. list tracks by jo
'
  when 'info'
    puts Methods.info
  when 'info track'
    puts Methods.info_track track
  when 'info artist'
    puts Methods.info_artist artist
  when 'add artist'
    puts Methods.add_artist artist
  when 'add track'
    puts Methods.add_track track, artist
  when 'play track'
  when 'count tracks'
    puts Methods.count_tracks artist
  when 'list tracks'
    puts Methods.list_tracks artist
  else
    puts 'undefined command, press help for more information about IMS'
  end
end