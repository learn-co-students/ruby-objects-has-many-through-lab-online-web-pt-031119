require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@all = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@all.push(self)
  # song = []
  # song << @name
  # song << @artist
  # song << @genre
  # binding.pry
end

  def self.all
    @@all
  end


end
