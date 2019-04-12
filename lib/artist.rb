require 'pry'

class Artist
  attr_accessor :name, :genres, :songs
  @@all = []

  def initialize(name)
    @name = name
    @genres = []
    @songs = []
    @@all << self

  end

  def self.all
    @@all
  end

  def new_song(title,genre)
    song = Song.new(title, self, genre)
    @genres << genre
    @songs << song
    song
    #binding.pry

  end

  def genres
    @genres

  end

  
end