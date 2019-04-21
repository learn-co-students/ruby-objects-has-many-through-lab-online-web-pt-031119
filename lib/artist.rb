class Artist
  attr_accessor :name, :artist, :genre, :song
  attr_reader
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |x|
      x.artist == self
    end
  end

  def genres
    Song.all.map do |x|
      x.genre
    end
  end
end
