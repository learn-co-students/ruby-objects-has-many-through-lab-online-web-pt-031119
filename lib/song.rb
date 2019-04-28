class Song
  @@all = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@all.push(self)

  def self.all
    @@all
  end


end
