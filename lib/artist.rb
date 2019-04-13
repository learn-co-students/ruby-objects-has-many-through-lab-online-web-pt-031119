class Artist

  attr_accessor :name, :song_name, :genre, :artist

  @@all = []

  #Class Methods

  def self.all
    @@all
  end

  #Instance Methods

  def initialize(name)
    @name = name
  end

  def new_song(song_name, genre)
    song = Song.new(song_name)
    song.genre = genre
    song.artist = self
  end



end
