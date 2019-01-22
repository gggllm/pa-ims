require_relative 'libs/storage'
require_relative './Models/artist'
require_relative './Models/play_list'
require_relative './Models/track'

module Methods
  @tracks = Storage.tracks
  @artists = Storage.artists
  @play_lists = Storage.play_lists


  def self.add_artist name
    artists = (@artists.get :data) || []
    target = artists.find {|x| x.name == name}
    if target.nil?
      id = name.split(' ').map {|x| x[0]}.join('')
      temp = id
      index = 2
      until artists.find {|x| x.id == id}.nil?
        id = temp + index
        index += 1
      end
    else
      return "artist alread exists id is #{target.id}"
    end
    artist = Artist.new(name, id)
    artists << artist
    @artists.set :data, artists
    return "artist is successfully added, id is #{id}"
  end

  def self.info
    list = (@play_lists.get :data) || []
    tracks = (@tracks.get :data) || []
    artists = (@artists.get :data) || []
    output = []
    output << "three recently played music:"
    output << list.reverse.take(3)
                  .each_with_index.
        map {|play_list, index| "#{index + 1}. #{tracks[play_list.track_number.to_i].track_name}"}
    output << "total number of tracks added: #{tracks.length}"
    output << "total number of artists added: #{artists.length}"
    output.join("\n")
  end

  def self.info_track track
    tracks = (@tracks.get :data) || []
    track = track.to_i
    if track > tracks.length
      return "cannot find this track"
    else
      track = tracks[track]
      return "track name is #{track.track_name}, artist name is #{track.artist_name}"
    end
  end

  def self.add_track track, artist
    tracks = (@tracks.get :data) || []
    tracks << Track.new(track, artist)
    @tracks.set :data, tracks
    "You have succeessfully added track #{track} by #{artist}"
  end

  def self.count_tracks artist
    tracks = get_tracks_array_by_artist(artist)
    return "there is #{tracks.length} tracks in your collection"
  end

  def self.list_tracks artist
    tracks = get_tracks_array_by_artist(artist)
    tracks.each_with_index.map {|track, index| "#{index + 1}. \"#{track.track_name}\" by #{track.artist_name}"}
  end

  def self.play track
    list = (@play_lists.get :data) || []
    list << (PlayList.new(track))
    @play_lists.set :data, list
    return "you have played track #{track}"
  end

  def self.info_artist artist
    artists = (@artists.get :data) || []
    target = artists.find {|x| x.id == artist}
    if target.nil?
      return "cannot find artist with id #{artist}"
    else
      return "artist with id#{artist}, name is #{target.name}"
    end
  end

  def self.clear
    @tracks.set :data, []
    @artists.set :data, []
    @play_lists.set :data, []
  end

  private

  def self.get_tracks_array_by_artist(artist)
    tracks = (@tracks.get :data) || []
    artists = (@artists.get :data) || []
    artist = artists.find {|x| x.name == artist}
    tracks = if artist.nil?
               []
             else
               tracks.select {|track| track.artist_name == artist.name}
             end
  end
end
