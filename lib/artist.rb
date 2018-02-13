class Artist

  attr_accessor :name
  @@all = Array.new


  def initialize(name)
    @name = name
    self.save
    @@songs = Array.new
  end

  def songs
    @@songs
  end

  def add_song(song)
    @@songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    x = Artist.new(name)
    @@all.each do |artist|
      if name == artist.name
        x = artist
      end
    end
    x
  end

  def print_songs
    songs.each { |song| puts song.name}
  end

end
