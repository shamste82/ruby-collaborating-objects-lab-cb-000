class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    songs = file.split(" - ")
    #songs.each {|song| puts "#{song}"}
    artist = songs[0]
    song_title = songs[1]
    puts "#{artist}"
    song = Song.new(song_title)
    artist_name(artist)
    song
  end

  def artist_name=(n)
    @artist = Artist.find_or_create_by_name(n)
  end

end
