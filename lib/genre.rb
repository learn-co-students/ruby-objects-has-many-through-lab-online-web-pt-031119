class Genre
  attr_accessor :genre, :name, :song, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |x|
      x.genre == self
    end
  end

  def artists
    Song.all.map do |x|
      x.artist
    end
  end

end
