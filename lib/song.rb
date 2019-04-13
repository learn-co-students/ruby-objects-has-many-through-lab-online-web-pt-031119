class Song
  attr_accessor :sname, :artist, :genre
  @@all = []
  def initialize(sname,artist,genre)
    @sname = sname
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end