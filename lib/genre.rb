class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.collect do |song|
      if song.genre.name == self.name
        song
      end
    end
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end
